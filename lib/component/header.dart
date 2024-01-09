import 'package:flutter/material.dart';
 

import '../contant/responsive.dart';
import '../contant/text_style.dart';

class BuildHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const BuildHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            text: title,
            style: textStyle(
                color: Colors.tealAccent,
                fontsize: ResponsiveWidget.isSmallScreen(context)
                    ? 14
                    : (ResponsiveWidget.isMediumScreen(context) ? 18 : 20),
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: '\n  $subtitle',
                style: textStyle(
                    color: Colors.white,
                    fontsize: ResponsiveWidget.isSmallScreen(context)
                        ? 18
                        : (ResponsiveWidget.isMediumScreen(context) ? 25 : 30),
                    fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
