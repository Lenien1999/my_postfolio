import 'package:flutter/material.dart';

import '../contant/image_library.dart';

class BuildProfilePicture extends StatelessWidget {
  final double heigth;
  final double width;
  const BuildProfilePicture({
    super.key,
    required this.heigth,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: Image.asset(
        imgeUrl,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

class BuildCircleDP extends StatelessWidget {
  final double radius;
  const BuildCircleDP({
    super.key, required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // Border color
          width: 3, // Border width
        ),
      ),
      child:   CircleAvatar(
        radius: radius,
        backgroundColor: Colors.teal,
        backgroundImage: const AssetImage(imgeUrl),
      ),
    );
  }
}
