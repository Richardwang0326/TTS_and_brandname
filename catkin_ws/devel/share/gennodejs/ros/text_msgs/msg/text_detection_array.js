// Auto-generated. Do not edit!

// (in-package text_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let text_detection_msg = require('./text_detection_msg.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class text_detection_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.image = null;
      this.depth = null;
      this.bb_count = null;
      this.text_array = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
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
      if (initObj.hasOwnProperty('bb_count')) {
        this.bb_count = initObj.bb_count
      }
      else {
        this.bb_count = 0;
      }
      if (initObj.hasOwnProperty('text_array')) {
        this.text_array = initObj.text_array
      }
      else {
        this.text_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type text_detection_array
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth, buffer, bufferOffset);
    // Serialize message field [bb_count]
    bufferOffset = _serializer.int32(obj.bb_count, buffer, bufferOffset);
    // Serialize message field [text_array]
    // Serialize the length for message field [text_array]
    bufferOffset = _serializer.uint32(obj.text_array.length, buffer, bufferOffset);
    obj.text_array.forEach((val) => {
      bufferOffset = text_detection_msg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type text_detection_array
    let len;
    let data = new text_detection_array(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [bb_count]
    data.bb_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [text_array]
    // Deserialize array length for message field [text_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.text_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.text_array[i] = text_detection_msg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth);
    object.text_array.forEach((val) => {
      length += text_detection_msg.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'text_msgs/text_detection_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70b11adbdf88669325700427bf1cc417';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new text_detection_array(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
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

    if (msg.bb_count !== undefined) {
      resolved.bb_count = msg.bb_count;
    }
    else {
      resolved.bb_count = 0
    }

    if (msg.text_array !== undefined) {
      resolved.text_array = new Array(msg.text_array.length);
      for (let i = 0; i < resolved.text_array.length; ++i) {
        resolved.text_array[i] = text_detection_msg.Resolve(msg.text_array[i]);
      }
    }
    else {
      resolved.text_array = []
    }

    return resolved;
    }
};

module.exports = text_detection_array;
