// Generated by gencpp from file kinova_msgs/SensorInfo.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_SENSORINFO_H
#define KINOVA_MSGS_MESSAGE_SENSORINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kinova_msgs
{
template <class ContainerAllocator>
struct SensorInfo_
{
  typedef SensorInfo_<ContainerAllocator> Type;

  SensorInfo_()
    : voltage(0.0)
    , current(0.0)
    , actuators_temp()
    , fingers_temp()  {
    }
  SensorInfo_(const ContainerAllocator& _alloc)
    : voltage(0.0)
    , current(0.0)
    , actuators_temp(_alloc)
    , fingers_temp(_alloc)  {
  (void)_alloc;
    }



   typedef float _voltage_type;
  _voltage_type voltage;

   typedef float _current_type;
  _current_type current;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _actuators_temp_type;
  _actuators_temp_type actuators_temp;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _fingers_temp_type;
  _fingers_temp_type fingers_temp;





  typedef boost::shared_ptr< ::kinova_msgs::SensorInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::SensorInfo_<ContainerAllocator> const> ConstPtr;

}; // struct SensorInfo_

typedef ::kinova_msgs::SensorInfo_<std::allocator<void> > SensorInfo;

typedef boost::shared_ptr< ::kinova_msgs::SensorInfo > SensorInfoPtr;
typedef boost::shared_ptr< ::kinova_msgs::SensorInfo const> SensorInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::SensorInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::SensorInfo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::SensorInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::SensorInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::SensorInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "39a41a97124a62576b248b6253fcf6ea";
  }

  static const char* value(const ::kinova_msgs::SensorInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x39a41a97124a6257ULL;
  static const uint64_t static_value2 = 0x6b248b6253fcf6eaULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/SensorInfo";
  }

  static const char* value(const ::kinova_msgs::SensorInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 voltage\n\
float32 current \n\
float32[] actuators_temp\n\
float32[] fingers_temp\n\
";
  }

  static const char* value(const ::kinova_msgs::SensorInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltage);
      stream.next(m.current);
      stream.next(m.actuators_temp);
      stream.next(m.fingers_temp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SensorInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::SensorInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::SensorInfo_<ContainerAllocator>& v)
  {
    s << indent << "voltage: ";
    Printer<float>::stream(s, indent + "  ", v.voltage);
    s << indent << "current: ";
    Printer<float>::stream(s, indent + "  ", v.current);
    s << indent << "actuators_temp[]" << std::endl;
    for (size_t i = 0; i < v.actuators_temp.size(); ++i)
    {
      s << indent << "  actuators_temp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.actuators_temp[i]);
    }
    s << indent << "fingers_temp[]" << std::endl;
    for (size_t i = 0; i < v.fingers_temp.size(); ++i)
    {
      s << indent << "  fingers_temp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.fingers_temp[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_SENSORINFO_H
