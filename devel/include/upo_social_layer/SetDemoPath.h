// Generated by gencpp from file upo_social_layer/SetDemoPath.msg
// DO NOT EDIT!


#ifndef UPO_SOCIAL_LAYER_MESSAGE_SETDEMOPATH_H
#define UPO_SOCIAL_LAYER_MESSAGE_SETDEMOPATH_H

#include <ros/service_traits.h>


#include <upo_social_layer/SetDemoPathRequest.h>
#include <upo_social_layer/SetDemoPathResponse.h>


namespace upo_social_layer
{

struct SetDemoPath
{

typedef SetDemoPathRequest Request;
typedef SetDemoPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetDemoPath
} // namespace upo_social_layer


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::upo_social_layer::SetDemoPath > {
  static const char* value()
  {
    return "c59916b1047dd2d21fe199789f24e2a1";
  }

  static const char* value(const ::upo_social_layer::SetDemoPath&) { return value(); }
};

template<>
struct DataType< ::upo_social_layer::SetDemoPath > {
  static const char* value()
  {
    return "upo_social_layer/SetDemoPath";
  }

  static const char* value(const ::upo_social_layer::SetDemoPath&) { return value(); }
};


// service_traits::MD5Sum< ::upo_social_layer::SetDemoPathRequest> should match 
// service_traits::MD5Sum< ::upo_social_layer::SetDemoPath > 
template<>
struct MD5Sum< ::upo_social_layer::SetDemoPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::upo_social_layer::SetDemoPath >::value();
  }
  static const char* value(const ::upo_social_layer::SetDemoPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::upo_social_layer::SetDemoPathRequest> should match 
// service_traits::DataType< ::upo_social_layer::SetDemoPath > 
template<>
struct DataType< ::upo_social_layer::SetDemoPathRequest>
{
  static const char* value()
  {
    return DataType< ::upo_social_layer::SetDemoPath >::value();
  }
  static const char* value(const ::upo_social_layer::SetDemoPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::upo_social_layer::SetDemoPathResponse> should match 
// service_traits::MD5Sum< ::upo_social_layer::SetDemoPath > 
template<>
struct MD5Sum< ::upo_social_layer::SetDemoPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::upo_social_layer::SetDemoPath >::value();
  }
  static const char* value(const ::upo_social_layer::SetDemoPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::upo_social_layer::SetDemoPathResponse> should match 
// service_traits::DataType< ::upo_social_layer::SetDemoPath > 
template<>
struct DataType< ::upo_social_layer::SetDemoPathResponse>
{
  static const char* value()
  {
    return DataType< ::upo_social_layer::SetDemoPath >::value();
  }
  static const char* value(const ::upo_social_layer::SetDemoPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UPO_SOCIAL_LAYER_MESSAGE_SETDEMOPATH_H
