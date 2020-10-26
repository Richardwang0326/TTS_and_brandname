// Auto-generated. Do not edit!

// (in-package text_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bb_box {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xmax = null;
      this.xmin = null;
      this.ymax = null;
      this.ymin = null;
    }
    else {
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0;
      }
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bb_box
    // Serialize message field [xmax]
    bufferOffset = _serializer.int32(obj.xmax, buffer, bufferOffset);
    // Serialize message field [xmin]
    bufferOffset = _serializer.int32(obj.xmin, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.int32(obj.ymax, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.int32(obj.ymin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bb_box
    let len;
    let data = new bb_box(null);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'text_msgs/bb_box';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65f8a458776ee81cb95e7c837498673e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 xmax
    int32 xmin
    int32 ymax
    int32 ymin
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bb_box(null);
    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0
    }

    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0
    }

    return resolved;
    }
};

module.exports = bb_box;
