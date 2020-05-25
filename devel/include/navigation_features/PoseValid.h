// Generated by gencpp from file navigation_features/PoseValid.msg
// DO NOT EDIT!


#ifndef NAVIGATION_FEATURES_MESSAGE_POSEVALID_H
#define NAVIGATION_FEATURES_MESSAGE_POSEVALID_H

#include <ros/service_traits.h>


#include <navigation_features/PoseValidRequest.h>
#include <navigation_features/PoseValidResponse.h>


namespace navigation_features
{

struct PoseValid
{

typedef PoseValidRequest Request;
typedef PoseValidResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PoseValid
} // namespace navigation_features


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::navigation_features::PoseValid > {
  static const char* value()
  {
    return "4821b1f643199b9b14db486b922422d9";
  }

  static const char* value(const ::navigation_features::PoseValid&) { return value(); }
};

template<>
struct DataType< ::navigation_features::PoseValid > {
  static const char* value()
  {
    return "navigation_features/PoseValid";
  }

  static const char* value(const ::navigation_features::PoseValid&) { return value(); }
};


// service_traits::MD5Sum< ::navigation_features::PoseValidRequest> should match 
// service_traits::MD5Sum< ::navigation_features::PoseValid > 
template<>
struct MD5Sum< ::navigation_features::PoseValidRequest>
{
  static const char* value()
  {
    return MD5Sum< ::navigation_features::PoseValid >::value();
  }
  static const char* value(const ::navigation_features::PoseValidRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation_features::PoseValidRequest> should match 
// service_traits::DataType< ::navigation_features::PoseValid > 
template<>
struct DataType< ::navigation_features::PoseValidRequest>
{
  static const char* value()
  {
    return DataType< ::navigation_features::PoseValid >::value();
  }
  static const char* value(const ::navigation_features::PoseValidRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::navigation_features::PoseValidResponse> should match 
// service_traits::MD5Sum< ::navigation_features::PoseValid > 
template<>
struct MD5Sum< ::navigation_features::PoseValidResponse>
{
  static const char* value()
  {
    return MD5Sum< ::navigation_features::PoseValid >::value();
  }
  static const char* value(const ::navigation_features::PoseValidResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation_features::PoseValidResponse> should match 
// service_traits::DataType< ::navigation_features::PoseValid > 
template<>
struct DataType< ::navigation_features::PoseValidResponse>
{
  static const char* value()
  {
    return DataType< ::navigation_features::PoseValid >::value();
  }
  static const char* value(const ::navigation_features::PoseValidResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAVIGATION_FEATURES_MESSAGE_POSEVALID_H