; Auto-generated. Do not edit!


(cl:in-package kinova_msgs-msg)


;//! \htmlinclude PoseAndSizeResult.msg.html

(cl:defclass <PoseAndSizeResult> (roslisp-msg-protocol:ros-message)
  ((arm_pose
    :reader arm_pose
    :initarg :arm_pose
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass PoseAndSizeResult (<PoseAndSizeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseAndSizeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseAndSizeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinova_msgs-msg:<PoseAndSizeResult> is deprecated: use kinova_msgs-msg:PoseAndSizeResult instead.")))

(cl:ensure-generic-function 'arm_pose-val :lambda-list '(m))
(cl:defmethod arm_pose-val ((m <PoseAndSizeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinova_msgs-msg:arm_pose-val is deprecated.  Use kinova_msgs-msg:arm_pose instead.")
  (arm_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseAndSizeResult>) ostream)
  "Serializes a message object of type '<PoseAndSizeResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseAndSizeResult>) istream)
  "Deserializes a message object of type '<PoseAndSizeResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseAndSizeResult>)))
  "Returns string type for a message object of type '<PoseAndSizeResult>"
  "kinova_msgs/PoseAndSizeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseAndSizeResult)))
  "Returns string type for a message object of type 'PoseAndSizeResult"
  "kinova_msgs/PoseAndSizeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseAndSizeResult>)))
  "Returns md5sum for a message object of type '<PoseAndSizeResult>"
  "84de4ef9896c1cfa9d91c42b0096dbb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseAndSizeResult)))
  "Returns md5sum for a message object of type 'PoseAndSizeResult"
  "84de4ef9896c1cfa9d91c42b0096dbb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseAndSizeResult>)))
  "Returns full string definition for message of type '<PoseAndSizeResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/PointStamped arm_pose~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseAndSizeResult)))
  "Returns full string definition for message of type 'PoseAndSizeResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%geometry_msgs/PointStamped arm_pose~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseAndSizeResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseAndSizeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseAndSizeResult
    (cl:cons ':arm_pose (arm_pose msg))
))