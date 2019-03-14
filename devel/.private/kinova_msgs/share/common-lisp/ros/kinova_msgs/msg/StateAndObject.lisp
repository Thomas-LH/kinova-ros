; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-msg)


;//! \htmlinclude StateAndObject.msg.html

(cl:defclass <StateAndObject> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (object_pose
    :reader object_pose
    :initarg :object_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (object_size
    :reader object_size
    :initarg :object_size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass StateAndObject (<StateAndObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateAndObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateAndObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-msg:<StateAndObject> is deprecated: use kinova_msgs-msg:StateAndObject instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StateAndObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:status-val is deprecated.  Use kinova_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'object_pose-val :lambda-list '(m))
(cl:defmethod object_pose-val ((m <StateAndObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:object_pose-val is deprecated.  Use kinova_msgs-msg:object_pose instead.")
  (object_pose m))

(cl:ensure-generic-function 'object_size-val :lambda-list '(m))
(cl:defmethod object_size-val ((m <StateAndObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:object_size-val is deprecated.  Use kinova_msgs-msg:object_size instead.")
  (object_size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StateAndObject>)))
    "Constants for message type '<StateAndObject>"
  '((:START . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StateAndObject)))
    "Constants for message type 'StateAndObject"
  '((:START . 1)
    (:CANCEL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateAndObject>) ostream)
  "Serializes a message object of type '<StateAndObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateAndObject>) istream)
  "Deserializes a message object of type '<StateAndObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateAndObject>)))
  "Returns string type for a message object of type '<StateAndObject>"
  "kinova_msgs/StateAndObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateAndObject)))
  "Returns string type for a message object of type 'StateAndObject"
  "kinova_msgs/StateAndObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateAndObject>)))
  "Returns md5sum for a message object of type '<StateAndObject>"
  "5483a7f40ced969438c4b266c24fad97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateAndObject)))
  "Returns md5sum for a message object of type 'StateAndObject"
  "5483a7f40ced969438c4b266c24fad97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateAndObject>)))
  "Returns full string definition for message of type '<StateAndObject>"
  (cl:format cl:nil "uint8 status~%uint8 START=1~%uint8 CANCEL=2~%geometry_msgs/PoseStamped object_pose~%geometry_msgs/Point object_size~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateAndObject)))
  "Returns full string definition for message of type 'StateAndObject"
  (cl:format cl:nil "uint8 status~%uint8 START=1~%uint8 CANCEL=2~%geometry_msgs/PoseStamped object_pose~%geometry_msgs/Point object_size~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateAndObject>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateAndObject>))
  "Converts a ROS message object to a list"
  (cl:list 'StateAndObject
    (cl:cons ':status (status msg))
    (cl:cons ':object_pose (object_pose msg))
    (cl:cons ':object_size (object_size msg))
))
