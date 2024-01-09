import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../contant/text_style.dart';


class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart,HTML,CSS, Python'),
        KnowledgeText(knowledge: 'Microsoft Office'),
        KnowledgeText(knowledge: 'Web Design'),
        KnowledgeText(knowledge: 'Business Name Registration'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20 / 2),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.check,
            color: Colors.teal,
          ),
          const SizedBox(
            width: 20 / 2,
          ),
          Text(
            knowledge,
            style: textStyle(
                color: Colors.white, fontsize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
