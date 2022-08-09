import 'package:flutter/material.dart';
import 'package:portofolio_website/views/home/component/home_banner.dart';
import 'package:portofolio_website/views/home/component/my_project.dart';
import 'package:portofolio_website/views/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: MainScreen(
        children: [
          HomeBanner(),
          MyProject(),
        ],
      ),
    );
  }
}
