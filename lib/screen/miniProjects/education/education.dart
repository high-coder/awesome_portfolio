import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../consts/data.dart';
import '../../../models/experience_model.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // const SizedBox(
          //   height: 20,
          // ),
          const Center(
            child: Icon(
              Icons.auto_stories_rounded,
              size: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(education.length, (index) {
            JobExperience experience = education[index];
            return ExpansionTile(
              tilePadding: const EdgeInsets.all(20),
              childrenPadding: const EdgeInsets.all(10),
              leading: Container(
                width: 2,
                height: 100,
                color: experience.color,
              ),
              title: Text(
                experience.title,
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  '${experience.company}\n${experience.startDate} - ${experience.endDate} | ${experience.location}',
                  style: GoogleFonts.inter(fontSize: 13, color: Colors.grey),
                ),
              ),
              children: experience.bulletPoints.map((bulletPoint) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  // leading: const Icon(Icons.arrow_right),
                  // title: Text(bulletPoint),
                  // contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  // leading: Container(
                  //   width: 5,
                  //   height: 5,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(100),
                  //       color: Colors.black),
                  // ),
                  title: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          bulletPoint,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          })
        ],
      ),
    );
  }
}
