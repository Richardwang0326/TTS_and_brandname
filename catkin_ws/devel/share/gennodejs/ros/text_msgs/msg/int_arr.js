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

class int_arr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type int_arr
    // Serialize message field [point]
    bufferOffset = _arraySerializer.int32(obj.point, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type int_arr
    let len;
    let data = new int_arr(null);
    // Deserialize message field [point]
    data.point = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.point.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'text_msgs/int_arr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d43aa930d9591879a0c30e6abefcb2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] point
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new int_arr(null);
    if (msg.point !== undefined) {
      resolved.point = msg.point;
    }
    else {
      resolved.point = []
    }

    return resolved;
    }
};

module.exports = int_arr;
