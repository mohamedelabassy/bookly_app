import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'Custom_App_bar.dart';
import 'Fetured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Style.titleMeduim,
          )
        ],
      ),
    );
  }
}
