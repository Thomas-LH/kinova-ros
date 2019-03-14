// Auto-generated. Do not edit!

// (in-package kinova_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
      this.current = null;
      this.actuators_temp = null;
      this.fingers_temp = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('actuators_temp')) {
        this.actuators_temp = initObj.actuators_temp
      }
      else {
        this.actuators_temp = [];
      }
      if (initObj.hasOwnProperty('fingers_temp')) {
        this.fingers_temp = initObj.fingers_temp
      }
      else {
        this.fingers_temp = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorInfo
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [actuators_temp]
    bufferOffset = _arraySerializer.float32(obj.actuators_temp, buffer, bufferOffset, null);
    // Serialize message field [fingers_temp]
    bufferOffset = _arraySerializer.float32(obj.fingers_temp, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorInfo
    let len;
    let data = new SensorInfo(null);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actuators_temp]
    data.actuators_temp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fingers_temp]
    data.fingers_temp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.actuators_temp.length;
    length += 4 * object.fingers_temp.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinova_msgs/SensorInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39a41a97124a62576b248b6253fcf6ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 voltage
    float32 current 
    float32[] actuators_temp
    float32[] fingers_temp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorInfo(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.actuators_temp !== undefined) {
      resolved.actuators_temp = msg.actuators_temp;
    }
    else {
      resolved.actuators_temp = []
    }

    if (msg.fingers_temp !== undefined) {
      resolved.fingers_temp = msg.fingers_temp;
    }
    else {
      resolved.fingers_temp = []
    }

    return resolved;
    }
};

module.exports = SensorInfo;
