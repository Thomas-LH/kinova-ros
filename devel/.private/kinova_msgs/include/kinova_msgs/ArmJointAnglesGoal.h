// Generated by gencpp from file kinova_msgs/ArmJointAnglesGoal.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_ARMJOINTANGLESGOAL_H
#define KINOVA_MSGS_MESSAGE_ARMJOINTANGLESGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kinova_msgs/JointAngles.h>

namespace kinova_msgs
{
template <class ContainerAllocator>
struct ArmJointAnglesGoal_
{
  typedef ArmJointAnglesGoal_<ContainerAllocator> Type;

  ArmJointAnglesGoal_()
    : angles()  {
    }
  ArmJointAnglesGoal_(const ContainerAllocator& _alloc)
    : angles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kinova_msgs::JointAngles_<ContainerAllocator>  _angles_type;
  _angles_type angles;





  typedef boost::shared_ptr< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ArmJointAnglesGoal_

typedef ::kinova_msgs::ArmJointAnglesGoal_<std::allocator<void> > ArmJointAnglesGoal;

typedef boost::shared_ptr< ::kinova_msgs::ArmJointAnglesGoal > ArmJointAnglesGoalPtr;
typedef boost::shared_ptr< ::kinova_msgs::ArmJointAnglesGoal const> ArmJointAnglesGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'kinova_msgs': ['/home/lh/kinova-ros/src/kinova_msgs/msg', '/home/lh/kinova-ros/devel/.private/kinova_msgs/share/kinova_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cadc8c9df1338a45563e10d707e71551";
  }

  static const char* value(const ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcadc8c9df1338a45ULL;
  static const uint64_t static_value2 = 0x563e10d707e71551ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/ArmJointAnglesGoal";
  }

  static const char* value(const ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Goal\n\
JointAngles angles\n\
\n\
================================================================================\n\
MSG: kinova_msgs/JointAngles\n\
float32 joint1\n\
float32 joint2\n\
float32 joint3\n\
float32 joint4\n\
float32 joint5\n\
float32 joint6\n\
float32 joint7\n\
";
  }

  static const char* value(const ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmJointAnglesGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::ArmJointAnglesGoal_<ContainerAllocator>& v)
  {
    s << indent << "angles: ";
    s << std::endl;
    Printer< ::kinova_msgs::JointAngles_<ContainerAllocator> >::stream(s, indent + "  ", v.angles);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_ARMJOINTANGLESGOAL_H
