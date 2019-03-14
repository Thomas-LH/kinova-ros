;; Auto-generated. Do not edit!


(when (boundp 'kinova_msgs::SensorInfo)
  (if (not (find-package "KINOVA_MSGS"))
    (make-package "KINOVA_MSGS"))
  (shadow 'SensorInfo (find-package "KINOVA_MSGS")))
(unless (find-package "KINOVA_MSGS::SENSORINFO")
  (make-package "KINOVA_MSGS::SENSORINFO"))

(in-package "ROS")
;;//! \htmlinclude SensorInfo.msg.html


(defclass kinova_msgs::SensorInfo
  :super ros::object
  :slots (_voltage _current _actuators_temp _fingers_temp ))

(defmethod kinova_msgs::SensorInfo
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:actuators_temp __actuators_temp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fingers_temp __fingers_temp) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _actuators_temp __actuators_temp)
   (setq _fingers_temp __fingers_temp)
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:actuators_temp
   (&optional __actuators_temp)
   (if __actuators_temp (setq _actuators_temp __actuators_temp)) _actuators_temp)
  (:fingers_temp
   (&optional __fingers_temp)
   (if __fingers_temp (setq _fingers_temp __fingers_temp)) _fingers_temp)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32[] _actuators_temp
    (* 4    (length _actuators_temp)) 4
    ;; float32[] _fingers_temp
    (* 4    (length _fingers_temp)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _actuators_temp
     (write-long (length _actuators_temp) s)
     (dotimes (i (length _actuators_temp))
       (sys::poke (elt _actuators_temp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fingers_temp
     (write-long (length _fingers_temp) s)
     (dotimes (i (length _fingers_temp))
       (sys::poke (elt _fingers_temp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _actuators_temp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuators_temp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuators_temp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fingers_temp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fingers_temp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fingers_temp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get kinova_msgs::SensorInfo :md5sum-) "39a41a97124a62576b248b6253fcf6ea")
(setf (get kinova_msgs::SensorInfo :datatype-) "kinova_msgs/SensorInfo")
(setf (get kinova_msgs::SensorInfo :definition-)
      "float32 voltage
float32 current 
float32[] actuators_temp
float32[] fingers_temp
")



(provide :kinova_msgs/SensorInfo "39a41a97124a62576b248b6253fcf6ea")


