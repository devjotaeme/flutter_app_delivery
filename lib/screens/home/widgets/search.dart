import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.0,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.tbordsearch,
        ),
        color: const Color.fromARGB(255, 249, 244, 233),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            color: AppTheme.tBackground,
          ),
          const SizedBox(width: 10.0),
          Text(
            "Search",
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: AppTheme.tBackground, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
