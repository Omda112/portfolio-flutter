import 'package:flutter/material.dart';
import 'package:flutter_first_project/screen/contact_screen.dart';
import 'package:flutter_first_project/widget/skill_widget.dart';
import 'package:flutter_first_project/widget/social_icon_widget.dart';
import 'package:flutter_first_project/widget/title_widgte.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hey, I am Emad Ehab",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("Full Stack Developer | MERN & Flutter",
                style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 20),
            TitleWidget(title: "About Me"),
            const Text(
              "I am a passionate full-stack developer specializing in MERN and Flutter. "
              "I love solving problems and building scalable applications that enhance user experience.",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TitleWidget(title: "Skills"),
            SkillWidget(skill: "Flutter", level: 0.9),
            SkillWidget(skill: "React.js", level: 0.85),
            SkillWidget(skill: "Node.js", level: 0.8),
            const SizedBox(height: 20),
            TitleWidget(title: "Connect with me"),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialIconWidget(
                    icon: Icons.code,
                    url: "https://github.com"), // 🔹 أيقونة للـ GitHub
                const SizedBox(width: 15),
                SocialIconWidget(
                    icon: Icons.business,
                    url: "https://linkedin.com"), // 🔹 أيقونة للـ LinkedIn
                const SizedBox(width: 15),
                SocialIconWidget(
                    icon: Icons.email,
                    url: "mailto:your@email.com"), // 🔹 أيقونة البريد
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactScreen(),
                  ),
                );
              },
              child: const Text("Contact Me"),
            ),
          ],
        ),
      ),
    );
  }
}
