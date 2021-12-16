;; Auto-generated. Do not edit!


(when (boundp 'carla_drive_with_uncertainty_msgs::ObstacleArray)
  (if (not (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS"))
    (make-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS"))
  (shadow 'ObstacleArray (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS")))
(unless (find-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS::OBSTACLEARRAY")
  (make-package "CARLA_DRIVE_WITH_UNCERTAINTY_MSGS::OBSTACLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObstacleArray.msg.html


(defclass carla_drive_with_uncertainty_msgs::ObstacleArray
  :super ros::object
  :slots (_obstacles ))

(defmethod carla_drive_with_uncertainty_msgs::ObstacleArray
  (:init
   (&key
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance carla_drive_with_uncertainty_msgs::Obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; carla_drive_with_uncertainty_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; carla_drive_with_uncertainty_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; carla_drive_with_uncertainty_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance carla_drive_with_uncertainty_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get carla_drive_with_uncertainty_msgs::ObstacleArray :md5sum-) "3481daa31f9f2166d0ff402bba1666c6")
(setf (get carla_drive_with_uncertainty_msgs::ObstacleArray :datatype-) "carla_drive_with_uncertainty_msgs/ObstacleArray")
(setf (get carla_drive_with_uncertainty_msgs::ObstacleArray :definition-)
      "Obstacle[] obstacles # 保存目标检测到的障碍物信息
================================================================================
MSG: carla_drive_with_uncertainty_msgs/Obstacle
float64 x       # x坐标
float64 y       # y坐标
float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l
float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w
float64 yaw        # 偏航角 [-pi, pi]
")



(provide :carla_drive_with_uncertainty_msgs/ObstacleArray "3481daa31f9f2166d0ff402bba1666c6")


