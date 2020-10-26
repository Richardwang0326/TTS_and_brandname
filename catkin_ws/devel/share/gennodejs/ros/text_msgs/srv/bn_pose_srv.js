// Auto-generated. Do not edit!

// (in-package text_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let object_pose = require('../msg/object_pose.js');

//-----------------------------------------------------------

class bn_pose_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.total_list = null;
      this.list = null;
      this.image = null;
      this.depth = null;
      this.mask = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('total_list')) {
        this.total_list = initObj.total_list
      }
      else {
        this.total_list = 0;
      }
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = [];
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bn_pose_srvRequest
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [total_list]
    bufferOffset = _serializer.int32(obj.total_list, buffer, bufferOffset);
    // Serialize message field [list]
    bufferOffset = _arraySerializer.int32(obj.list, buffer, bufferOffset, null);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.mask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bn_pose_srvRequest
    let len;
    let data = new bn_pose_srvRequest(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [total_list]
    data.total_list = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [list]
    data.list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.list.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth);
    length += sensor_msgs.msg.Image.getMessageSize(object.mask);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_msgs/bn_pose_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f649365150bc105bd0f813c4ed5c63ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Request data
    int32 count
    int32 total_list
    int32[] list
    sensor_msgs/Image image
    sensor_msgs/Image depth
    sensor_msgs/Image mask
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bn_pose_srvRequest(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.total_list !== undefined) {
      resolved.total_list = msg.total_list;
    }
    else {
      resolved.total_list = 0
    }

    if (msg.list !== undefined) {
      resolved.list = msg.list;
    }
    else {
      resolved.list = []
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.depth !== undefined) {
      resolved.depth = sensor_msgs.msg.Image.Resolve(msg.depth)
    }
    else {
      resolved.depth = new sensor_msgs.msg.Image()
    }

    if (msg.mask !== undefined) {
      resolved.mask = sensor_msgs.msg.Image.Resolve(msg.mask)
    }
    else {
      resolved.mask = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class bn_pose_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.count = null;
      this.pix = null;
      this.ob_list = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('pix')) {
        this.pix = initObj.pix
      }
      else {
        this.pix = 0;
      }
      if (initObj.hasOwnProperty('ob_list')) {
        this.ob_list = initObj.ob_list
      }
      else {
        this.ob_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bn_pose_srvResponse
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [pix]
    bufferOffset = _serializer.int32(obj.pix, buffer, bufferOffset);
    // Serialize message field [ob_list]
    // Serialize the length for message field [ob_list]
    bufferOffset = _serializer.uint32(obj.ob_list.length, buffer, bufferOffset);
    obj.ob_list.forEach((val) => {
      bufferOffset = object_pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bn_pose_srvResponse
    let len;
    let data = new bn_pose_srvResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pix]
    data.pix = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ob_list]
    // Deserialize array length for message field [ob_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ob_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ob_list[i] = object_pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    object.ob_list.forEach((val) => {
      length += object_pose.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_msgs/bn_pose_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e002d0c48ed986a47d2a53d72a32f16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Response data
    string state  # pick or suck
    int32 count
    int32 pix
    object_pose[] ob_list
    
    
    ================================================================================
    MSG: text_msgs/object_pose
    int32 object
    string state 		# pick or suck
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
    const resolved = new bn_pose_srvResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.pix !== undefined) {
      resolved.pix = msg.pix;
    }
    else {
      resolved.pix = 0
    }

    if (msg.ob_list !== undefined) {
      resolved.ob_list = new Array(msg.ob_list.length);
      for (let i = 0; i < resolved.ob_list.length; ++i) {
        resolved.ob_list[i] = object_pose.Resolve(msg.ob_list[i]);
      }
    }
    else {
      resolved.ob_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: bn_pose_srvRequest,
  Response: bn_pose_srvResponse,
  md5sum() { return 'a390f42680d4ac2ddfd1904d44d51e95'; },
  datatype() { return 'text_msgs/bn_pose_srv'; }
};
