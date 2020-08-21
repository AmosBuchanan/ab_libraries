/* date = July 28th 2020 7:07 pm */

#ifndef ADSIO_H
#define ADSIO_H

struct io_data
{
    s32 Value;
    abt_time Time;
};

TAG(Strings);
enum class direction
{
    Unknown,
    Read,
    Write,
};

TAG(Strings);
enum class TriState
{
    Mu,
    False,
    True,
};

#endif //ADSIO_H
