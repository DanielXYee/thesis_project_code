// Auto-generated. Do not edit!

// (in-package navigation_features.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class InitWeightsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.random = null;
      this.normalize = null;
    }
    else {
      if (initObj.hasOwnProperty('random')) {
        this.random = initObj.random
      }
      else {
        this.random = false;
      }
      if (initObj.hasOwnProperty('normalize')) {
        this.normalize = initObj.normalize
      }
      else {
        this.normalize = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitWeightsRequest
    // Serialize message field [random]
    bufferOffset = _serializer.bool(obj.random, buffer, bufferOffset);
    // Serialize message field [normalize]
    bufferOffset = _serializer.bool(obj.normalize, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitWeightsRequest
    let len;
    let data = new InitWeightsRequest(null);
    // Deserialize message field [random]
    data.random = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [normalize]
    data.normalize = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation_features/InitWeightsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5d460e556a63181a097fbdfc6faca67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool random
    bool normalize
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitWeightsRequest(null);
    if (msg.random !== undefined) {
      resolved.random = msg.random;
    }
    else {
      resolved.random = false
    }

    if (msg.normalize !== undefined) {
      resolved.normalize = msg.normalize;
    }
    else {
      resolved.normalize = false
    }

    return resolved;
    }
};

class InitWeightsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weights = null;
    }
    else {
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitWeightsResponse
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float32(obj.weights, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitWeightsResponse
    let len;
    let data = new InitWeightsResponse(null);
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.weights.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation_features/InitWeightsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5ad370da8a2ea46419264bcdd331bf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] weights
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitWeightsResponse(null);
    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    return resolved;
    }
};

module.exports = {
  Request: InitWeightsRequest,
  Response: InitWeightsResponse,
  md5sum() { return 'a974b2e5d8cf5299fc01afe16b877882'; },
  datatype() { return 'navigation_features/InitWeights'; }
};
