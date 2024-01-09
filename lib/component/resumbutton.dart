import 'package:flutter/material.dart';

import '../contant/text_style.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            side: const BorderSide(color: Colors.white, width: 2)),
        onPressed: () {},
        child: Text(
          'Resume',
          style: textStyle(
              color: Colors.white, fontsize: 14, fontWeight: FontWeight.w500),
        ));
  }
}
