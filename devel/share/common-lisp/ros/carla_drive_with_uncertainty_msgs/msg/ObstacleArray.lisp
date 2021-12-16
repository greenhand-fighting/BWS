; Auto-generated. Do not edit!


(cl:in-package carla_drive_with_uncertainty_msgs-msg)


;//! \htmlinclude ObstacleArray.msg.html

(cl:defclass <ObstacleArray> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector carla_drive_with_uncertainty_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'carla_drive_with_uncertainty_msgs-msg:Obstacle :initial-element (cl:make-instance 'carla_drive_with_uncertainty_msgs-msg:Obstacle))))
)

(cl:defclass ObstacleArray (<ObstacleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_drive_with_uncertainty_msgs-msg:<ObstacleArray> is deprecated: use carla_drive_with_uncertainty_msgs-msg:ObstacleArray instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <ObstacleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_drive_with_uncertainty_msgs-msg:obstacles-val is deprecated.  Use carla_drive_with_uncertainty_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleArray>) ostream)
  "Serializes a message object of type '<ObstacleArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleArray>) istream)
  "Deserializes a message object of type '<ObstacleArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'carla_drive_with_uncertainty_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleArray>)))
  "Returns string type for a message object of type '<ObstacleArray>"
  "carla_drive_with_uncertainty_msgs/ObstacleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleArray)))
  "Returns string type for a message object of type 'ObstacleArray"
  "carla_drive_with_uncertainty_msgs/ObstacleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleArray>)))
  "Returns md5sum for a message object of type '<ObstacleArray>"
  "3481daa31f9f2166d0ff402bba1666c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleArray)))
  "Returns md5sum for a message object of type 'ObstacleArray"
  "3481daa31f9f2166d0ff402bba1666c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleArray>)))
  "Returns full string definition for message of type '<ObstacleArray>"
  (cl:format cl:nil "Obstacle[] obstacles # 保存目标检测到的障碍物信息~%================================================================================~%MSG: carla_drive_with_uncertainty_msgs/Obstacle~%float64 x       # x坐标~%float64 y       # y坐标~%float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l~%float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w~%float64 yaw        # 偏航角 [-pi, pi]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleArray)))
  "Returns full string definition for message of type 'ObstacleArray"
  (cl:format cl:nil "Obstacle[] obstacles # 保存目标检测到的障碍物信息~%================================================================================~%MSG: carla_drive_with_uncertainty_msgs/Obstacle~%float64 x       # x坐标~%float64 y       # y坐标~%float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l~%float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w~%float64 yaw        # 偏航角 [-pi, pi]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleArray
    (cl:cons ':obstacles (obstacles msg))
))
