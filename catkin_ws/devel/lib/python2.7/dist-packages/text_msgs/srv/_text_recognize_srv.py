# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from text_msgs/text_recognize_srvRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import sensor_msgs.msg
import std_msgs.msg
import text_msgs.msg

class text_recognize_srvRequest(genpy.Message):
  _md5sum = "6b4af87a7bc8bef2fd028106b18e5053"
  _type = "text_msgs/text_recognize_srvRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Request data
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
int32[] point"""
  __slots__ = ['direct','data']
  _slot_types = ['int32','text_msgs/text_detection_array']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       direct,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(text_recognize_srvRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.direct is None:
        self.direct = 0
      if self.data is None:
        self.data = text_msgs.msg.text_detection_array()
    else:
      self.direct = 0
      self.data = text_msgs.msg.text_detection_array()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.direct
      buff.write(_get_struct_i().pack(_x))
      _x = self.data.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.data.image.header.seq, _x.data.image.header.stamp.secs, _x.data.image.header.stamp.nsecs))
      _x = self.data.image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.image.height, _x.data.image.width))
      _x = self.data.image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.image.is_bigendian, _x.data.image.step))
      _x = self.data.image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.data.depth.header.seq, _x.data.depth.header.stamp.secs, _x.data.depth.header.stamp.nsecs))
      _x = self.data.depth.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.depth.height, _x.data.depth.width))
      _x = self.data.depth.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.depth.is_bigendian, _x.data.depth.step))
      _x = self.data.depth.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.data.bb_count
      buff.write(_get_struct_i().pack(_x))
      length = len(self.data.text_array)
      buff.write(_struct_I.pack(length))
      for val1 in self.data.text_array:
        _x = val1.status
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.probability
        buff.write(_get_struct_d().pack(_x))
        _v1 = val1.pose
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v4 = val1.box
        _x = _v4
        buff.write(_get_struct_4i().pack(_x.xmax, _x.xmin, _x.ymax, _x.ymin))
        length = len(val1.contour)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour:
          length = len(val2.point)
          buff.write(_struct_I.pack(length))
          pattern = '<%si'%length
          buff.write(struct.Struct(pattern).pack(*val2.point))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.data is None:
        self.data = text_msgs.msg.text_detection_array()
      end = 0
      start = end
      end += 4
      (self.direct,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.status = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.data.image.header.seq, _x.data.image.header.stamp.secs, _x.data.image.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.image.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.image.height, _x.data.image.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.image.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.image.is_bigendian, _x.data.image.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.image.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.data.depth.header.seq, _x.data.depth.header.stamp.secs, _x.data.depth.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.depth.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.depth.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.depth.height, _x.data.depth.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.depth.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.depth.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.depth.is_bigendian, _x.data.depth.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.depth.data = str[start:end]
      start = end
      end += 4
      (self.data.bb_count,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data.text_array = []
      for i in range(0, length):
        val1 = text_msgs.msg.text_detection_msg()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.status = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.status = str[start:end]
        start = end
        end += 8
        (val1.probability,) = _get_struct_d().unpack(str[start:end])
        _v5 = val1.pose
        _v6 = _v5.position
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v7 = _v5.orientation
        _x = _v7
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v8 = val1.box
        _x = _v8
        start = end
        end += 16
        (_x.xmax, _x.xmin, _x.ymax, _x.ymin,) = _get_struct_4i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour = []
        for i in range(0, length):
          val2 = text_msgs.msg.int_arr()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%si'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val2.point = s.unpack(str[start:end])
          val1.contour.append(val2)
        self.data.text_array.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.direct
      buff.write(_get_struct_i().pack(_x))
      _x = self.data.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.data.image.header.seq, _x.data.image.header.stamp.secs, _x.data.image.header.stamp.nsecs))
      _x = self.data.image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.image.height, _x.data.image.width))
      _x = self.data.image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.image.is_bigendian, _x.data.image.step))
      _x = self.data.image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.data.depth.header.seq, _x.data.depth.header.stamp.secs, _x.data.depth.header.stamp.nsecs))
      _x = self.data.depth.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.data.depth.height, _x.data.depth.width))
      _x = self.data.depth.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.data.depth.is_bigendian, _x.data.depth.step))
      _x = self.data.depth.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.data.bb_count
      buff.write(_get_struct_i().pack(_x))
      length = len(self.data.text_array)
      buff.write(_struct_I.pack(length))
      for val1 in self.data.text_array:
        _x = val1.status
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.probability
        buff.write(_get_struct_d().pack(_x))
        _v9 = val1.pose
        _v10 = _v9.position
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = _v9.orientation
        _x = _v11
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v12 = val1.box
        _x = _v12
        buff.write(_get_struct_4i().pack(_x.xmax, _x.xmin, _x.ymax, _x.ymin))
        length = len(val1.contour)
        buff.write(_struct_I.pack(length))
        for val2 in val1.contour:
          length = len(val2.point)
          buff.write(_struct_I.pack(length))
          pattern = '<%si'%length
          buff.write(val2.point.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.data is None:
        self.data = text_msgs.msg.text_detection_array()
      end = 0
      start = end
      end += 4
      (self.direct,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.status = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.data.image.header.seq, _x.data.image.header.stamp.secs, _x.data.image.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.image.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.image.height, _x.data.image.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.image.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.image.is_bigendian, _x.data.image.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.image.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.data.depth.header.seq, _x.data.depth.header.stamp.secs, _x.data.depth.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.depth.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.depth.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.data.depth.height, _x.data.depth.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data.depth.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.data.depth.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.data.depth.is_bigendian, _x.data.depth.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data.depth.data = str[start:end]
      start = end
      end += 4
      (self.data.bb_count,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data.text_array = []
      for i in range(0, length):
        val1 = text_msgs.msg.text_detection_msg()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.status = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.status = str[start:end]
        start = end
        end += 8
        (val1.probability,) = _get_struct_d().unpack(str[start:end])
        _v13 = val1.pose
        _v14 = _v13.position
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.orientation
        _x = _v15
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v16 = val1.box
        _x = _v16
        start = end
        end += 16
        (_x.xmax, _x.xmin, _x.ymax, _x.ymin,) = _get_struct_4i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.contour = []
        for i in range(0, length):
          val2 = text_msgs.msg.int_arr()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%si'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val2.point = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
          val1.contour.append(val2)
        self.data.text_array.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_4i = None
def _get_struct_4i():
    global _struct_4i
    if _struct_4i is None:
        _struct_4i = struct.Struct("<4i")
    return _struct_4i
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from text_msgs/text_recognize_srvResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import std_msgs.msg

class text_recognize_srvResponse(genpy.Message):
  _md5sum = "c858716b76ac4ea0974dd2fca9030898"
  _type = "text_msgs/text_recognize_srvResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Response data
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
"""
  __slots__ = ['state','mask']
  _slot_types = ['string','sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state,mask

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(text_recognize_srvResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = ''
      if self.mask is None:
        self.mask = sensor_msgs.msg.Image()
    else:
      self.state = ''
      self.mask = sensor_msgs.msg.Image()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.mask.header.seq, _x.mask.header.stamp.secs, _x.mask.header.stamp.nsecs))
      _x = self.mask.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.mask.height, _x.mask.width))
      _x = self.mask.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.mask.is_bigendian, _x.mask.step))
      _x = self.mask.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.mask is None:
        self.mask = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.mask.header.seq, _x.mask.header.stamp.secs, _x.mask.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mask.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mask.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.mask.height, _x.mask.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mask.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mask.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.mask.is_bigendian, _x.mask.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mask.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.mask.header.seq, _x.mask.header.stamp.secs, _x.mask.header.stamp.nsecs))
      _x = self.mask.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.mask.height, _x.mask.width))
      _x = self.mask.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.mask.is_bigendian, _x.mask.step))
      _x = self.mask.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.mask is None:
        self.mask = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.mask.header.seq, _x.mask.header.stamp.secs, _x.mask.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mask.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mask.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.mask.height, _x.mask.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mask.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mask.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.mask.is_bigendian, _x.mask.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.mask.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
class text_recognize_srv(object):
  _type          = 'text_msgs/text_recognize_srv'
  _md5sum = '6a29ed0e96899d05731bd1631ebb881a'
  _request_class  = text_recognize_srvRequest
  _response_class = text_recognize_srvResponse
