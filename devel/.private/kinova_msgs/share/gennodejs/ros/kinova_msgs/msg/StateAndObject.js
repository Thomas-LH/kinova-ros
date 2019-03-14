// Auto-generated. Do not edit!

// (in-package kinova_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class StateAndObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.object_pose = null;
      this.object_size = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('object_pose')) {
        this.object_pose = initObj.object_pose
      }
      else {
        this.object_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('object_size')) {
        this.object_size = initObj.object_size
      }
      else {
        this.object_size = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StateAndObject
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [object_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.object_pose, buffer, bufferOffset);
    // Serialize message field [object_size]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.object_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StateAndObject
    let len;
    let data = new StateAndObject(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_pose]
    data.object_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_size]
    data.object_size = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.object_pose);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinova_msgs/StateAndObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5483a7f40ced969438c4b266c24fad97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    uint8 START=1
    uint8 CANCEL=2
    geometry_msgs/PoseStamped object_pose
    geometry_msgs/Point object_size
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new StateAndObject(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.object_pose !== undefined) {
      resolved.object_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.object_pose)
    }
    else {
      resolved.object_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.object_size !== undefined) {
      resolved.object_size = geometry_msgs.msg.Point.Resolve(msg.object_size)
    }
    else {
      resolved.object_size = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

// Constants for message
StateAndObject.Constants = {
  START: 1,
  CANCEL: 2,
}

module.exports = StateAndObject;
