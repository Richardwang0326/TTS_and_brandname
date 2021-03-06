// Generated by gencpp from file text_msgs/text_recognize_srvResponse.msg
// DO NOT EDIT!


#ifndef TEXT_MSGS_MESSAGE_TEXT_RECOGNIZE_SRVRESPONSE_H
#define TEXT_MSGS_MESSAGE_TEXT_RECOGNIZE_SRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace text_msgs
{
template <class ContainerAllocator>
struct text_recognize_srvResponse_
{
  typedef text_recognize_srvResponse_<ContainerAllocator> Type;

  text_recognize_srvResponse_()
    : state()
    , mask()  {
    }
  text_recognize_srvResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , mask(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _mask_type;
  _mask_type mask;





  typedef boost::shared_ptr< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct text_recognize_srvResponse_

typedef ::text_msgs::text_recognize_srvResponse_<std::allocator<void> > text_recognize_srvResponse;

typedef boost::shared_ptr< ::text_msgs::text_recognize_srvResponse > text_recognize_srvResponsePtr;
typedef boost::shared_ptr< ::text_msgs::text_recognize_srvResponse const> text_recognize_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator1> & lhs, const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.mask == rhs.mask;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator1> & lhs, const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace text_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c858716b76ac4ea0974dd2fca9030898";
  }

  static const char* value(const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc858716b76ac4ea0ULL;
  static const uint64_t static_value2 = 0x974dd2fca9030898ULL;
};

template<class ContainerAllocator>
struct DataType< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "text_msgs/text_recognize_srvResponse";
  }

  static const char* value(const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Response data\n"
"string state\n"
"sensor_msgs/Image mask # for mission result\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.mask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct text_recognize_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::text_msgs::text_recognize_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::text_msgs::text_recognize_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
    s << indent << "mask: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.mask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEXT_MSGS_MESSAGE_TEXT_RECOGNIZE_SRVRESPONSE_H
