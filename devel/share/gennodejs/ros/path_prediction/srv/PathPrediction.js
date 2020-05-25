// Auto-generated. Do not edit!

// (in-package path_prediction.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PathPredictionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
      this.input_rows = null;
      this.input_cols = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = [];
      }
      if (initObj.hasOwnProperty('input_rows')) {
        this.input_rows = initObj.input_rows
      }
      else {
        this.input_rows = 0;
      }
      if (initObj.hasOwnProperty('input_cols')) {
        this.input_cols = initObj.input_cols
      }
      else {
        this.input_cols = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPredictionRequest
    // Serialize message field [input]
    bufferOffset = _arraySerializer.int32(obj.input, buffer, bufferOffset, null);
    // Serialize message field [input_rows]
    bufferOffset = _serializer.int16(obj.input_rows, buffer, bufferOffset);
    // Serialize message field [input_cols]
    bufferOffset = _serializer.int16(obj.input_cols, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPredictionRequest
    let len;
    let data = new PathPredictionRequest(null);
    // Deserialize message field [input]
    data.input = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [input_rows]
    data.input_rows = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [input_cols]
    data.input_cols = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.input.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_prediction/PathPredictionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '855307df22ab0724c19d3c235d483061';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] input
    int16 input_rows
    int16 input_cols
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPredictionRequest(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = []
    }

    if (msg.input_rows !== undefined) {
      resolved.input_rows = msg.input_rows;
    }
    else {
      resolved.input_rows = 0
    }

    if (msg.input_cols !== undefined) {
      resolved.input_cols = msg.input_cols;
    }
    else {
      resolved.input_cols = 0
    }

    return resolved;
    }
};

class PathPredictionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prediction = null;
      this.pred_rows = null;
      this.pred_cols = null;
    }
    else {
      if (initObj.hasOwnProperty('prediction')) {
        this.prediction = initObj.prediction
      }
      else {
        this.prediction = [];
      }
      if (initObj.hasOwnProperty('pred_rows')) {
        this.pred_rows = initObj.pred_rows
      }
      else {
        this.pred_rows = 0;
      }
      if (initObj.hasOwnProperty('pred_cols')) {
        this.pred_cols = initObj.pred_cols
      }
      else {
        this.pred_cols = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPredictionResponse
    // Serialize message field [prediction]
    bufferOffset = _arraySerializer.float32(obj.prediction, buffer, bufferOffset, null);
    // Serialize message field [pred_rows]
    bufferOffset = _serializer.uint8(obj.pred_rows, buffer, bufferOffset);
    // Serialize message field [pred_cols]
    bufferOffset = _serializer.uint8(obj.pred_cols, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPredictionResponse
    let len;
    let data = new PathPredictionResponse(null);
    // Deserialize message field [prediction]
    data.prediction = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pred_rows]
    data.pred_rows = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pred_cols]
    data.pred_cols = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.prediction.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_prediction/PathPredictionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2a690181fe921dc255ee3ae2e47e366';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] prediction
    uint8 pred_rows
    uint8 pred_cols
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPredictionResponse(null);
    if (msg.prediction !== undefined) {
      resolved.prediction = msg.prediction;
    }
    else {
      resolved.prediction = []
    }

    if (msg.pred_rows !== undefined) {
      resolved.pred_rows = msg.pred_rows;
    }
    else {
      resolved.pred_rows = 0
    }

    if (msg.pred_cols !== undefined) {
      resolved.pred_cols = msg.pred_cols;
    }
    else {
      resolved.pred_cols = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PathPredictionRequest,
  Response: PathPredictionResponse,
  md5sum() { return '81867dfe7d3311b753270178479e45b9'; },
  datatype() { return 'path_prediction/PathPrediction'; }
};
