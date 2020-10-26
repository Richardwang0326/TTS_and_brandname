#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import roslib
import rospy
import rospkg
#from gtts import gTTS
import pyttsx3
import tempfile
from omxplayer.player import OMXPlayer
from pathlib import Path

from std_msgs.msg import String

# import sounddevice as sd
# import soundfile as sf
# from playsound import playsound

import io
import sys
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

class Speech(object):
    """docstring for Speech."""
    def __init__(self):
        super(Speech, self).__init__()
        
        ## case subscribe
        case_sub = rospy.Subscriber('speech_case', String, self.case_cb, queue_size=1)
        
    def case_cb(self, case_msg):

        case = case_msg.data
        tex = case
        rospy.loginfo(tex)
        eng = pyttsx3.init()
        eng.say("This is {}".format(tex))
        eng.runAndWait()
        rospy.sleep(10)
        print("speech fininsh")

if __name__ == '__main__':
    rospy.init_node('speech_node',anonymous=True)
    sn = Speech()
    rospy.spin()