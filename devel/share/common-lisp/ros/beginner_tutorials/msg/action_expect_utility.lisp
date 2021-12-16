; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude action_expect_utility.msg.html

(cl:defclass <action_expect_utility> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (keep
    :reader keep
    :initarg :keep
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0))
)

(cl:defclass action_expect_utility (<action_expect_utility>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_expect_utility>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_expect_utility)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<action_expect_utility> is deprecated: use beginner_tutorials-msg:action_expect_utility instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <action_expect_utility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:left-val is deprecated.  Use beginner_tutorials-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'keep-val :lambda-list '(m))
(cl:defmethod keep-val ((m <action_expect_utility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:keep-val is deprecated.  Use beginner_tutorials-msg:keep instead.")
  (keep m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <action_expect_utility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:right-val is deprecated.  Use beginner_tutorials-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_expect_utility>) ostream)
  "Serializes a message object of type '<action_expect_utility>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'keep))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_expect_utility>) istream)
  "Deserializes a message object of type '<action_expect_utility>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'keep) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_expect_utility>)))
  "Returns string type for a message object of type '<action_expect_utility>"
  "beginner_tutorials/action_expect_utility")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_expect_utility)))
  "Returns string type for a message object of type 'action_expect_utility"
  "beginner_tutorials/action_expect_utility")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_expect_utility>)))
  "Returns md5sum for a message object of type '<action_expect_utility>"
  "bc73d065c693724e659082147922a7dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_expect_utility)))
  "Returns md5sum for a message object of type 'action_expect_utility"
  "bc73d065c693724e659082147922a7dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_expect_utility>)))
  "Returns full string definition for message of type '<action_expect_utility>"
  (cl:format cl:nil "float32 left~%float32 keep~%float32 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_expect_utility)))
  "Returns full string definition for message of type 'action_expect_utility"
  (cl:format cl:nil "float32 left~%float32 keep~%float32 right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_expect_utility>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_expect_utility>))
  "Converts a ROS message object to a list"
  (cl:list 'action_expect_utility
    (cl:cons ':left (left msg))
    (cl:cons ':keep (keep msg))
    (cl:cons ':right (right msg))
))
