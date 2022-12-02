import 'package:flutter/material.dart';

import 'important_news.dart';

class ImportantNewsBar extends StatelessWidget {
  const ImportantNewsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ImportantNews(),
          ImportantNews(),
          ImportantNews(),
          ImportantNews(),
        ],
      ),
    );
  }
}
