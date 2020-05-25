// Auto-generated. Do not edit!

// (in-package upo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PersonGoalUPO = require('./PersonGoalUPO.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PersonGoalArrayUPO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.size = null;
      this.personGoals = null;
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
      if (initObj.hasOwnProperty('personGoals')) {
        this.personGoals = initObj.personGoals
      }
      else {
        this.personGoals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonGoalArrayUPO
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    // Serialize message field [personGoals]
    // Serialize the length for message field [personGoals]
    bufferOffset = _serializer.uint32(obj.personGoals.length, buffer, bufferOffset);
    obj.personGoals.forEach((val) => {
      bufferOffset = PersonGoalUPO.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonGoalArrayUPO
    let len;
    let data = new PersonGoalArrayUPO(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [personGoals]
    // Deserialize array length for message field [personGoals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.personGoals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.personGoals[i] = PersonGoalUPO.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.personGoals.forEach((val) => {
      length += PersonGoalUPO.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'upo_msgs/PersonGoalArrayUPO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2da875097c42a5e599c47bb399c2877';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 size
    PersonGoalUPO[] personGoals
    
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
    MSG: upo_msgs/PersonGoalUPO
    Header header
    uint32 id
    geometry_msgs/PoseStamped[] goals
    float32[] belief
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new PersonGoalArrayUPO(null);
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

    if (msg.personGoals !== undefined) {
      resolved.personGoals = new Array(msg.personGoals.length);
      for (let i = 0; i < resolved.personGoals.length; ++i) {
        resolved.personGoals[i] = PersonGoalUPO.Resolve(msg.personGoals[i]);
      }
    }
    else {
      resolved.personGoals = []
    }

    return resolved;
    }
};

module.exports = PersonGoalArrayUPO;
