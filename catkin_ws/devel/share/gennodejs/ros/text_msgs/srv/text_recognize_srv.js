// Auto-generated. Do not edit!

// (in-package text_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let text_detection_array = require('../msg/text_detection_array.js');

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class text_recognize_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direct = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('direct')) {
        this.direct = initObj.direct
      }
      else {
        this.direct = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new text_detection_array();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type text_recognize_srvRequest
    // Serialize message field [direct]
    bufferOffset = _serializer.int32(obj.direct, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = text_detection_array.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type text_recognize_srvRequest
    let len;
    let data = new text_recognize_srvRequest(null);
    // Deserialize message field [direct]
    data.direct = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = text_detection_array.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += text_detection_array.getMessageSize(object.data);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_msgs/text_recognize_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b4af87a7bc8bef2fd028106b18e5053';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Request data
    int32 direct   # 0 = 0, 1 = 90, 2 = 180, 3 = 270
    text_detection_array data
    
    ================================================================================
    MSG: text_msgs/text_detection_array
    string status				# O for non_return , X for return 
    sensor_msgs/Image image
    sensor_msgs/Image depth
    int32 bb_count
    text_detection_msg[] text_array
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
    
    ================================================================================
    MSG: text_msgs/text_detection_msg
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
    const resolved = new text_recognize_srvRequest(null);
    if (msg.direct !== undefined) {
      resolved.direct = msg.direct;
    }
    else {
      resolved.direct = 0
    }

    if (msg.data !== undefined) {
      resolved.data = text_detection_array.Resolve(msg.data)
    }
    else {
      resolved.data = new text_detection_array()
    }

    return resolved;
    }
};

class text_recognize_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.mask = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
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
    // Serializes a message object of type text_recognize_srvResponse
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.mask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type text_recognize_srvResponse
    let len;
    let data = new text_recognize_srvResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.mask);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_msgs/text_recognize_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c858716b76ac4ea0974dd2fca9030898';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Response data
    string state
    sensor_msgs/Image mask # for mission result
    
    
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
    const resolved = new text_recognize_srvResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
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

module.exports = {
  Request: text_recognize_srvRequest,
  Response: text_recognize_srvResponse,
  md5sum() { return '6a29ed0e96899d05731bd1631ebb881a'; },
  datatype() { return 'text_msgs/text_recognize_srv'; }
};
