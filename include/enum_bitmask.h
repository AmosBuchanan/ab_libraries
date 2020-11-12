
#ifndef ENUM_BITMASK_H
#define ENUM_BITMASK_H

#include <type_traits>

template<typename E>
struct enable_bitmask_operators{
    static const bool enable = false;
};

#define ENABLE_BITWISE_ENUM(x) \
template<> \
struct enable_bitmask_operators<x> \
{ \
static const bool enable = true; \
};


template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E>::type
operator|(E lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    return static_cast<E>(static_cast<underlying>(lhs) | static_cast<underlying>(rhs));
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E>::type
operator&(E lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    return static_cast<E>(static_cast<underlying>(lhs) & static_cast<underlying>(rhs));
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E>::type
operator^(E lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    return static_cast<E>(static_cast<underlying>(lhs) ^ static_cast<underlying>(rhs));
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E>::type
operator~(E lhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    return static_cast<E>(~static_cast<underlying>(lhs));
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E&>::type
operator|=(E& lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    lhs=static_cast<E>(static_cast<underlying>(lhs) | static_cast<underlying>(rhs));
    return lhs;
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E&>::type
operator&=(E& lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    lhs=static_cast<E>(static_cast<underlying>(lhs) & static_cast<underlying>(rhs));
    return lhs;
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,E&>::type
operator^=(E& lhs,E rhs)
{
    typedef typename std::underlying_type<E>::type underlying;
    lhs=static_cast<E>(static_cast<underlying>(lhs) ^ static_cast<underlying>(rhs));
    return lhs;
}

template<typename E>
constexpr typename std::enable_if<enable_bitmask_operators<E>::enable,bool>::type
Is(E x)
{
    typedef typename std::underlying_type<E>::type underlying;
    underlying result = static_cast<underlying>(x);
    return (result != 0);
}


#endif //ENUM_BITMASK_H
