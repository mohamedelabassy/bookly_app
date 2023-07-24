import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}
