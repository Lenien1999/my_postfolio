import 'package:aminu_olamide_postfolio/contant/responsive.dart';
import 'package:flutter/material.dart';

class BuildSocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpress;
  const BuildSocialButton({
    super.key,
    required this.icon, required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Expanded(
            child: InkWell(
              onTap: onpress,
              child: Icon(
                icon,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        : InkWell(
          onTap: onpress,
          child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
        );
  }
}
