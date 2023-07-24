import 'package:bookly_app/Features/home/presntation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presntation/views/widgets/booking_rating.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'CustomBookImage.dart';
import 'custom_book_detatils_appbar.dart';
import 'smiliar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetatilsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'The jungle Book ',
                style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Ruduard Kipling',
                  style: Style.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const BookAction(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You Can Also Like ',
                  style:
                      Style.textStyle16.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SmiliarBooksListView(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
