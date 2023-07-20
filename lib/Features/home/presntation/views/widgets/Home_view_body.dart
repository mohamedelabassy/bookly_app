import 'package:flutter/material.dart';

import 'Custom_App_bar.dart';
import 'Custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeturedBooksListView(),
      ],
    );
  }
}

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
