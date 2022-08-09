import 'package:flutter/material.dart';
import 'package:portofolio_website/app/colors.dart';
import 'package:portofolio_website/app/resourses.dart';
import 'package:portofolio_website/views/main/component/skill.dart';

class SkillMenu extends StatelessWidget {
  const SkillMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SkillSet(
          image: R.ic_flutter,
          text: 'Flutter/Dart',
        ),
        SizedBox(width: defaultPadding),
        SkillSet(
          image: R.ic_android,
          text: "Java/Kotlin",
        ),
        SizedBox(width: defaultPadding),
        SkillSet(
          image: R.ic_git,
          text: 'Git',
        ),
        SizedBox(width: defaultPadding),
      ],
    );
  }
}
