import 'package:flutter/material.dart';

class SocialIconWidget extends StatelessWidget {
 final IconData icon;
  final String url;
  const SocialIconWidget({ required this.icon , required this.url,   super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // يضيف تأثير الضغط للأيقونة
      onTap: () => print(
          "Open: $url"), // عند الضغط، يطبع الرابط (يمكن تغييره لفتح الرابط الفعلي)
      child: CircleAvatar(
        // ويدجت دائرية للأيقونة
        backgroundColor: Colors.deepPurple, // لون خلفية الدائرة
        radius: 25, // نصف القطر (حجم الأيقونة)
        child: Icon(icon, color: Colors.white, size: 28), // الأيقونة بداخلها
      ),
    );
  }
}