import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/models/resources.dart';
import 'package:portofolio_website/screen/main/component/icon_about.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding / 2),
      child: Container(
          color: Color(0xFF24242E),
          child: Row(
            children: [
              Spacer(),
              IconAbout(
                asset: R.ic_linkedIn,
                url: 'https://www.linkedin.com/in/abdullah-alamin/',
              ),
              IconAbout(
                asset: R.ic_github_grey,
                url: 'https://github.com/abodamin',
              ),
              IconAbout(
                asset: R.ic_twitter,
                url:
                    'https://twitter.com/AbdullahDev0',
              ),
              Spacer(),
            ],
          )),
    );
  }
}
