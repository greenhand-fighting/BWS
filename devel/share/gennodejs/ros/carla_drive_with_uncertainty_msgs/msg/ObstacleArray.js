// Auto-generated. Do not edit!

// (in-package carla_drive_with_uncertainty_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');

//-----------------------------------------------------------

class ObstacleArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleArray
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleArray
    let len;
    let data = new ObstacleArray(null);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.obstacles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_drive_with_uncertainty_msgs/ObstacleArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3481daa31f9f2166d0ff402bba1666c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Obstacle[] obstacles # 保存目标检测到的障碍物信息
    ================================================================================
    MSG: carla_drive_with_uncertainty_msgs/Obstacle
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
    const resolved = new ObstacleArray(null);
    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = Obstacle.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    return resolved;
    }
};

module.exports = ObstacleArray;
