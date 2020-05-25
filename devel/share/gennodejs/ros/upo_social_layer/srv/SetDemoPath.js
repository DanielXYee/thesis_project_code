// Auto-generated. Do not edit!

// (in-package upo_social_layer.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetDemoPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.demo = null;
      this.use_loss_func = null;
    }
    else {
      if (initObj.hasOwnProperty('demo')) {
        this.demo = initObj.demo
      }
      else {
        this.demo = [];
      }
      if (initObj.hasOwnProperty('use_loss_func')) {
        this.use_loss_func = initObj.use_loss_func
      }
      else {
        this.use_loss_func = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDemoPathRequest
    // Serialize message field [demo]
    // Serialize the length for message field [demo]
    bufferOffset = _serializer.uint32(obj.demo.length, buffer, bufferOffset);
    obj.demo.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [use_loss_func]
    bufferOffset = _serializer.bool(obj.use_loss_func, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDemoPathRequest
    let len;
    let data = new SetDemoPathRequest(null);
    // Deserialize message field [demo]
    // Deserialize array length for message field [demo]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.demo = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.demo[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [use_loss_func]
    data.use_loss_func = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.demo.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'upo_social_layer/SetDemoPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c59916b1047dd2d21fe199789f24e2a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped[] demo
    bool use_loss_func
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDemoPathRequest(null);
    if (msg.demo !== undefined) {
      resolved.demo = new Array(msg.demo.length);
      for (let i = 0; i < resolved.demo.length; ++i) {
        resolved.demo[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.demo[i]);
      }
    }
    else {
      resolved.demo = []
    }

    if (msg.use_loss_func !== undefined) {
      resolved.use_loss_func = msg.use_loss_func;
    }
    else {
      resolved.use_loss_func = false
    }

    return resolved;
    }
};

class SetDemoPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDemoPathResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDemoPathResponse
    let len;
    let data = new SetDemoPathResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'upo_social_layer/SetDemoPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDemoPathResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetDemoPathRequest,
  Response: SetDemoPathResponse,
  md5sum() { return 'c59916b1047dd2d21fe199789f24e2a1'; },
  datatype() { return 'upo_social_layer/SetDemoPath'; }
};
