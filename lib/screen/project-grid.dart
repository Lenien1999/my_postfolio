import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../component/image_view.dart';
import '../contant/responsive.dart';
import '../contant/text_style.dart';
import '../model/project_model.dart';

class BuildProjectGrid extends StatelessWidget {
  const BuildProjectGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.width * 0.7
            : (ResponsiveWidget.isMediumScreen(context)
                ? MediaQuery.of(context).size.width * 0.8
                : MediaQuery.of(context).size.width * 0.7),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: projectList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              mainAxisExtent: ResponsiveWidget.isSmallScreen(context)
                  ? 410
                  : (ResponsiveWidget.isMediumScreen(context) ? 400 : 400),
              crossAxisSpacing: 20,
              crossAxisCount: ResponsiveWidget.isSmallScreen(context)
                  ? 1
                  : (ResponsiveWidget.isMediumScreen(context) ? 2 : 3)),
          itemBuilder: (BuildContext context, int index) {
            final project = projectList[index];
            final ExpandableController _controller = ExpandableController();
            return ExpandableNotifier(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.teal),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          ImageViewer(context, projectList[index].projectImg);
                        },
                        child: Image.asset(
                          project.imgUrl,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                    ScrollOnExpand(
                      theme: const ExpandableThemeData(
                          tapBodyToExpand: true, tapBodyToCollapse: true),
                      child: ExpandablePanel(
                        controller: _controller,
                        header: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 6),
                          child: Text(
                            project.projectTitle,
                            style: textStyle(
                                color: Colors.white,
                                fontsize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        collapsed: Text(
                          project.projectTitle,
                          softWrap: true,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              color: Colors.white,
                              fontsize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        expanded: Text(
                          project.description,
                          style: textStyle(
                              color: Colors.white,
                              fontsize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        builder: (_, collapsed, expanded) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0).copyWith(top: 5),
                            child: Expandable(
                                collapsed: collapsed, expanded: expanded),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
