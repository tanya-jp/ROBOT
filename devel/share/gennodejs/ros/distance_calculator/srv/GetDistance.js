// Auto-generated. Do not edit!

// (in-package distance_calculator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction_name = null;
    }
    else {
      if (initObj.hasOwnProperty('direction_name')) {
        this.direction_name = initObj.direction_name
      }
      else {
        this.direction_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceRequest
    // Serialize message field [direction_name]
    bufferOffset = _serializer.string(obj.direction_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceRequest
    let len;
    let data = new GetDistanceRequest(null);
    // Deserialize message field [direction_name]
    data.direction_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.direction_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'distance_calculator/GetDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d054b878265afa58be0eacfa20da225';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string direction_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceRequest(null);
    if (msg.direction_name !== undefined) {
      resolved.direction_name = msg.direction_name;
    }
    else {
      resolved.direction_name = ''
    }

    return resolved;
    }
};

class GetDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceResponse
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceResponse
    let len;
    let data = new GetDistanceResponse(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'distance_calculator/GetDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acff7fda0c683c872875f5c4b069f124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceResponse(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDistanceRequest,
  Response: GetDistanceResponse,
  md5sum() { return '77f540a9cfbaeedc83618fe997a13644'; },
  datatype() { return 'distance_calculator/GetDistance'; }
};
