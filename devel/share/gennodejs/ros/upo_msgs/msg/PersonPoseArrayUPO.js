// Auto-generated. Do not edit!

// (in-package upo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PersonPoseUPO = require('./PersonPoseUPO.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PersonPoseArrayUPO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.size = null;
      this.personPoses = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('personPoses')) {
        this.personPoses = initObj.personPoses
      }
      else {
        this.personPoses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonPoseArrayUPO
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    // Serialize message field [personPoses]
    // Serialize the length for message field [personPoses]
    bufferOffset = _serializer.uint32(obj.personPoses.length, buffer, bufferOffset);
    obj.personPoses.forEach((val) => {
      bufferOffset = PersonPoseUPO.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonPoseArrayUPO
    let len;
    let data = new PersonPoseArrayUPO(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [personPoses]
    // Deserialize array length for message field [personPoses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.personPoses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.personPoses[i] = PersonPoseUPO.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.personPoses.forEach((val) => {
      length += PersonPoseUPO.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'upo_msgs/PersonPoseArrayUPO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b639a8fec51263bcdabcb919ea55b99e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 size
    PersonPoseUPO[] personPoses
    
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
    MSG: upo_msgs/PersonPoseUPO
    Header header
    uint32 id
    float64 vel
    geometry_msgs/Point position 
    geometry_msgs/Quaternion orientation 
    
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
    const resolved = new PersonPoseArrayUPO(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.personPoses !== undefined) {
      resolved.personPoses = new Array(msg.personPoses.length);
      for (let i = 0; i < resolved.personPoses.length; ++i) {
        resolved.personPoses[i] = PersonPoseUPO.Resolve(msg.personPoses[i]);
      }
    }
    else {
      resolved.personPoses = []
    }

    return resolved;
    }
};

module.exports = PersonPoseArrayUPO;
