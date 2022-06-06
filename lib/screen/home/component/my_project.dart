import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/responsive.dart';
import 'package:portofolio_website/screen/home/component/project_gridview.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding,),
        Text(
          "Previous Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: ProjectGridView(crossAxisCount: 1, childAspectRatio: 1.7,),
            mobileLarge: ProjectGridView(crossAxisCount: 2),
            tablet: ProjectGridView(childAspectRatio: 1.1,),
            desktop: ProjectGridView())
      ],
    );
  }
}

