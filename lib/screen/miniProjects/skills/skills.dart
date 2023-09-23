import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../consts/data.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      skills.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeff0e0),
                            border: Border.all(color: skills[index].colorS)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              skills[index].skillName,
                              style: GoogleFonts.openSans(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            // skills[index].iconPath != null
                            //     ? Padding(
                            //         padding: const EdgeInsets.only(left: 10),
                            //         child: SvgPicture.asset(
                            //           "assets/icons/flutter.svg",
                            //           height: 20,
                            //         ))
                            //     : Container()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Languages",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      languages.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffeff0e0),
                            border: Border.all(color: languages[index].colorS)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              languages[index].skillName,
                              style: GoogleFonts.inter(fontSize: 14),
                            ),
                            languages[index].iconPath != null
                                ? const Icon(Icons.flutter_dash)
                                : Container()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
