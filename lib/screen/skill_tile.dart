import 'package:flutter/material.dart';
import '../contant/responsive.dart';
import '../model/skills_model.dart';

class BuildSkillsList extends StatelessWidget {
  const BuildSkillsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = ResponsiveWidget.isSmallScreen(context)
        ? 2
        : ResponsiveWidget.isMediumScreen(context)
            ? 3
            : 4;

    return Center(
      child: FractionallySizedBox(
        widthFactor: ResponsiveWidget.isMediumScreen(context)
            ? 0.8
            : ResponsiveWidget.isSmallScreen(context)
                ? 1
                : 0.7,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: skillsList.length,
                itemBuilder: (context, index) {
                  final skills = skillsList[index];
                  return SizedBox(
                    height: 120, // Set a fixed height for each container
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      child: Card(
                        color: Colors.teal,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                skills.icon,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              skills.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.tealAccent,
                                fontSize: ResponsiveWidget.isSmallScreen(
                                        context)
                                    ? 12
                                    : ResponsiveWidget.isMediumScreen(context)
                                        ? 13
                                        : 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              skills.subtitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Divider(
                              thickness: 0.5,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.tealAccent.shade100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16), // Add extra space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
