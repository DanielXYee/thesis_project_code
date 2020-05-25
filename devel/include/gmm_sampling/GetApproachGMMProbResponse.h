// Generated by gencpp from file gmm_sampling/GetApproachGMMProbResponse.msg
// DO NOT EDIT!


#ifndef GMM_SAMPLING_MESSAGE_GETAPPROACHGMMPROBRESPONSE_H
#define GMM_SAMPLING_MESSAGE_GETAPPROACHGMMPROBRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gmm_sampling
{
template <class ContainerAllocator>
struct GetApproachGMMProbResponse_
{
  typedef GetApproachGMMProbResponse_<ContainerAllocator> Type;

  GetApproachGMMProbResponse_()
    : prob(0.0)  {
    }
  GetApproachGMMProbResponse_(const ContainerAllocator& _alloc)
    : prob(0.0)  {
  (void)_alloc;
    }



   typedef float _prob_type;
  _prob_type prob;





  typedef boost::shared_ptr< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetApproachGMMProbResponse_

typedef ::gmm_sampling::GetApproachGMMProbResponse_<std::allocator<void> > GetApproachGMMProbResponse;

typedef boost::shared_ptr< ::gmm_sampling::GetApproachGMMProbResponse > GetApproachGMMProbResponsePtr;
typedef boost::shared_ptr< ::gmm_sampling::GetApproachGMMProbResponse const> GetApproachGMMProbResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gmm_sampling

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "24ab2b55331fe2bcc5280c7c23f2c675";
  }

  static const char* value(const ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x24ab2b55331fe2bcULL;
  static const uint64_t static_value2 = 0xc5280c7c23f2c675ULL;
};

template<class ContainerAllocator>
struct DataType< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gmm_sampling/GetApproachGMMProbResponse";
  }

  static const char* value(const ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 prob\n\
\n\
";
  }

  static const char* value(const ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prob);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetApproachGMMProbResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gmm_sampling::GetApproachGMMProbResponse_<ContainerAllocator>& v)
  {
    s << indent << "prob: ";
    Printer<float>::stream(s, indent + "  ", v.prob);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GMM_SAMPLING_MESSAGE_GETAPPROACHGMMPROBRESPONSE_H