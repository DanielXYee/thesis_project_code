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

class GetApproachGMMSamplesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.person_orientation = null;
      this.num_samples = null;
    }
    else {
      if (initObj.hasOwnProperty('person_orientation')) {
        this.person_orientation = initObj.person_orientation
      }
      else {
        this.person_orientation = 0.0;
      }
      if (initObj.hasOwnProperty('num_samples')) {
        this.num_samples = initObj.num_samples
      }
      else {
        this.num_samples = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachGMMSamplesRequest
    // Serialize message field [person_orientation]
    bufferOffset = _serializer.float32(obj.person_orientation, buffer, bufferOffset);
    // Serialize message field [num_samples]
    bufferOffset = _serializer.int32(obj.num_samples, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachGMMSamplesRequest
    let len;
    let data = new GetApproachGMMSamplesRequest(null);
    // Deserialize message field [person_orientation]
    data.person_orientation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_samples]
    data.num_samples = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gmm_sampling/GetApproachGMMSamplesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ccac130b5a98169f8b1a55b56a21b0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 person_orientation
    int32 num_samples
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachGMMSamplesRequest(null);
    if (msg.person_orientation !== undefined) {
      resolved.person_orientation = msg.person_orientation;
    }
    else {
      resolved.person_orientation = 0.0
    }

    if (msg.num_samples !== undefined) {
      resolved.num_samples = msg.num_samples;
    }
    else {
      resolved.num_samples = 0
    }

    return resolved;
    }
};

class GetApproachGMMSamplesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distances = null;
      this.orientations = null;
    }
    else {
      if (initObj.hasOwnProperty('distances')) {
        this.distances = initObj.distances
      }
      else {
        this.distances = [];
      }
      if (initObj.hasOwnProperty('orientations')) {
        this.orientations = initObj.orientations
      }
      else {
        this.orientations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachGMMSamplesResponse
    // Serialize message field [distances]
    bufferOffset = _arraySerializer.float32(obj.distances, buffer, bufferOffset, null);
    // Serialize message field [orientations]
    bufferOffset = _arraySerializer.float32(obj.orientations, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachGMMSamplesResponse
    let len;
    let data = new GetApproachGMMSamplesResponse(null);
    // Deserialize message field [distances]
    data.distances = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [orientations]
    data.orientations = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.distances.length;
    length += 4 * object.orientations.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gmm_sampling/GetApproachGMMSamplesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63f275c709dd0fea8682d4dab777a67a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] distances
    float32[] orientations
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachGMMSamplesResponse(null);
    if (msg.distances !== undefined) {
      resolved.distances = msg.distances;
    }
    else {
      resolved.distances = []
    }

    if (msg.orientations !== undefined) {
      resolved.orientations = msg.orientations;
    }
    else {
      resolved.orientations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetApproachGMMSamplesRequest,
  Response: GetApproachGMMSamplesResponse,
  md5sum() { return '39c3821b9d89c2c5ed582a1e164cc75d'; },
  datatype() { return 'gmm_sampling/GetApproachGMMSamples'; }
};
