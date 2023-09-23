import 'package:awesome_portfolio/consts/data.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screen/homescreen/phone_home_page.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13;
  String selectedCloud = "assets/images/cloudyBlue.svg";
  Gradient bgGradient = const LinearGradient(
    begin: Alignment.topLeft,
    // end: Alignment(0, -0.4),
    colors: [Colors.blue, Colors.black45],
  );
  int selectedColor = 1; // values can range from 0 to 5
  void changeSelectedDevice(DeviceInfo device) async {
    currentDevice = device;
    notifyListeners();
  }

  bool isMainScreen = true;
  String? title;

  Widget currentScreen = const PhoneHomeScreen();

  void changeGradient(int index) {
    selectedColor = index;
    bgGradient = colorPalette[index].gradient;
    selectedCloud = colorPalette[index].svgPath;
    notifyListeners();
  }

  Future<void> launchInBrowser(String link) async {
    Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print('Could not launch $url');
    }
  }

  void changePhoneScreen(Widget change, bool isMain, {String? titlee}) {
    // curent
    title = titlee;
    currentScreen = change;
    isMainScreen = isMain;
    notifyListeners();
  }
}
