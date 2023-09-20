import 'package:awesome_portfolio/models/deviceModel.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];
