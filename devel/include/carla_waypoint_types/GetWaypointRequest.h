// Generated by gencpp from file carla_waypoint_types/GetWaypointRequest.msg
// DO NOT EDIT!


#ifndef CARLA_WAYPOINT_TYPES_MESSAGE_GETWAYPOINTREQUEST_H
#define CARLA_WAYPOINT_TYPES_MESSAGE_GETWAYPOINTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace carla_waypoint_types
{
template <class ContainerAllocator>
struct GetWaypointRequest_
{
  typedef GetWaypointRequest_<ContainerAllocator> Type;

  GetWaypointRequest_()
    : location()  {
    }
  GetWaypointRequest_(const ContainerAllocator& _alloc)
    : location(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _location_type;
  _location_type location;





  typedef boost::shared_ptr< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetWaypointRequest_

typedef ::carla_waypoint_types::GetWaypointRequest_<std::allocator<void> > GetWaypointRequest;

typedef boost::shared_ptr< ::carla_waypoint_types::GetWaypointRequest > GetWaypointRequestPtr;
typedef boost::shared_ptr< ::carla_waypoint_types::GetWaypointRequest const> GetWaypointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator1> & lhs, const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator2> & rhs)
{
  return lhs.location == rhs.location;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator1> & lhs, const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_waypoint_types

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "68ff00ebc14ac99f5a5137e25226d94e";
  }

  static const char* value(const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x68ff00ebc14ac99fULL;
  static const uint64_t static_value2 = 0x5a5137e25226d94eULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_waypoint_types/GetWaypointRequest";
  }

  static const char* value(const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"geometry_msgs/Point location\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetWaypointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_waypoint_types::GetWaypointRequest_<ContainerAllocator>& v)
  {
    s << indent << "location: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.location);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_WAYPOINT_TYPES_MESSAGE_GETWAYPOINTREQUEST_H