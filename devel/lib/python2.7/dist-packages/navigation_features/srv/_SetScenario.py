# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navigation_features/SetScenarioRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import upo_msgs.msg
import geometry_msgs.msg
import std_msgs.msg
import sensor_msgs.msg

class SetScenarioRequest(genpy.Message):
  _md5sum = "d1a8c49e0969fcedfee28e334b2ff779"
  _type = "navigation_features/SetScenarioRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """sensor_msgs/PointCloud2 obstacles
upo_msgs/PersonPoseArrayUPO people
geometry_msgs/PoseStamped goal

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: upo_msgs/PersonPoseArrayUPO
Header header
uint32 size
PersonPoseUPO[] personPoses

================================================================================
MSG: upo_msgs/PersonPoseUPO
Header header
uint32 id
float64 vel
geometry_msgs/Point position 
geometry_msgs/Quaternion orientation 

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation
"""
  __slots__ = ['obstacles','people','goal']
  _slot_types = ['sensor_msgs/PointCloud2','upo_msgs/PersonPoseArrayUPO','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obstacles,people,goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetScenarioRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.obstacles is None:
        self.obstacles = sensor_msgs.msg.PointCloud2()
      if self.people is None:
        self.people = upo_msgs.msg.PersonPoseArrayUPO()
      if self.goal is None:
        self.goal = geometry_msgs.msg.PoseStamped()
    else:
      self.obstacles = sensor_msgs.msg.PointCloud2()
      self.people = upo_msgs.msg.PersonPoseArrayUPO()
      self.goal = geometry_msgs.msg.PoseStamped()

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.obstacles.header.seq, _x.obstacles.header.stamp.secs, _x.obstacles.header.stamp.nsecs))
      _x = self.obstacles.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.obstacles.height, _x.obstacles.width))
      length = len(self.obstacles.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.obstacles.is_bigendian, _x.obstacles.point_step, _x.obstacles.row_step))
      _x = self.obstacles.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.obstacles.is_dense, _x.people.header.seq, _x.people.header.stamp.secs, _x.people.header.stamp.nsecs))
      _x = self.people.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.people.size))
      length = len(self.people.personPoses)
      buff.write(_struct_I.pack(length))
      for val1 in self.people.personPoses:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_Id().pack(_x.id, _x.vel))
        _v3 = val1.position
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.orientation
        _x = _v4
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.goal.header.seq, _x.goal.header.stamp.secs, _x.goal.header.stamp.nsecs))
      _x = self.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal.pose.position.x, _x.goal.pose.position.y, _x.goal.pose.position.z, _x.goal.pose.orientation.x, _x.goal.pose.orientation.y, _x.goal.pose.orientation.z, _x.goal.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.obstacles is None:
        self.obstacles = sensor_msgs.msg.PointCloud2()
      if self.people is None:
        self.people = upo_msgs.msg.PersonPoseArrayUPO()
      if self.goal is None:
        self.goal = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.obstacles.header.seq, _x.obstacles.header.stamp.secs, _x.obstacles.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.obstacles.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.obstacles.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.obstacles.height, _x.obstacles.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.obstacles.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.obstacles.is_bigendian, _x.obstacles.point_step, _x.obstacles.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.obstacles.is_bigendian = bool(self.obstacles.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.obstacles.data = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.obstacles.is_dense, _x.people.header.seq, _x.people.header.stamp.secs, _x.people.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.obstacles.is_dense = bool(self.obstacles.is_dense)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.people.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.people.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.people.size,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.people.personPoses = []
      for i in range(0, length):
        val1 = upo_msgs.msg.PersonPoseUPO()
        _v5 = val1.header
        start = end
        end += 4
        (_v5.seq,) = _get_struct_I().unpack(str[start:end])
        _v6 = _v5.stamp
        _x = _v6
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.frame_id = str[start:end].decode('utf-8')
        else:
          _v5.frame_id = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.id, _x.vel,) = _get_struct_Id().unpack(str[start:end])
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.people.personPoses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.goal.header.seq, _x.goal.header.stamp.secs, _x.goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.goal.pose.position.x, _x.goal.pose.position.y, _x.goal.pose.position.z, _x.goal.pose.orientation.x, _x.goal.pose.orientation.y, _x.goal.pose.orientation.z, _x.goal.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.obstacles.header.seq, _x.obstacles.header.stamp.secs, _x.obstacles.header.stamp.nsecs))
      _x = self.obstacles.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.obstacles.height, _x.obstacles.width))
      length = len(self.obstacles.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.obstacles.is_bigendian, _x.obstacles.point_step, _x.obstacles.row_step))
      _x = self.obstacles.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.obstacles.is_dense, _x.people.header.seq, _x.people.header.stamp.secs, _x.people.header.stamp.nsecs))
      _x = self.people.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.people.size))
      length = len(self.people.personPoses)
      buff.write(_struct_I.pack(length))
      for val1 in self.people.personPoses:
        _v9 = val1.header
        buff.write(_get_struct_I().pack(_v9.seq))
        _v10 = _v9.stamp
        _x = _v10
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v9.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_Id().pack(_x.id, _x.vel))
        _v11 = val1.position
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = val1.orientation
        _x = _v12
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.goal.header.seq, _x.goal.header.stamp.secs, _x.goal.header.stamp.nsecs))
      _x = self.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal.pose.position.x, _x.goal.pose.position.y, _x.goal.pose.position.z, _x.goal.pose.orientation.x, _x.goal.pose.orientation.y, _x.goal.pose.orientation.z, _x.goal.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.obstacles is None:
        self.obstacles = sensor_msgs.msg.PointCloud2()
      if self.people is None:
        self.people = upo_msgs.msg.PersonPoseArrayUPO()
      if self.goal is None:
        self.goal = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.obstacles.header.seq, _x.obstacles.header.stamp.secs, _x.obstacles.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.obstacles.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.obstacles.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.obstacles.height, _x.obstacles.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.obstacles.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.obstacles.is_bigendian, _x.obstacles.point_step, _x.obstacles.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.obstacles.is_bigendian = bool(self.obstacles.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.obstacles.data = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.obstacles.is_dense, _x.people.header.seq, _x.people.header.stamp.secs, _x.people.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.obstacles.is_dense = bool(self.obstacles.is_dense)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.people.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.people.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.people.size,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.people.personPoses = []
      for i in range(0, length):
        val1 = upo_msgs.msg.PersonPoseUPO()
        _v13 = val1.header
        start = end
        end += 4
        (_v13.seq,) = _get_struct_I().unpack(str[start:end])
        _v14 = _v13.stamp
        _x = _v14
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.frame_id = str[start:end].decode('utf-8')
        else:
          _v13.frame_id = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.id, _x.vel,) = _get_struct_Id().unpack(str[start:end])
        _v15 = val1.position
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.orientation
        _x = _v16
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.people.personPoses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.goal.header.seq, _x.goal.header.stamp.secs, _x.goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.goal.pose.position.x, _x.goal.pose.position.y, _x.goal.pose.position.z, _x.goal.pose.orientation.x, _x.goal.pose.orientation.y, _x.goal.pose.orientation.z, _x.goal.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_IBI = None
def _get_struct_IBI():
    global _struct_IBI
    if _struct_IBI is None:
        _struct_IBI = struct.Struct("<IBI")
    return _struct_IBI
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_Id = None
def _get_struct_Id():
    global _struct_Id
    if _struct_Id is None:
        _struct_Id = struct.Struct("<Id")
    return _struct_Id
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
_struct_B2I = None
def _get_struct_B2I():
    global _struct_B2I
    if _struct_B2I is None:
        _struct_B2I = struct.Struct("<B2I")
    return _struct_B2I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navigation_features/SetScenarioResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetScenarioResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "navigation_features/SetScenarioResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetScenarioResponse, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class SetScenario(object):
  _type          = 'navigation_features/SetScenario'
  _md5sum = 'd1a8c49e0969fcedfee28e334b2ff779'
  _request_class  = SetScenarioRequest
  _response_class = SetScenarioResponse