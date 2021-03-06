;; Auto-generated. Do not edit!


(when (boundp 'kinova_msgs::SetFingersPositionFeedback)
  (if (not (find-package "KINOVA_MSGS"))
    (make-package "KINOVA_MSGS"))
  (shadow 'SetFingersPositionFeedback (find-package "KINOVA_MSGS")))
(unless (find-package "KINOVA_MSGS::SETFINGERSPOSITIONFEEDBACK")
  (make-package "KINOVA_MSGS::SETFINGERSPOSITIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude SetFingersPositionFeedback.msg.html


(defclass kinova_msgs::SetFingersPositionFeedback
  :super ros::object
  :slots (_fingers ))

(defmethod kinova_msgs::SetFingersPositionFeedback
  (:init
   (&key
    ((:fingers __fingers) (instance kinova_msgs::FingerPosition :init))
    )
   (send-super :init)
   (setq _fingers __fingers)
   self)
  (:fingers
   (&rest __fingers)
   (if (keywordp (car __fingers))
       (send* _fingers __fingers)
     (progn
       (if __fingers (setq _fingers (car __fingers)))
       _fingers)))
  (:serialization-length
   ()
   (+
    ;; kinova_msgs/FingerPosition _fingers
    (send _fingers :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kinova_msgs/FingerPosition _fingers
       (send _fingers :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kinova_msgs/FingerPosition _fingers
     (send _fingers :deserialize buf ptr-) (incf ptr- (send _fingers :serialization-length))
   ;;
   self)
  )

(setf (get kinova_msgs::SetFingersPositionFeedback :md5sum-) "bdbf88b45be6ef8cd65f0b4fc487d49d")
(setf (get kinova_msgs::SetFingersPositionFeedback :datatype-) "kinova_msgs/SetFingersPositionFeedback")
(setf (get kinova_msgs::SetFingersPositionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback message
FingerPosition fingers


================================================================================
MSG: kinova_msgs/FingerPosition
float32 finger1
float32 finger2
float32 finger3

")



(provide :kinova_msgs/SetFingersPositionFeedback "bdbf88b45be6ef8cd65f0b4fc487d49d")


