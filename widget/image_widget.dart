import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  bool isImage1 = true;

  void _changeImage() {
    setState(() {
      isImage1 = !isImage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeImage, // ✅ تغيير الصورة عند الضغط
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
            isImage1 ? "assets/profile.jpg" : "assets/profile2.jpg",
            fit: BoxFit.cover),
      ),
    );
  }
}
