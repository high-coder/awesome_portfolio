import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                // end: Alignment(0, -0.4),
                colors: [Colors.blue, Colors.black45],
              )),
            ),
            SvgPicture.asset(
              "assets/images/cloudyBlue.svg",
              // width: double.infinity,
              height: size.height,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DeviceFrame(
                  device: Devices.ios.iPhone13,
                  screen: const Center(
                    child: Text(
                      "Hello World",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
