import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String skill;
  final double level;
  const SkillWidget({required this.level, required this.skill, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        const SizedBox(height: 5),
        LinearProgressIndicator(
            value: level,
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            color: Colors.deepPurple),
        const SizedBox(height: 10),
      ],
    );
  }
}
