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

class SetWeightsRequest {
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
    // Serializes a message object of type SetWeightsRequest
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float32(obj.weights, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWeightsRequest
    let len;
    let data = new SetWeightsRequest(null);
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
    return 'navigation_features/SetWeightsRequest';
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
    const resolved = new SetWeightsRequest(null);
    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    return resolved;
    }
};

class SetWeightsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWeightsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWeightsResponse
    let len;
    let data = new SetWeightsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation_features/SetWeightsResponse';
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
    const resolved = new SetWeightsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetWeightsRequest,
  Response: SetWeightsResponse,
  md5sum() { return 'd5ad370da8a2ea46419264bcdd331bf8'; },
  datatype() { return 'navigation_features/SetWeights'; }
};
