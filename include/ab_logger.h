/* date = July 24th 2020 2:41 pm */

#ifndef AB_LOGGER_H
#define AB_LOGGER_H

enum ab_log_level{ 
    LOG_TRACE, 
    LOG_DEBUG, 
    LOG_INFO, 
    LOG_WARN, 
    LOG_ERROR, 
    LOG_FATAL 
};


#endif //AB_LOGGER_H

#if defined(AB_LOGGER_SRC)

#undef(AB_LOGGER_SRC)
#endif // defined(AB_LOGGER_SRC)
