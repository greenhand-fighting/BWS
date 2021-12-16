;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::action_expect_utility)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'action_expect_utility (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ACTION_EXPECT_UTILITY")
  (make-package "BEGINNER_TUTORIALS::ACTION_EXPECT_UTILITY"))

(in-package "ROS")
;;//! \htmlinclude action_expect_utility.msg.html


(defclass beginner_tutorials::action_expect_utility
  :super ros::object
  :slots (_left _keep _right ))

(defmethod beginner_tutorials::action_expect_utility
  (:init
   (&key
    ((:left __left) 0.0)
    ((:keep __keep) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _keep (float __keep))
   (setq _right (float __right))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:keep
   (&optional __keep)
   (if __keep (setq _keep __keep)) _keep)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; float32 _left
    4
    ;; float32 _keep
    4
    ;; float32 _right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _keep
       (sys::poke _keep (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _keep
     (setq _keep (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::action_expect_utility :md5sum-) "bc73d065c693724e659082147922a7dc")
(setf (get beginner_tutorials::action_expect_utility :datatype-) "beginner_tutorials/action_expect_utility")
(setf (get beginner_tutorials::action_expect_utility :definition-)
      "float32 left
float32 keep
float32 right

")



(provide :beginner_tutorials/action_expect_utility "bc73d065c693724e659082147922a7dc")


