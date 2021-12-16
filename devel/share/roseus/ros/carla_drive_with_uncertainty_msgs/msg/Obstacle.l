;; Auto-generated. Do not edit!


(when (boundp 'carla_drive_with_uncertainty_msgs::Obstacle)
  (if (not (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS"))
    (make-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS"))
  (shadow 'Obstacle (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS")))
(unless (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS::OBSTACLE")
  (make-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass carla_drive_with_uncertainty_msgs::Obstacle
  :super ros::object
  :slots (_x _y _long_axis _short_axis _yaw ))

(defmethod carla_drive_with_uncertainty_msgs::Obstacle
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:long_axis __long_axis) 0.0)
    ((:short_axis __short_axis) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _long_axis (float __long_axis))
   (setq _short_axis (float __short_axis))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:long_axis
   (&optional __long_axis)
   (if __long_axis (setq _long_axis __long_axis)) _long_axis)
  (:short_axis
   (&optional __short_axis)
   (if __short_axis (setq _short_axis __short_axis)) _short_axis)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _long_axis
    8
    ;; float64 _short_axis
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _long_axis
       (sys::poke _long_axis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _short_axis
       (sys::poke _short_axis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _long_axis
     (setq _long_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _short_axis
     (setq _short_axis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get carla_drive_with_uncertainty_msgs::Obstacle :md5sum-) "5208396b6c2c2f9a292697eb0d59ba0b")
(setf (get carla_drive_with_uncertainty_msgs::Obstacle :datatype-) "carla_drive_with_uncertainty_msgs/Obstacle")
(setf (get carla_drive_with_uncertainty_msgs::Obstacle :definition-)
      "float64 x       # x坐标
float64 y       # y坐标
float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l
float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w
float64 yaw        # 偏航角 [-pi, pi]
")



(provide :carla_drive_with_uncertainty_msgs/Obstacle "5208396b6c2c2f9a292697eb0d59ba0b")


