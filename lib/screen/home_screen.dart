import 'package:flutter/material.dart';

import '../component/custom_drawer.dart';
import '../component/header.dart';
import '../component/menu_item.dart';
import '../component/profile_pic.dart';
import '../contant/color_library.dart';

import '../contant/responsive.dart';
import '../contant/text_style.dart';
import 'project-grid.dart';
import 'screen_bio.dart';
import 'skill_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: backgroundColor,
        drawer: const CustomDrawer(),
        body: MenuItem(
          screenSize: screenSize,
          scaffoldKey: scaffoldKey,
          pages: [
            const ResponsiveWidget(
                largeScreen: BuildBioLargeScreen(),
                mediumScreen: BuildBioMediumScreen(),
                smallScreen: BuildBioMediumScreen()),
            ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.tealAccent.shade100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BuildHeader(
                  title: 'What I do',
                  subtitle: 'My Specializations',
                ),
                const SizedBox(
                  height: 15,
                ),
                const BuildSkillsList(),
              ],
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Divider(
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.tealAccent.shade100,
                ),
                const BuildHeader(
                  title: 'About',
                  subtitle: 'Skills & Experience',
                ),
                ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: screenSize.height * 0.2,
                            width: 150,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/profile.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          buildSkillColum()
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: BuildProfilePicture(
                              heigth: screenSize.height * 0.4,
                              width: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: buildSkillColum(),
                            ),
                          )
                        ],
                      ),
              ],
            ),
            ListView(
              children: [
                Divider(
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.tealAccent.shade100,
                ),
                const SizedBox(
                  height: 8,
                ),
                const BuildHeader(
                  title: 'Recent Work',
                  subtitle: 'Showcasing My Projects',
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildProjectGrid()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildSkillColum() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Skills',
            style: textStyle(
                color: Colors.white, fontsize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'Flutter Engineer',
              subtitle: 'Intermediate Flutter Developer',
              icon: Icons.flutter_dash),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'Web Designer',
              subtitle: 'Website Developer',
              icon: Icons.web),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'Software Engineer',
              subtitle: 'Certified Software Engineer',
              icon: Icons.app_registration_sharp),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Education  and Experience',
            style: textStyle(
                color: Colors.white, fontsize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'BSc Software Engineering',
              subtitle: 'First Technical University, Ibadan',
              icon: Icons.cast_for_education),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'ICT UNIT, First Technical University',
              subtitle: 'Intern',
              icon: Icons.web),
          const SizedBox(
            height: 7,
          ),
          skillsWidget(
              title: 'Police College of Information Technology',
              subtitle: 'IT Support & ICT Instructor',
              icon: Icons.computer_sharp)
        ],
      ),
    );
  }

  ListTile skillsWidget(
      {required String title,
      required String subtitle,
      required IconData icon}) {
    return ListTile(
      leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal,
          child: Icon(
            icon,
            color: Colors.white,
          )),
      title: Text(
        title,
        style: textStyle(
            color: Colors.white, fontsize: 18, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle,
          style: textStyle(
              color: Colors.teal, fontsize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
