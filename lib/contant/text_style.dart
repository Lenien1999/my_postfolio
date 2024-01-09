import 'package:flutter/material.dart';

TextStyle textStyle({required Color color, required double fontsize, required FontWeight fontWeight}) {
  return TextStyle(
    fontSize: fontsize, fontWeight: fontWeight,
    color: color,
  );
}




// import 'package:flutter/material.dart';
// import 'package:my_postfolio/contant/responsive.dart';
// import 'package:my_postfolio/contant/text_style.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromRGBO(31, 47, 98, 1),
//         appBar: ResponsiveWidget.isSmallScreen(context)
//             ? AppBar()
//             : PreferredSize(
//                 preferredSize: Size(screenSize.width, 1000),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             buildMenuItem(title: 'Home', onpress: () {}),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             buildMenuItem(title: 'Service', onpress: () {}),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             buildMenuItem(title: 'About', onpress: () {}),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             buildMenuItem(title: 'Contact', onpress: () {}),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                           ],
//                         ),
//                       ),
//                       OutlinedButton(
//                           style: ElevatedButton.styleFrom(
//                               shadowColor: Colors.black,
//                               side: const BorderSide(
//                                   color: Colors.white, width: 2)),
//                           onPressed: () {},
//                           child: Text(
//                             'Resume',
//                             style: textStyle(
//                                 color: Colors.white,
//                                 fontsize: 14,
//                                 fontWeight: FontWeight.w500),
//                           ))
//                     ],
//                   ),
//                 ),
//               ),
//         drawer: const Drawer(),
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(15),
//             child: const Column(
//               children: [
//                 ResponsiveWidget(
//                     largeScreen: BuildBioLargeScreen(),
//                     mediumScreen: BuildBioMediumScreen(),
//                     smallScreen: BuildBioSmallScreen()),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildMenuItem({required String title, required VoidCallback onpress}) {
//     return SizedBox(
//       width: 100,
//       child: TextButton(
//           onPressed: onpress,
//           child: Text(
//             title,
//             style: const TextStyle(
//                 fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//           )),
//     );
//   }
// }

// class BuildBioLargeScreen extends StatelessWidget {
//   const BuildBioLargeScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(15),
//           margin: const EdgeInsets.all(30),
//           width: MediaQuery.of(context).size.width * 0.4,
//           decoration: BoxDecoration(
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.white,
//                   spreadRadius: 3,
//                   blurRadius: 2,
//                 )
//               ],
//               borderRadius: BorderRadius.circular(12),
//               color: const Color.fromARGB(255, 151, 219, 213)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hello, I am',
//                 style: textStyle(
//                         color: Colors.white,
//                         fontsize: 15,
//                         fontWeight: FontWeight.w600)
//                     .copyWith(letterSpacing: 2),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   'Azeez Aminu Olamide',
//                   style: textStyle(
//                           color: Colors.white,
//                           fontsize: 35,
//                           fontWeight: FontWeight.bold)
//                       .copyWith(letterSpacing: 2),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                     'Software Engineer and Mobile Application Developer',
//                     style: textStyle(
//                         color: const Color.fromRGBO(31, 47, 98, 1),
//                         fontsize: 20,
//                         fontWeight: FontWeight.bold)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, right: 10),
//                 child: Expanded(
//                   child: Text(
//                       """A skilled Software Engineer that specialized in the creative design and development of Mobile application using flutter and an experienced website designer whose expertise beyond measure, you can contact me at any time to start a work full of creativity and good performance""",
//                       softWrap: true,
//                       style: textStyle(
//                           color: Colors.white,
//                           fontsize: 14,
//                           fontWeight: FontWeight.w500)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               const Row(
//                 children: [
//                   BuildSocialButton(
//                     icon: Icons.facebook_outlined,
//                   ),
//                   BuildSocialButton(
//                     icon: Icons.facebook_outlined,
//                   ),
//                   BuildSocialButton(
//                     icon: Icons.facebook_outlined,
//                   ),
//                   BuildSocialButton(
//                     icon: Icons.facebook_outlined,
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(15),
//           child: Image.asset(
//             'assets/images/profile.jpg',
//             fit: BoxFit.cover,
//             height: 280,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class BuildSocialButton extends StatelessWidget {
//   final IconData icon;
//   const BuildSocialButton({
//     super.key,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       style: ElevatedButton.styleFrom(
//           shape: const CircleBorder(),
//           side: const BorderSide(color: Colors.white),
//           padding: const EdgeInsets.all(10)),
//       onPressed: () {},
//       child: Icon(
//         icon,
//         color: const Color.fromRGBO(31, 47, 98, 1),
//         size: 40,
//       ),
//     );
//   }
// }

// class BuildBioSmallScreen extends StatelessWidget {
//   const BuildBioSmallScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       margin: const EdgeInsets.all(30),
//       decoration: BoxDecoration(
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.white,
//               spreadRadius: 3,
//               blurRadius: 2,
//             )
//           ],
//           borderRadius: BorderRadius.circular(12),
//           color: const Color.fromARGB(255, 151, 219, 213)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hello, I am',
//             style: textStyle(
//                     color: Colors.white,
//                     fontsize: 12,
//                     fontWeight: FontWeight.w600)
//                 .copyWith(letterSpacing: 2),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               'Azeez Aminu Olamide',
//               style: textStyle(
//                       color: Colors.white,
//                       fontsize: 20,
//                       fontWeight: FontWeight.bold)
//                   .copyWith(letterSpacing: 2),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text('Software Engineer and Mobile Application Developer',
//                 style: textStyle(
//                     color: const Color.fromRGBO(31, 47, 98, 1),
//                     fontsize: 15,
//                     fontWeight: FontWeight.bold)),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 20, right: 10),
//                     child: Text(
//                         """A skilled Software Engineer that specialized in the creative design and development of Mobile application using flutter and an experienced website designer whose expertise beyond measure, you can contact me at any time to start a work full of creativity and good performance""",
//                         softWrap: true,
//                         style: textStyle(
//                             color: Colors.white,
//                             fontsize: 13,
//                             fontWeight: FontWeight.w500)),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.asset(
//                       'assets/images/profile.jpg',
//                       fit: BoxFit.cover,
//                       height: 180,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           OutlinedButton(
//             style: ElevatedButton.styleFrom(
//                 shape: const CircleBorder(),
//                 side: const BorderSide(color: Colors.white),
//                 padding: const EdgeInsets.all(10)),
//             onPressed: () {},
//             child: const Icon(
//               Icons.facebook_outlined,
//               color: Color.fromRGBO(31, 47, 98, 1),
//               size: 40,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class BuildBioMediumScreen extends StatelessWidget {
//   const BuildBioMediumScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       margin: const EdgeInsets.all(30),
//       decoration: BoxDecoration(
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.white,
//               spreadRadius: 3,
//               blurRadius: 2,
//             )
//           ],
//           borderRadius: BorderRadius.circular(12),
//           color: const Color.fromARGB(255, 151, 219, 213)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hello, I am',
//             style: textStyle(
//                     color: Colors.white,
//                     fontsize: 15,
//                     fontWeight: FontWeight.w600)
//                 .copyWith(letterSpacing: 2),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               'Azeez Aminu Olamide',
//               style: textStyle(
//                       color: Colors.white,
//                       fontsize: 25,
//                       fontWeight: FontWeight.bold)
//                   .copyWith(letterSpacing: 2),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Text('Software Engineer and Mobile Application Developer',
//                 style: textStyle(
//                     color: const Color.fromRGBO(31, 47, 98, 1),
//                     fontsize: 15,
//                     fontWeight: FontWeight.bold)),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 20, right: 10),
//                     child: Text(
//                         """A skilled Software Engineer that specialized in the creative design and development of Mobile application using flutter and an experienced website designer whose expertise beyond measure, you can contact me at any time to start a work full of creativity and good performance""",
//                         softWrap: true,
//                         style: textStyle(
//                             color: Colors.white,
//                             fontsize: 13,
//                             fontWeight: FontWeight.w500)),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.asset(
//                       'assets/images/profile.jpg',
//                       fit: BoxFit.cover,
//                       height: 180,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           OutlinedButton(
//             style: ElevatedButton.styleFrom(
//                 shape: const CircleBorder(),
//                 side: const BorderSide(color: Colors.white),
//                 padding: const EdgeInsets.all(10)),
//             onPressed: () {},
//             child: const Icon(
//               Icons.facebook_outlined,
//               color: Color.fromRGBO(31, 47, 98, 1),
//               size: 40,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
