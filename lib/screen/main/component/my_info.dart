import 'package:flutter/material.dart';
import 'package:portofolio_website/models/resources.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(R.img_profile_wide),
            ),
            Spacer(),
            Text(
              "Abdullah Alamin",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Mobile Developer", textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
