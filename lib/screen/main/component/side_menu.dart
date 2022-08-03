import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/screen/main/component/download_cv.dart';
import 'package:portofolio_website/screen/main/component/skill_menu.dart';
import 'package:portofolio_website/screen/main/component/social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      // padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(),
          SizedBox(height: defaultPadding),
          Divider(),
          SocialMedia(),
        ],
      ),
    ));
  }
}
