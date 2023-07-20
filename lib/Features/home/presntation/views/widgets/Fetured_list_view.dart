import 'package:flutter/cupertino.dart';

import 'custom _list _view_item.dart';

class FeturedBooksListView extends StatelessWidget {
  const FeturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeturedListViewItem());
        },
      ),
    );
  }
}
