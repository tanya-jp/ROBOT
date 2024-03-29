// Generated by gencpp from file distance_calculator/GetDistanceRequest.msg
// DO NOT EDIT!


#ifndef DISTANCE_CALCULATOR_MESSAGE_GETDISTANCEREQUEST_H
#define DISTANCE_CALCULATOR_MESSAGE_GETDISTANCEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace distance_calculator
{
template <class ContainerAllocator>
struct GetDistanceRequest_
{
  typedef GetDistanceRequest_<ContainerAllocator> Type;

  GetDistanceRequest_()
    : direction_name()  {
    }
  GetDistanceRequest_(const ContainerAllocator& _alloc)
    : direction_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _direction_name_type;
  _direction_name_type direction_name;





  typedef boost::shared_ptr< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetDistanceRequest_

typedef ::distance_calculator::GetDistanceRequest_<std::allocator<void> > GetDistanceRequest;

typedef boost::shared_ptr< ::distance_calculator::GetDistanceRequest > GetDistanceRequestPtr;
typedef boost::shared_ptr< ::distance_calculator::GetDistanceRequest const> GetDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::distance_calculator::GetDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::distance_calculator::GetDistanceRequest_<ContainerAllocator1> & lhs, const ::distance_calculator::GetDistanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.direction_name == rhs.direction_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::distance_calculator::GetDistanceRequest_<ContainerAllocator1> & lhs, const ::distance_calculator::GetDistanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace distance_calculator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d054b878265afa58be0eacfa20da225";
  }

  static const char* value(const ::distance_calculator::GetDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d054b878265afa5ULL;
  static const uint64_t static_value2 = 0x8be0eacfa20da225ULL;
};

template<class ContainerAllocator>
struct DataType< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "distance_calculator/GetDistanceRequest";
  }

  static const char* value(const ::distance_calculator::GetDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string direction_name\n"
;
  }

  static const char* value(const ::distance_calculator::GetDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::distance_calculator::GetDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::distance_calculator::GetDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "direction_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.direction_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DISTANCE_CALCULATOR_MESSAGE_GETDISTANCEREQUEST_H
