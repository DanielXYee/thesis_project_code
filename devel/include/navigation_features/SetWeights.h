// Generated by gencpp from file navigation_features/SetWeights.msg
// DO NOT EDIT!


#ifndef NAVIGATION_FEATURES_MESSAGE_SETWEIGHTS_H
#define NAVIGATION_FEATURES_MESSAGE_SETWEIGHTS_H

#include <ros/service_traits.h>


#include <navigation_features/SetWeightsRequest.h>
#include <navigation_features/SetWeightsResponse.h>


namespace navigation_features
{

struct SetWeights
{

typedef SetWeightsRequest Request;
typedef SetWeightsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetWeights
} // namespace navigation_features


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::navigation_features::SetWeights > {
  static const char* value()
  {
    return "d5ad370da8a2ea46419264bcdd331bf8";
  }

  static const char* value(const ::navigation_features::SetWeights&) { return value(); }
};

template<>
struct DataType< ::navigation_features::SetWeights > {
  static const char* value()
  {
    return "navigation_features/SetWeights";
  }

  static const char* value(const ::navigation_features::SetWeights&) { return value(); }
};


// service_traits::MD5Sum< ::navigation_features::SetWeightsRequest> should match 
// service_traits::MD5Sum< ::navigation_features::SetWeights > 
template<>
struct MD5Sum< ::navigation_features::SetWeightsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::navigation_features::SetWeights >::value();
  }
  static const char* value(const ::navigation_features::SetWeightsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation_features::SetWeightsRequest> should match 
// service_traits::DataType< ::navigation_features::SetWeights > 
template<>
struct DataType< ::navigation_features::SetWeightsRequest>
{
  static const char* value()
  {
    return DataType< ::navigation_features::SetWeights >::value();
  }
  static const char* value(const ::navigation_features::SetWeightsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::navigation_features::SetWeightsResponse> should match 
// service_traits::MD5Sum< ::navigation_features::SetWeights > 
template<>
struct MD5Sum< ::navigation_features::SetWeightsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::navigation_features::SetWeights >::value();
  }
  static const char* value(const ::navigation_features::SetWeightsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation_features::SetWeightsResponse> should match 
// service_traits::DataType< ::navigation_features::SetWeights > 
template<>
struct DataType< ::navigation_features::SetWeightsResponse>
{
  static const char* value()
  {
    return DataType< ::navigation_features::SetWeights >::value();
  }
  static const char* value(const ::navigation_features::SetWeightsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAVIGATION_FEATURES_MESSAGE_SETWEIGHTS_H
