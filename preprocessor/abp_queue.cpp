
void
WriteQueueFunctionsQueue(ads_stringptr QueueItemName, u32 QueueSize,
                         memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    WriteToOutput(Headers, Memory, 
                  "/***** Queue: %.*s ****/\n"
                  "// Creating a circular queue of %u elements.\n", 
                  QueueItemName.Length, QueueItemName.String, QueueSize);
    WriteToOutput(Headers, Memory,
                  "struct %.*_queue\n"
                  "{\n"
                  "    %.* Items[%u];\n"
                  "    s32 Front;\n"
                  "    s32 Rear;\n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueSize
                  );
    
    WriteToOutput(Headers, Memory, 
                  "inline void InitializeQueue(%.*s_queue *Queue);\n"
                  "inline b8 "
                  "isQueueEmpty(%.*s_queue *Queue);\n"
                  "inline b8 "
                  "isQueueFull(%.*s_queue *Queue);\n"
                  "b8 "
                  "EnqueueCommand(%.*s_queue *Queue, %.*s Cmd);\n"
                  "%.*s "
                  "DequeueCommand(%.*s_queue *Queue);\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String);
    
    WriteToOutput(Headers, Memory, 
                  "/***********/\n\n");
    
    WriteToOutput(Definitions, Memory, "/****** Queue: %.* ****/\n");
    
    WriteToOutput(Definitions, Memory,
                  "inline void\n"
                  "InitializeQueue(%.*s_queue *Queue)\n"
                  "{\n"
                  "  Queue->Commands = {0};\n"
                  "  Queue->Front = Queue->Rear = -1;\n"
                  "}\n\n",
                  QueueItemName.Length, QueueItemName.String);
    
    WriteToOutput(Definitions, Memory,
                  "inline b8\n"
                  "isQueueEmpty(%.*s_queue *Queue)\n"
                  "{\n"
                  "  b8 Result = (Queue->Front == -1);\n"
                  "  return Result;\n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String);
    
    WriteToOutput(Definitions, Memory, 
                  "inline b8 \n"
                  "isQueueFull(%.*s_queue *Queue)\n"
                  "{\n"
                  "  b8 Result = (Queue->Front == Queue->Rear + 1) ||\n"
                  "  (Queue->Front == 0 && Queue->Rear == (%u-1));\n"
                  "\n"
                  "  return Result;\n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String, 
                  QueueSize);
    
    WriteToOutput(Definitions, Memory,
                  "b8\n"
                  "Enqueue(%.*s_queue *Queue, %.*s Cmd)\n"
                  "{\n"
                  "  b8 Result = false;\n"
                  "  if(!isQueueFull(Queue))\n"
                  "  {\n"
                  "    if(Queue->Front == -1)\n"
                  "    {\n"
                  "      Queue->Front = 0;\n"
                  "    }\n"
                  "    Queue->Rear = (Queue->Rear + 1) %% %u;\n"
                  "    Queue->Commands[Queue->Rear] = Cmd;\n"
                  "\n"
                  "    Result = true;\n"
                  "  }\n"
                  "  return Result;    \n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String
                  QueueSize);
    
    WriteToOutput(Definitions, Memory,
                  "%.*s\n"
                  "Dequeue(%.*s_queue *Queue)\n"
                  "{\n"
                  "%.*s Result = (%.*s)0;\n"
                  "if(!isQueueEmpty(Queue))\n"
                  "{\n"
                  "Result = Queue->Commands[Queue->Front];\n"
                  "if(Queue->Front == Queue->Rear)\n"
                  "{\n"
                  "Queue->Front = Queue->Rear = -1;\n"
                  "}\n"
                  "else \n"
                  "{\n"
                  "Queue->Front = (Queue->Front + 1) %% %u;\n"
                  "}\n"
                  "}\n"
                  "\n"
                  "return Result;\n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueSize);
    
    WriteToOutput(Definitions, Memory, 
                  "/***********/\n\n");
    
}