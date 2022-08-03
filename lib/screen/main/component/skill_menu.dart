import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/models/resources.dart';
import 'package:portofolio_website/screen/main/component/skill.dart';

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

class _SkillItem extends StatelessWidget {
  const _SkillItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
