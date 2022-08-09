import 'package:flutter/material.dart';
import 'package:portofolio_website/app/colors.dart';

class SkillSet extends StatelessWidget {
  const SkillSet({Key? key, required this.image, required this.text})
      : super(key: key);

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 30,
          height: 30,
          filterQuality: FilterQuality.medium,
        ),
        SizedBox(height: defaultPadding),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 3,
        ),
      ],
    );
  }
}
