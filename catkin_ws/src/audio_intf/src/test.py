#!/usr/bin/env python3
import pyttsx3


if __name__ == '__main__':

    eng = pyttsx3.init()
    eng.say("try it")
    eng.runAndWait()
    print("speech fininsh")