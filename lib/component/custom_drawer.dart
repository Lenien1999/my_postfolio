import 'package:aminu_olamide_postfolio/component/knowledge.dart';
import 'package:flutter/material.dart';



import '../contant/color_library.dart';
import '../contant/text_style.dart';
import 'my_skills.dart';
import 'profile_pic.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const BuildCircleDP(
                        radius: 40,
                      ),
                      const SizedBox(
                        height: 20 / 4,
                      ),
                      Text(
                        'Azeez Aminu Olamide',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20 / 4,
                      ),
                      Text(
                        'Flutter Developer & The Student of\nSoftware Engineering',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                                fontWeight: FontWeight.w200, height: 1.5)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const AreaInfoText(title: 'Contact', text: '07015086188'),
            const AreaInfoText(title: 'Email', text: 'aminuazeez31@gmail.com'),
            const AreaInfoText(title: 'Linkdlin', text: '@Aminullah Abdulzeez'),
            const AreaInfoText(title: 'GitHub', text: 'Lenien1999'),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const MySKills(),
            const Divider(),
            const Knowledges()
          ],
        ),
      ),
    );
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 3, bottom: 20 / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text,
            style: textStyle(
                color: Colors.white, fontsize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
