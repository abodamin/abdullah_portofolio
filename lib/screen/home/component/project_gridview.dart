import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/models/project.dart';
import 'package:portofolio_website/responsive.dart';
import 'package:portofolio_website/screen/home/component/card_widget.dart';
import 'package:portofolio_website/screen/main/component/social_media.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final double itemSize = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: itemSize * projects.length,
          child: Flexible(
            flex: 9,
            fit: FlexFit.tight,
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: childAspectRatio,
              ),
              itemBuilder: (context, index) => CardWidget(
                project: projects[index],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Less is More there are a lot more,  feel free to reach me through LinkedIn.",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SocialMedia(),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Made with ♥ by Abdullah",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
