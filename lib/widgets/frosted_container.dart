import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedWidget extends StatelessWidget {
  final void Function()? onPressed;

  final Widget childW;
  final double height;
  final double width;
  const FrostedWidget({
    super.key,
    this.height = 150,
    this.width = 200,
    required this.childW,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Material(
        type: MaterialType.transparency,
        child: GestureDetector(
          onTap: onPressed,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 7,
                      sigmaY: 7,
                    ),
                    child: SizedBox(
                      height: height,
                      width: width,
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.2)
                          ],
                          stops: const [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: childW,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
