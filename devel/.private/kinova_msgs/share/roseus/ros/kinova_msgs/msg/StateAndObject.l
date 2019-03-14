;; Auto-generated. Do not edit!


(when (boundp 'kinova_msgs::StateAndObject)
  (if (not (find-package "KINOVA_MSGS"))
    (make-package "KINOVA_MSGS"))
  (shadow 'StateAndObject (find-package "KINOVA_MSGS")))
(unless (find-package "KINOVA_MSGS::STATEANDOBJECT")
  (make-package "KINOVA_MSGS::STATEANDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude StateAndObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*START*" (find-package "KINOVA_MSGS::STATEANDOBJECT"))
(shadow '*START* (find-package "KINOVA_MSGS::STATEANDOBJECT"))
(defconstant kinova_msgs::StateAndObject::*START* 1)
(intern "*CANCEL*" (find-package "KINOVA_MSGS::STATEANDOBJECT"))
(shadow '*CANCEL* (find-package "KINOVA_MSGS::STATEANDOBJECT"))
(defconstant kinova_msgs::StateAndObject::*CANCEL* 2)
(defclass kinova_msgs::StateAndObject
  :super ros::object
  :slots (_status _object_pose _object_size ))

(defmethod kinova_msgs::StateAndObject
  (:init
   (&key
    ((:status __status) 0)
    ((:object_pose __object_pose) (instance geometry_msgs::PoseStamped :init))
    ((:object_size __object_size) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _object_pose __object_pose)
   (setq _object_size __object_size)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:object_size
   (&rest __object_size)
   (if (keywordp (car __object_size))
       (send* _object_size __object_size)
     (progn
       (if __object_size (setq _object_size (car __object_size)))
       _object_size)))
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; geometry_msgs/PoseStamped _object_pose
    (send _object_pose :serialization-length)
    ;; geometry_msgs/Point _object_size
    (send _object_size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; geometry_msgs/PoseStamped _object_pose
       (send _object_pose :serialize s)
     ;; geometry_msgs/Point _object_size
       (send _object_size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;; geometry_msgs/Point _object_size
     (send _object_size :deserialize buf ptr-) (incf ptr- (send _object_size :serialization-length))
   ;;
   self)
  )

(setf (get kinova_msgs::StateAndObject :md5sum-) "5483a7f40ced969438c4b266c24fad97")
(setf (get kinova_msgs::StateAndObject :datatype-) "kinova_msgs/StateAndObject")
(setf (get kinova_msgs::StateAndObject :definition-)
      "uint8 status
uint8 START=1
uint8 CANCEL=2
geometry_msgs/PoseStamped object_pose
geometry_msgs/Point object_size
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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

")



(provide :kinova_msgs/StateAndObject "5483a7f40ced969438c4b266c24fad97")


