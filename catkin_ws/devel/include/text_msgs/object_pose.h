// Generated by gencpp from file text_msgs/object_pose.msg
// DO NOT EDIT!


#ifndef TEXT_MSGS_MESSAGE_OBJECT_POSE_H
#define TEXT_MSGS_MESSAGE_OBJECT_POSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace text_msgs
{
template <class ContainerAllocator>
struct object_pose_
{
  typedef object_pose_<ContainerAllocator> Type;

  object_pose_()
    : object(0)
    , state()
    , pose()  {
    }
  object_pose_(const ContainerAllocator& _alloc)
    : object(0)
    , state(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _object_type;
  _object_type object;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::text_msgs::object_pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::text_msgs::object_pose_<ContainerAllocator> const> ConstPtr;

}; // struct object_pose_

typedef ::text_msgs::object_pose_<std::allocator<void> > object_pose;

typedef boost::shared_ptr< ::text_msgs::object_pose > object_posePtr;
typedef boost::shared_ptr< ::text_msgs::object_pose const> object_poseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::text_msgs::object_pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::text_msgs::object_pose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::text_msgs::object_pose_<ContainerAllocator1> & lhs, const ::text_msgs::object_pose_<ContainerAllocator2> & rhs)
{
  return lhs.object == rhs.object &&
    lhs.state == rhs.state &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::text_msgs::object_pose_<ContainerAllocator1> & lhs, const ::text_msgs::object_pose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace text_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::object_pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::object_pose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::object_pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::object_pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::object_pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::object_pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::text_msgs::object_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5a553de221181da629133fb7c93e5464";
  }

  static const char* value(const ::text_msgs::object_pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5a553de221181da6ULL;
  static const uint64_t static_value2 = 0x29133fb7c93e5464ULL;
};

template<class ContainerAllocator>
struct DataType< ::text_msgs::object_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "text_msgs/object_pose";
  }

  static const char* value(const ::text_msgs::object_pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::text_msgs::object_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 object\n"
"string state 		# pick or suck\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::text_msgs::object_pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::text_msgs::object_pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object);
      stream.next(m.state);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::text_msgs::object_pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::text_msgs::object_pose_<ContainerAllocator>& v)
  {
    s << indent << "object: ";
    Printer<int32_t>::stream(s, indent + "  ", v.object);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEXT_MSGS_MESSAGE_OBJECT_POSE_H
