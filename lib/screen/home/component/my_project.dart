import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/models/project.dart';
import 'package:portofolio_website/responsive.dart';
import 'package:portofolio_website/screen/home/component/project_gridview.dart';
import 'package:portofolio_website/screen/main/component/social_media.dart';

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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Previous Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: Container(
              height: MediaQuery.of(context).size.height * 1.8,
              child: Flexible(

                  child: ProjectGridView(),
              ),
            ),
            mobileLarge: Container(
              height: MediaQuery.of(context).size.height,
              child: Flexible(

                child: ProjectGridView(),
              ),
            ),
            tablet: Container(
              height: MediaQuery.of(context).size.height *0.8,
              child: Flexible(
                child: ProjectGridView(),
              ),
            ),
            desktop: Container(
              height: MediaQuery.of(context).size.height *0.8,
              child: Flexible(
                child: ProjectGridView(),
              ),
            ),
        ),
        // -----
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

