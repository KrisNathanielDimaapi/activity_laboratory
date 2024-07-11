import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:activity_laboratory/certificate/certification_sliding.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Skills & Certification',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
                HomeSlider(),
                SizedBox(height: 20),
                SkillItem(skill: 'Frontend Developer', proficiency: 80),
                SkillItem(skill: 'Web Developer', proficiency: 70),
                SkillItem(skill: 'UI/UX Design', proficiency: 95),
                SkillItem(skill: 'Leadership', proficiency: 85),
                SkillItem(skill: 'Decision-making', proficiency: 75),
                SkillItem(skill: 'Problem-Solving', proficiency: 90),
                // Add more skills as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;
  final int proficiency;

  const SkillItem({required this.skill, required this.proficiency, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              skill,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          const SizedBox(width: 16.0),
          LinearPercentIndicator(
            width: 150.0,
            lineHeight: 30.0,
            percent: proficiency / 100,
            backgroundColor: Colors.grey[300]!,
            progressColor: const Color.fromARGB(255, 208, 33, 243),
            center: Text(
              '$proficiency%',
              style: const TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
