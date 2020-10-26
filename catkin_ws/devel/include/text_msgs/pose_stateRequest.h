// Generated by gencpp from file text_msgs/pose_stateRequest.msg
// DO NOT EDIT!


#ifndef TEXT_MSGS_MESSAGE_POSE_STATEREQUEST_H
#define TEXT_MSGS_MESSAGE_POSE_STATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Image.h>

namespace text_msgs
{
template <class ContainerAllocator>
struct pose_stateRequest_
{
  typedef pose_stateRequest_<ContainerAllocator> Type;

  pose_stateRequest_()
    : image()
    , depth()
    , mask()  {
    }
  pose_stateRequest_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , depth(_alloc)
    , mask(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _depth_type;
  _depth_type depth;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _mask_type;
  _mask_type mask;





  typedef boost::shared_ptr< ::text_msgs::pose_stateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::text_msgs::pose_stateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct pose_stateRequest_

typedef ::text_msgs::pose_stateRequest_<std::allocator<void> > pose_stateRequest;

typedef boost::shared_ptr< ::text_msgs::pose_stateRequest > pose_stateRequestPtr;
typedef boost::shared_ptr< ::text_msgs::pose_stateRequest const> pose_stateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::text_msgs::pose_stateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::text_msgs::pose_stateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::text_msgs::pose_stateRequest_<ContainerAllocator1> & lhs, const ::text_msgs::pose_stateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.image == rhs.image &&
    lhs.depth == rhs.depth &&
    lhs.mask == rhs.mask;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::text_msgs::pose_stateRequest_<ContainerAllocator1> & lhs, const ::text_msgs::pose_stateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace text_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::pose_stateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::pose_stateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::pose_stateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "045856d559a776169027f6ea32d04e25";
  }

  static const char* value(const ::text_msgs::pose_stateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x045856d559a77616ULL;
  static const uint64_t static_value2 = 0x9027f6ea32d04e25ULL;
};

template<class ContainerAllocator>
struct DataType< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "text_msgs/pose_stateRequest";
  }

  static const char* value(const ::text_msgs::pose_stateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Request data\n"
"sensor_msgs/Image image\n"
"sensor_msgs/Image depth\n"
"sensor_msgs/Image mask\n"
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

  static const char* value(const ::text_msgs::pose_stateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.depth);
      stream.next(m.mask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pose_stateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::text_msgs::pose_stateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::text_msgs::pose_stateRequest_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "depth: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.depth);
    s << indent << "mask: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.mask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEXT_MSGS_MESSAGE_POSE_STATEREQUEST_H