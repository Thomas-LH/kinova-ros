// Auto-generated. Do not edit!

// (in-package kinova_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetNullSpaceModeStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNullSpaceModeStateRequest
    // Serialize message field [state]
    bufferOffset = _serializer.uint16(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNullSpaceModeStateRequest
    let len;
    let data = new SetNullSpaceModeStateRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinova_msgs/SetNullSpaceModeStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '891b541ef99af7889d0f22a062410be8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetNullSpaceModeStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

class SetNullSpaceModeStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNullSpaceModeStateResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNullSpaceModeStateResponse
    let len;
    let data = new SetNullSpaceModeStateResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kinova_msgs/SetNullSpaceModeStateResponse';
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
    const resolved = new SetNullSpaceModeStateResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetNullSpaceModeStateRequest,
  Response: SetNullSpaceModeStateResponse,
  md5sum() { return '891b541ef99af7889d0f22a062410be8'; },
  datatype() { return 'kinova_msgs/SetNullSpaceModeState'; }
};
