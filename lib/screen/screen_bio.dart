import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../component/profile_pic.dart';
import '../contant/responsive.dart';
import '../contant/social_button.dart';
import '../contant/text_style.dart';

class BuildBioLargeScreen extends StatelessWidget {
  const BuildBioLargeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 3,
            blurRadius: 2,
          )
        ], borderRadius: BorderRadius.circular(12), color: Colors.teal),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, I am',
                    style: textStyle(
                            color: Colors.white,
                            fontsize: 15,
                            fontWeight: FontWeight.w600)
                        .copyWith(letterSpacing: 2),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Azeez Aminu Olamide',
                      style: textStyle(
                              color: Colors.white,
                              fontsize: 35,
                              fontWeight: FontWeight.bold)
                          .copyWith(letterSpacing: 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        'Software Engineer and Mobile Application Developer',
                        style: textStyle(
                            color: const Color.fromRGBO(31, 47, 98, 1),
                            fontsize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Expanded(
                      child: Text(
                          """A skilled Software Engineer that specialized in the creative design and development of Mobile application using flutter and an experienced website designer whose expertise beyond measure, you can contact me at any time to start a work full of creativity and good performance""",
                          softWrap: true,
                          style: textStyle(
                              color: Colors.white,
                              fontsize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SocialLink()
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: BuildCircleDP(
                radius: 85,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildBioMediumScreen extends StatelessWidget {
  const BuildBioMediumScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          // height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 3,
              blurRadius: 2,
            )
          ], borderRadius: BorderRadius.circular(12), color: Colors.teal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: BuildCircleDP(
                  radius: 85,
                ),
              ),
              Text(
                'Hello, I am',
                style: textStyle(
                        color: Colors.white,
                        fontsize:
                            ResponsiveWidget.isSmallScreen(context) ? 10 : 15,
                        fontWeight: FontWeight.w600)
                    .copyWith(letterSpacing: 2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Azeez Aminu Olamide',
                      style: textStyle(
                              color: Colors.white,
                              fontsize: 20,
                              fontWeight: FontWeight.bold)
                          .copyWith(letterSpacing: 2),
                    ),
                    Text('Software Engineer and Mobile Application Developer',
                        style: textStyle(
                            color: const Color.fromRGBO(31, 47, 98, 1),
                            fontsize: ResponsiveWidget.isSmallScreen(context)
                                ? 13
                                : 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: ResponsiveWidget.isSmallScreen(context) ? 4 : 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Text(
                            """A skilled Software Engineer that specialized in the creative design and development of Mobile application using flutter and an experienced website designer whose expertise beyond measure, you can contact me at any time to start a work full of creativity and good performance""",
                            softWrap: true,
                            style: textStyle(
                                color: Colors.white,
                                fontsize: 13,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
              ),
              const SocialLink()
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildSocialButton(
          icon: Icons.facebook_outlined,
          onpress: () {
            launchUrl(Uri.parse('launchUrl(Uri.parse()) '));
          },
        ),
        const SizedBox(
          width: 7,
        ),
        BuildSocialButton(
          icon: FontAwesomeIcons.github,
          onpress: () {
            launchUrl(Uri.parse('https://github.com/Lenien1999'));
          },
        ),
        const SizedBox(
          width: 7,
        ),
        BuildSocialButton(
          icon: FontAwesomeIcons.linkedin,
          onpress: () {
            launchUrl(Uri.parse(
                'https://www.linkedin.com/in/aminullah-abdul-azeez-174630222?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'));
          },
        ),
        const SizedBox(
          width: 7,
        ),
        BuildSocialButton(
          icon: FontAwesomeIcons.whatsapp,
          onpress: () {
            launchUrl(Uri.parse('https://wa.me/+2347015086188'));
          },
        )
      ],
    );
  }
}
