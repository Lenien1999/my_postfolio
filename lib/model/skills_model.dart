import 'package:flutter/material.dart';

class SkillsModel {
  final String title;
  final String subtitle;
  final IconData icon;

  SkillsModel(
      {required this.title, required this.subtitle, required this.icon});
}

List<SkillsModel> skillsList = [
  SkillsModel(
      title: 'Mobile Application Developer',
      subtitle: 'Crafting mobile experiences.',
      icon: Icons.mobile_friendly),
  SkillsModel(
      title: 'Web Application Developer',
      subtitle: 'Crafting Web experiences.',
      icon: Icons.web),
  SkillsModel(
      title: 'Microsoft Office',
      subtitle: 'Experieced Microsoft User.',
      icon: Icons.data_saver_off_rounded),
  SkillsModel(
      title: 'CAC EXPERT',
      subtitle: 'Experieced CAC Registrar.',
      icon: Icons.data_saver_off_rounded),
  SkillsModel(
      title: 'Graphic Designer',
      subtitle: 'Experieced Graphic Designer.',
      icon: Icons.grade_sharp),
  SkillsModel(
      title: 'Hire Me',
      subtitle: 'Hired an Experieced Software Engineer.',
      icon: Icons.wallet),
];
