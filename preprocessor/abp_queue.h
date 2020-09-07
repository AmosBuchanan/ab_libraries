/* date = July 27th 2020 9:08 am */

#ifndef ABP_QUEUE_H
#define ABP_QUEUE_H

#include "ab_string.h"
#include "ab_parser.h"

void
WriteQueueFunctions(abs_stringptr QueueItemName, u32 QueueSize,
                    memory_arena *Memory, output_data *Headers, output_data *Definitions);

#endif //ABP_QUEUE_H

#ifdef ABP_QUEUE_SRC

void
WriteQueueFunctions(abs_stringptr QueueItemName, u32 QueueSize,
                    memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    WriteToOutput(Headers, Memory, 
                  "/***** Queue: %.*s ****/\n"
                  "/** @brief A circular queue of %u elements for the state command %.*s. */\n", 
                  PSTRING(QueueItemName), 
                  QueueSize,
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory,
                  "struct %.*s_queue\n"
                  "{\n"
                  "    %.*s Items[%u];\n"
                  "    s32 Front;\n"
                  "    s32 Rear;\n"
                  "};\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueSize
                  );
    
    WriteToOutput(Headers, Memory, 
                  "/** @brief Initialize the command queue.\n"
                  "\n"
                  "This must be run to initialize the queue before it may be used for the first time. Usually done in the state machine \n"
                  "initialization.\n"
                  "\n"
                  "@param Queue The queue to initialize, usually `&State->CommandQueue`.\n"
                  "**/\n"
                  "inline void InitializeQueue(%.*s_queue *Queue);\n",
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory,
                  "/** @brief Check if queue is empty.\n"
                  "\n"
                  "@param Queue Queue to check.\n"
                  "@return True if queue is empty.\n"
                  "**/\n"
                  "inline b8 "
                  "isQueueEmpty(%.*s_queue *Queue);\n",
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory,
                  "/** @brief Check if queue is full.\n"
                  "\n"
                  "@param Queue Queue to check.\n"
                  "@return True if queue is full.\n"
                  "**/\n"
                  "inline b8 "
                  "isQueueFull(%.*s_queue *Queue);\n",
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory, 
                  "/** @brief Add an item to the back of the queue.\n"
                  "\n"
                  "@param Queue The queue to add to.\n"
                  "@param The command to add.\n"
                  "@return True if successful.\n"
                  "**/\n"
                  "b8 "
                  "EnqueueCommand(%.*s_queue *Queue, %.*s Cmd);\n",
                  PSTRING(QueueItemName),
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory, 
                  "/** @brief Dequeue from the front of the queue.\n"
                  "\n"
                  "@param The queue to pull a command from.\n"
                  "@return The command that was queued. If the queue is empty, returns the first element of %.*s. The first element is usually reserved for a NOP command.\n"
                  "**/\n"
                  "%.*s "
                  "DequeueCommand(%.*s_queue *Queue);\n",
                  PSTRING(QueueItemName),
                  
                  PSTRING(QueueItemName),
                  PSTRING(QueueItemName));
    
    WriteToOutput(Headers, Memory, 
                  "/***********/\n\n");
    
    WriteToOutput(Definitions, Memory, "/****** Queue: %.*s ****/\n",
                  QueueItemName.Length, QueueItemName.String);
    
    WriteToOutput(Definitions, Memory,
                  "inline void\n"
                  "InitializeQueue(%.*s_queue *Queue)\n"
                  "{\n"
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
                  "    Queue->Items[Queue->Rear] = Cmd;\n"
                  "\n"
                  "    Result = true;\n"
                  "  }\n"
                  "  return Result;    \n"
                  "}\n"
                  "\n",
                  QueueItemName.Length, QueueItemName.String,
                  QueueItemName.Length, QueueItemName.String,
                  QueueSize);
    
    WriteToOutput(Definitions, Memory,
                  "%.*s\n"
                  "Dequeue(%.*s_queue *Queue)\n"
                  "{\n"
                  "%.*s Result = (%.*s)0;\n"
                  "if(!isQueueEmpty(Queue))\n"
                  "{\n"
                  "Result = Queue->Items[Queue->Front];\n"
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
#undef ABP_QUEUE_SRC
#endif 