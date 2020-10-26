// Generated by gencpp from file text_msgs/text_detection_msg.msg
// DO NOT EDIT!


#ifndef TEXT_MSGS_MESSAGE_TEXT_DETECTION_MSG_H
#define TEXT_MSGS_MESSAGE_TEXT_DETECTION_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <text_msgs/bb_box.h>
#include <text_msgs/int_arr.h>

namespace text_msgs
{
template <class ContainerAllocator>
struct text_detection_msg_
{
  typedef text_detection_msg_<ContainerAllocator> Type;

  text_detection_msg_()
    : status()
    , probability(0.0)
    , pose()
    , box()
    , contour()  {
    }
  text_detection_msg_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , probability(0.0)
    , pose(_alloc)
    , box(_alloc)
    , contour(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef double _probability_type;
  _probability_type probability;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::text_msgs::bb_box_<ContainerAllocator>  _box_type;
  _box_type box;

   typedef std::vector< ::text_msgs::int_arr_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::text_msgs::int_arr_<ContainerAllocator> >::other >  _contour_type;
  _contour_type contour;





  typedef boost::shared_ptr< ::text_msgs::text_detection_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::text_msgs::text_detection_msg_<ContainerAllocator> const> ConstPtr;

}; // struct text_detection_msg_

typedef ::text_msgs::text_detection_msg_<std::allocator<void> > text_detection_msg;

typedef boost::shared_ptr< ::text_msgs::text_detection_msg > text_detection_msgPtr;
typedef boost::shared_ptr< ::text_msgs::text_detection_msg const> text_detection_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::text_msgs::text_detection_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::text_msgs::text_detection_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::text_msgs::text_detection_msg_<ContainerAllocator1> & lhs, const ::text_msgs::text_detection_msg_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.probability == rhs.probability &&
    lhs.pose == rhs.pose &&
    lhs.box == rhs.box &&
    lhs.contour == rhs.contour;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::text_msgs::text_detection_msg_<ContainerAllocator1> & lhs, const ::text_msgs::text_detection_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace text_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_detection_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_detection_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_detection_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_detection_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_detection_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_detection_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::text_msgs::text_detection_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba79c449ebbb021bfad5cb922f4b82d7";
  }

  static const char* value(const ::text_msgs::text_detection_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba79c449ebbb021bULL;
  static const uint64_t static_value2 = 0xfad5cb922f4b82d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::text_msgs::text_detection_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "text_msgs/text_detection_msg";
  }

  static const char* value(const ::text_msgs::text_detection_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::text_msgs::text_detection_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status				# O for non_return , X for return \n"
"float64 probability\n"
"geometry_msgs/Pose pose\n"
"bb_box box\n"
"int_arr[] contour\n"
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
"\n"
"================================================================================\n"
"MSG: text_msgs/bb_box\n"
"int32 xmax\n"
"int32 xmin\n"
"int32 ymax\n"
"int32 ymin\n"
"================================================================================\n"
"MSG: text_msgs/int_arr\n"
"int32[] point\n"
;
  }

  static const char* value(const ::text_msgs::text_detection_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::text_msgs::text_detection_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.probability);
      stream.next(m.pose);
      stream.next(m.box);
      stream.next(m.contour);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct text_detection_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::text_msgs::text_detection_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::text_msgs::text_detection_msg_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "probability: ";
    Printer<double>::stream(s, indent + "  ", v.probability);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "box: ";
    s << std::endl;
    Printer< ::text_msgs::bb_box_<ContainerAllocator> >::stream(s, indent + "  ", v.box);
    s << indent << "contour[]" << std::endl;
    for (size_t i = 0; i < v.contour.size(); ++i)
    {
      s << indent << "  contour[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::text_msgs::int_arr_<ContainerAllocator> >::stream(s, indent + "    ", v.contour[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEXT_MSGS_MESSAGE_TEXT_DETECTION_MSG_H
