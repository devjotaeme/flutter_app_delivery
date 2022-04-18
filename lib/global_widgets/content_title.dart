import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    Key? key,
    required this.title,
    this.more = false,
  }) : super(key: key);

  final String title;
  final bool more;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Títulos
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: AppTheme.tBackground, fontWeight: FontWeight.bold),
          ),
          more
              ? Text(
                  "see more...",
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: AppTheme.tBackground, fontWeight: FontWeight.w400),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
