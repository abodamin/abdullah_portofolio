import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_website/app/colors.dart';
import 'package:portofolio_website/data/local_models/project.dart';
import 'package:portofolio_website/views/common/responsive.dart';
import 'package:portofolio_website/views/home/component/card_widget.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !Responsive.isMobile(context) ? crossAxisCount : 1,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => CardWidget(
        project: projects[index],
      ),
    );
  }
}
