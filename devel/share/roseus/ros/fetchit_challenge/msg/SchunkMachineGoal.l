;; Auto-generated. Do not edit!


(when (boundp 'fetchit_challenge::SchunkMachineGoal)
  (if (not (find-package "FETCHIT_CHALLENGE"))
    (make-package "FETCHIT_CHALLENGE"))
  (shadow 'SchunkMachineGoal (find-package "FETCHIT_CHALLENGE")))
(unless (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL")
  (make-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))

(in-package "ROS")
;;//! \htmlinclude SchunkMachineGoal.msg.html


(intern "*OPEN*" (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(shadow '*OPEN* (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(defconstant fetchit_challenge::SchunkMachineGoal::*OPEN* 0)
(intern "*CLOSE*" (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(shadow '*CLOSE* (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(defconstant fetchit_challenge::SchunkMachineGoal::*CLOSE* 1)
(intern "*START_OPERATION*" (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(shadow '*START_OPERATION* (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(defconstant fetchit_challenge::SchunkMachineGoal::*START_OPERATION* 2)
(intern "*END_OPERATION*" (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(shadow '*END_OPERATION* (find-package "FETCHIT_CHALLENGE::SCHUNKMACHINEGOAL"))
(defconstant fetchit_challenge::SchunkMachineGoal::*END_OPERATION* 3)
(defclass fetchit_challenge::SchunkMachineGoal
  :super ros::object
  :slots (_state ))

(defmethod fetchit_challenge::SchunkMachineGoal
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fetchit_challenge::SchunkMachineGoal :md5sum-) "9074e47af1bcfb0750a3fc3714bddb62")
(setf (get fetchit_challenge::SchunkMachineGoal :datatype-) "fetchit_challenge/SchunkMachineGoal")
(setf (get fetchit_challenge::SchunkMachineGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint32 OPEN=0
uint32 CLOSE=1
uint32 START_OPERATION=2
uint32 END_OPERATION=3
uint32 state 

")



(provide :fetchit_challenge/SchunkMachineGoal "9074e47af1bcfb0750a3fc3714bddb62")

