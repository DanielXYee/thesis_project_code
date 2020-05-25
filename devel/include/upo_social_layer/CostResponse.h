// Generated by gencpp from file upo_social_layer/CostResponse.msg
// DO NOT EDIT!


#ifndef UPO_SOCIAL_LAYER_MESSAGE_COSTRESPONSE_H
#define UPO_SOCIAL_LAYER_MESSAGE_COSTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace upo_social_layer
{
template <class ContainerAllocator>
struct CostResponse_
{
  typedef CostResponse_<ContainerAllocator> Type;

  CostResponse_()
    : cost(0.0)  {
    }
  CostResponse_(const ContainerAllocator& _alloc)
    : cost(0.0)  {
  (void)_alloc;
    }



   typedef float _cost_type;
  _cost_type cost;





  typedef boost::shared_ptr< ::upo_social_layer::CostResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::upo_social_layer::CostResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CostResponse_

typedef ::upo_social_layer::CostResponse_<std::allocator<void> > CostResponse;

typedef boost::shared_ptr< ::upo_social_layer::CostResponse > CostResponsePtr;
typedef boost::shared_ptr< ::upo_social_layer::CostResponse const> CostResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::upo_social_layer::CostResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::upo_social_layer::CostResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace upo_social_layer

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::upo_social_layer::CostResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::upo_social_layer::CostResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::upo_social_layer::CostResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::upo_social_layer::CostResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::upo_social_layer::CostResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::upo_social_layer::CostResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::upo_social_layer::CostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f4cdac42d49179f1e8c5377d9a135a37";
  }

  static const char* value(const ::upo_social_layer::CostResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf4cdac42d49179f1ULL;
  static const uint64_t static_value2 = 0xe8c5377d9a135a37ULL;
};

template<class ContainerAllocator>
struct DataType< ::upo_social_layer::CostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "upo_social_layer/CostResponse";
  }

  static const char* value(const ::upo_social_layer::CostResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::upo_social_layer::CostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 cost\n\
\n\
";
  }

  static const char* value(const ::upo_social_layer::CostResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::upo_social_layer::CostResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cost);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CostResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::upo_social_layer::CostResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::upo_social_layer::CostResponse_<ContainerAllocator>& v)
  {
    s << indent << "cost: ";
    Printer<float>::stream(s, indent + "  ", v.cost);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UPO_SOCIAL_LAYER_MESSAGE_COSTRESPONSE_H