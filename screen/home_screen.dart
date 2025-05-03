
import 'package:flutter/material.dart';
import 'package:flutter_first_project/widget/widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 800; // responsive

    return Container(
      // بحط ال container عشان هو اللي عنده boxDecoration
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backGround.webp"),
          fit: BoxFit.cover, // عشان الصورة تاخد عرض الشاشة كله
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors
            .transparent, // لو مخليتهاش شفافة هيظهر اللون الابيض الخاص بال scaffold
        appBar: AppBar(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.8),
          title: const Text(
            "Emad EL-Din",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            // خاصية موجودة في ال appBar واللي بيتحط فيها بيكون موجود علي يمينه ولما بضغط عليها بيتنفذ الكلام اللي في ال onPressed
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: isSmallScreen
              ? ListView(
                  children: [
                    ProfileImage(),
                    const SizedBox(
                        height: 20), // بيحط مسافة بين العناصر لما تتعرض بالطول
                    ProfileInfoWidget(),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: ProfileImage()),
                    const SizedBox(width: 20),
                    Expanded(child: ProfileInfoWidget()),
                  ],
                ),
        ),
      ),
    );
  }
}
