import 'package:flutter/material.dart';
import 'package:flutter_first_project/widget/widget.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple, // توحيد اللون مع الصفحة الرئيسية
        title: const Text("How to Contact Me",
            style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ContactItem(
                icon: Icons.email,
                title: "Email",
                value: "emadehab467@gmail.com"),
            ContactItem(
                icon: Icons.phone, title: "Phone", value: "01227210642"),
            ContactItem(
                icon: Icons.account_circle,
                title: "Username",
                value: "Emad Ehab"),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.home, color: Colors.white),
                label: const Text("Back to Home",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
