import 'package:awesome_portfolio/consts/data.dart';
import 'package:awesome_portfolio/providers/current_state.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../widgets/frosted_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        FrostedWidget(
                          height: 395,
                          width: 247.5,
                          childW: Center(
                            child: SizedBox(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FrostedWidget(
                          childW: Center(),
                          height: 175.5,
                          width: 245,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height - 100,
                      child: Selector<CurrentState, DeviceInfo>(
                          selector: (context, provider) =>
                              provider.currentDevice,
                          builder: (context, _, __) {
                            return DeviceFrame(
                              device: currentState.currentDevice,
                              screen: const Center(
                                child: Text(
                                  "Hello World",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          }),
                    ),
                    Column(
                      children: [
                        const FrostedWidget(
                          height: 395,
                          width: 247.5,
                          childW: Center(
                            child: SizedBox(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FrostedWidget(
                          width: 247.5,
                          height: 175.5,
                          childW: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Selector<CurrentState, DeviceInfo>(
                    selector: (context, p1) => p1.currentDevice,
                    builder: (context, _, __) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ...List.generate(devices.length, (index) {
                            return CustomButton(
                              pressed: currentState.currentDevice ==
                                      devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                              animate: true,
                              borderRadius: 100,
                              isThreeD: true,
                              backgroundColor: Colors.black,
                              width: 37.5,
                              height: 37.5,
                              onPressed: () {
                                currentState.changeSelectedDevice(
                                    devices[index].device);
                              },
                              child: Center(
                                  child: Icon(devices[index].icon,
                                      color: Colors.white, size: 25)),
                            );
                          })
                        ],
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
