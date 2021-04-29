// Auto-generated. Do not edit!

// (in-package tiago_custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PickGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.use_aruco = null;
      this.aruco_id = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('use_aruco')) {
        this.use_aruco = initObj.use_aruco
      }
      else {
        this.use_aruco = false;
      }
      if (initObj.hasOwnProperty('aruco_id')) {
        this.aruco_id = initObj.aruco_id
      }
      else {
        this.aruco_id = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickGoal
    // Serialize message field [use_aruco]
    bufferOffset = _serializer.bool(obj.use_aruco, buffer, bufferOffset);
    // Serialize message field [aruco_id]
    bufferOffset = _serializer.uint32(obj.aruco_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickGoal
    let len;
    let data = new PickGoal(null);
    // Deserialize message field [use_aruco]
    data.use_aruco = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [aruco_id]
    data.aruco_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tiago_custom_msgs/PickGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b97fd92d46d76c34e247152503c365d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    bool use_aruco
    uint32 aruco_id # Specify which aruco id to pick
    geometry_msgs/Pose pose 
    
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
    const resolved = new PickGoal(null);
    if (msg.use_aruco !== undefined) {
      resolved.use_aruco = msg.use_aruco;
    }
    else {
      resolved.use_aruco = false
    }

    if (msg.aruco_id !== undefined) {
      resolved.aruco_id = msg.aruco_id;
    }
    else {
      resolved.aruco_id = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = PickGoal;