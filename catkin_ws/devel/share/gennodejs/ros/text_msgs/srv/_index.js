
"use strict";

let int32 = require('./int32.js')
let bn_pose_srv = require('./bn_pose_srv.js')
let pose_state = require('./pose_state.js')
let predict_switch = require('./predict_switch.js')
let object_only = require('./object_only.js')
let text_recognize_srv = require('./text_recognize_srv.js')
let manipulation = require('./manipulation.js')
let text_detection_srv = require('./text_detection_srv.js')

module.exports = {
  int32: int32,
  bn_pose_srv: bn_pose_srv,
  pose_state: pose_state,
  predict_switch: predict_switch,
  object_only: object_only,
  text_recognize_srv: text_recognize_srv,
  manipulation: manipulation,
  text_detection_srv: text_detection_srv,
};
