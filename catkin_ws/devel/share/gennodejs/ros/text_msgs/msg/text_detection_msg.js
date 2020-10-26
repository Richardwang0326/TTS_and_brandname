// Auto-generated. Do not edit!

// (in-package text_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let bb_box = require('./bb_box.js');
let int_arr = require('./int_arr.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class text_detection_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.probability = null;
      this.pose = null;
      this.box = null;
      this.contour = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new bb_box();
      }
      if (initObj.hasOwnProperty('contour')) {
        this.contour = initObj.contour
      }
      else {
        this.contour = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type text_detection_msg
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = bb_box.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [contour]
    // Serialize the length for message field [contour]
    bufferOffset = _serializer.uint32(obj.contour.length, buffer, bufferOffset);
    obj.contour.forEach((val) => {
      bufferOffset = int_arr.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type text_detection_msg
    let len;
    let data = new text_detection_msg(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = bb_box.deserialize(buffer, bufferOffset);
    // Deserialize message field [contour]
    // Deserialize array length for message field [contour]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contour = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contour[i] = int_arr.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    object.contour.forEach((val) => {
      length += int_arr.getMessageSize(val);
    });
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'text_msgs/text_detection_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba79c449ebbb021bfad5cb922f4b82d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status				# O for non_return , X for return 
    float64 probability
    geometry_msgs/Pose pose
    bb_box box
    int_arr[] contour
    
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
    
    ================================================================================
    MSG: text_msgs/bb_box
    int32 xmax
    int32 xmin
    int32 ymax
    int32 ymin
    ================================================================================
    MSG: text_msgs/int_arr
    int32[] point
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new text_detection_msg(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.box !== undefined) {
      resolved.box = bb_box.Resolve(msg.box)
    }
    else {
      resolved.box = new bb_box()
    }

    if (msg.contour !== undefined) {
      resolved.contour = new Array(msg.contour.length);
      for (let i = 0; i < resolved.contour.length; ++i) {
        resolved.contour[i] = int_arr.Resolve(msg.contour[i]);
      }
    }
    else {
      resolved.contour = []
    }

    return resolved;
    }
};

module.exports = text_detection_msg;
