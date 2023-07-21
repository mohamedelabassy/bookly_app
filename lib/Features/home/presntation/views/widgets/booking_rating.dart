import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(
            0xffFFDD4f,
          ),
        ),
        const SizedBox(
          width: 6.8,
        ),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Style.textStyle16.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
