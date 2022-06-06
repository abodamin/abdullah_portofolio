import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/models/resources.dart';
import 'package:portofolio_website/responsive.dart';
import 'package:portofolio_website/screen/home/component/text_banner.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.5 : 2.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            R.img_profile_wide,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(color: darkColor.withOpacity(0.7)),
          TextBanner(),
        ],
      ),
    );
  }
}
