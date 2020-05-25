// Generated by gencpp from file upo_social_layer/Cost.msg
// DO NOT EDIT!


#ifndef UPO_SOCIAL_LAYER_MESSAGE_COST_H
#define UPO_SOCIAL_LAYER_MESSAGE_COST_H

#include <ros/service_traits.h>


#include <upo_social_layer/CostRequest.h>
#include <upo_social_layer/CostResponse.h>


namespace upo_social_layer
{

struct Cost
{

typedef CostRequest Request;
typedef CostResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Cost
} // namespace upo_social_layer


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::upo_social_layer::Cost > {
  static const char* value()
  {
    return "ed1896109ea6ef2d0a5cfbf2d389fc40";
  }

  static const char* value(const ::upo_social_layer::Cost&) { return value(); }
};

template<>
struct DataType< ::upo_social_layer::Cost > {
  static const char* value()
  {
    return "upo_social_layer/Cost";
  }

  static const char* value(const ::upo_social_layer::Cost&) { return value(); }
};


// service_traits::MD5Sum< ::upo_social_layer::CostRequest> should match 
// service_traits::MD5Sum< ::upo_social_layer::Cost > 
template<>
struct MD5Sum< ::upo_social_layer::CostRequest>
{
  static const char* value()
  {
    return MD5Sum< ::upo_social_layer::Cost >::value();
  }
  static const char* value(const ::upo_social_layer::CostRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::upo_social_layer::CostRequest> should match 
// service_traits::DataType< ::upo_social_layer::Cost > 
template<>
struct DataType< ::upo_social_layer::CostRequest>
{
  static const char* value()
  {
    return DataType< ::upo_social_layer::Cost >::value();
  }
  static const char* value(const ::upo_social_layer::CostRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::upo_social_layer::CostResponse> should match 
// service_traits::MD5Sum< ::upo_social_layer::Cost > 
template<>
struct MD5Sum< ::upo_social_layer::CostResponse>
{
  static const char* value()
  {
    return MD5Sum< ::upo_social_layer::Cost >::value();
  }
  static const char* value(const ::upo_social_layer::CostResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::upo_social_layer::CostResponse> should match 
// service_traits::DataType< ::upo_social_layer::Cost > 
template<>
struct DataType< ::upo_social_layer::CostResponse>
{
  static const char* value()
  {
    return DataType< ::upo_social_layer::Cost >::value();
  }
  static const char* value(const ::upo_social_layer::CostResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UPO_SOCIAL_LAYER_MESSAGE_COST_H