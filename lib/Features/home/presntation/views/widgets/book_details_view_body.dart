import 'package:bookly_app/Features/home/presntation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/booking_rating.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'CustomBookImage.dart';
import 'books_detatils_section.dart';
import 'books_similart_section.dart';
import 'custom_book_detatils_appbar.dart';
import 'smiliar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomBookDetatilsAppBar(),
              BookDetatilsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
