// Generated by gencpp from file text_msgs/text_detection_srvRequest.msg
// DO NOT EDIT!


#ifndef TEXT_MSGS_MESSAGE_TEXT_DETECTION_SRVREQUEST_H
#define TEXT_MSGS_MESSAGE_TEXT_DETECTION_SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace text_msgs
{
template <class ContainerAllocator>
struct text_detection_srvRequest_
{
  typedef text_detection_srvRequest_<ContainerAllocator> Type;

  text_detection_srvRequest_()
    {
    }
  text_detection_srvRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct text_detection_srvRequest_

typedef ::text_msgs::text_detection_srvRequest_<std::allocator<void> > text_detection_srvRequest;

typedef boost::shared_ptr< ::text_msgs::text_detection_srvRequest > text_detection_srvRequestPtr;
typedef boost::shared_ptr< ::text_msgs::text_detection_srvRequest const> text_detection_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::text_msgs::text_detection_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace text_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::text_msgs::text_detection_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "text_msgs/text_detection_srvRequest";
  }

  static const char* value(const ::text_msgs::text_detection_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Request data\n"
"# sensor_msgs/Image image\n"
"# sensor_msgs/Image depth\n"
;
  }

  static const char* value(const ::text_msgs::text_detection_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct text_detection_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::text_msgs::text_detection_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::text_msgs::text_detection_srvRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TEXT_MSGS_MESSAGE_TEXT_DETECTION_SRVREQUEST_H
