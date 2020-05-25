// Auto-generated. Do not edit!

// (in-package gmm_sampling.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetApproachGMMProbsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.person_orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('person_orientation')) {
        this.person_orientation = initObj.person_orientation
      }
      else {
        this.person_orientation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachGMMProbsRequest
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [person_orientation]
    bufferOffset = _serializer.float32(obj.person_orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachGMMProbsRequest
    let len;
    let data = new GetApproachGMMProbsRequest(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [person_orientation]
    data.person_orientation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gmm_sampling/GetApproachGMMProbsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4d06fe277e8bb25217c725744e05c2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] x
    float32[] y
    float32 person_orientation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachGMMProbsRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.person_orientation !== undefined) {
      resolved.person_orientation = msg.person_orientation;
    }
    else {
      resolved.person_orientation = 0.0
    }

    return resolved;
    }
};

class GetApproachGMMProbsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.probs = null;
    }
    else {
      if (initObj.hasOwnProperty('probs')) {
        this.probs = initObj.probs
      }
      else {
        this.probs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachGMMProbsResponse
    // Serialize message field [probs]
    bufferOffset = _arraySerializer.float32(obj.probs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachGMMProbsResponse
    let len;
    let data = new GetApproachGMMProbsResponse(null);
    // Deserialize message field [probs]
    data.probs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.probs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gmm_sampling/GetApproachGMMProbsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47d9867c355f21d454eb271e7f61b3c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] probs
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachGMMProbsResponse(null);
    if (msg.probs !== undefined) {
      resolved.probs = msg.probs;
    }
    else {
      resolved.probs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetApproachGMMProbsRequest,
  Response: GetApproachGMMProbsResponse,
  md5sum() { return '7d2e9fd8df330e05a0d7f3f45a2a580e'; },
  datatype() { return 'gmm_sampling/GetApproachGMMProbs'; }
};
