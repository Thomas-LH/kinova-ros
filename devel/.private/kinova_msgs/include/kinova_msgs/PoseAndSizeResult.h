// Generated by gencpp from file kinova_msgs/PoseAndSizeResult.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_POSEANDSIZERESULT_H
#define KINOVA_MSGS_MESSAGE_POSEANDSIZERESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>

namespace kinova_msgs
{
template <class ContainerAllocator>
struct PoseAndSizeResult_
{
  typedef PoseAndSizeResult_<ContainerAllocator> Type;

  PoseAndSizeResult_()
    : arm_pose()  {
    }
  PoseAndSizeResult_(const ContainerAllocator& _alloc)
    : arm_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _arm_pose_type;
  _arm_pose_type arm_pose;





  typedef boost::shared_ptr< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> const> ConstPtr;

}; // struct PoseAndSizeResult_

typedef ::kinova_msgs::PoseAndSizeResult_<std::allocator<void> > PoseAndSizeResult;

typedef boost::shared_ptr< ::kinova_msgs::PoseAndSizeResult > PoseAndSizeResultPtr;
typedef boost::shared_ptr< ::kinova_msgs::PoseAndSizeResult const> PoseAndSizeResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'kinova_msgs': ['/home/lh/kinova-ros/src/kinova_msgs/msg', '/home/lh/kinova-ros/devel/.private/kinova_msgs/share/kinova_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84de4ef9896c1cfa9d91c42b0096dbb6";
  }

  static const char* value(const ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84de4ef9896c1cfaULL;
  static const uint64_t static_value2 = 0x9d91c42b0096dbb6ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/PoseAndSizeResult";
  }

  static const char* value(const ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Result\n\
geometry_msgs/PointStamped arm_pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arm_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseAndSizeResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::PoseAndSizeResult_<ContainerAllocator>& v)
  {
    s << indent << "arm_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.arm_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_POSEANDSIZERESULT_H
