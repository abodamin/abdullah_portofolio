import 'package:flutter/material.dart';
import 'package:portofolio_website/app/colors.dart';
import 'package:portofolio_website/data/local_models/project.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(defaultPadding),
      // color: secondaryColor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Text(
            project.tools!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          // TODO publish apps and then put links
          // TextButton(
          //   onPressed: () {
          //     //TODO
          //     // if(link == null){
          //     //   showToast();
          //     // }
          //     launch(project.link!);
          //   },
          //   child: Text(
          //     "Read More >>",
          //     style: TextStyle(color: primaryColor),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       _StoreIcon(
          //         icon: R.ic_apple_store,
          //         onClick: () => launch(project.link!),
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       _StoreIcon(
          //         icon: R.ic_play_store,
          //         onClick: () => launch(project.link!),
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _StoreIcon extends StatelessWidget {
  final String? icon;
  final Function? onClick;

  const _StoreIcon({Key? key, this.icon, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick?.call();
      },
      child: Image.asset(
        icon!,
        height: 40,
        width: 40,
      ),
    );
  }
}
