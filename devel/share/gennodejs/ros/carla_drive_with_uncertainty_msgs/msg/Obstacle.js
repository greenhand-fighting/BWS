// Auto-generated. Do not edit!

// (in-package carla_drive_with_uncertainty_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.long_axis = null;
      this.short_axis = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('long_axis')) {
        this.long_axis = initObj.long_axis
      }
      else {
        this.long_axis = 0.0;
      }
      if (initObj.hasOwnProperty('short_axis')) {
        this.short_axis = initObj.short_axis
      }
      else {
        this.short_axis = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [long_axis]
    bufferOffset = _serializer.float64(obj.long_axis, buffer, bufferOffset);
    // Serialize message field [short_axis]
    bufferOffset = _serializer.float64(obj.short_axis, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [long_axis]
    data.long_axis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [short_axis]
    data.short_axis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_drive_with_uncertainty_msgs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5208396b6c2c2f9a292697eb0d59ba0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x       # x坐标
    float64 y       # y坐标
    float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l
    float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w
    float64 yaw        # 偏航角 [-pi, pi]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.long_axis !== undefined) {
      resolved.long_axis = msg.long_axis;
    }
    else {
      resolved.long_axis = 0.0
    }

    if (msg.short_axis !== undefined) {
      resolved.short_axis = msg.short_axis;
    }
    else {
      resolved.short_axis = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = Obstacle;
