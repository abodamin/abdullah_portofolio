import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_website/constaint.dart';
import 'package:portofolio_website/responsive.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Abdullah Alamin",
            style: Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                : Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
          ),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              height: defaultPadding / 2,
            ),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText()
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mobile developer passionate of programming in general with sence of quality assurance and beautiful designs. .  . \n ", maxLines: 4,),
          // Text("I build "),
          SizedBox(height: 30,),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("iOS"),
              TyperAnimatedText("Android"),
              TyperAnimatedText("Flutter/Dart"),
              TyperAnimatedText("Kotlin/Java"),
              TyperAnimatedText("Custom Applications."),
              TyperAnimatedText("and more. .  ."),
            ],
          ),
        ],
      ),
    );
  }
}
