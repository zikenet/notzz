import 'package:flutter/material.dart';
import 'package:notzz/presentation/core/widgets/sliver_appbar_delegate.dart';

class SimpleSearchField extends StatelessWidget {
  const SimpleSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: false,
      floating: true,
      delegate: SliverAppBarDelegate(
        minHeight: 70,
        maxHeight: 70,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: const BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          child: TextFormField(
            key: const Key('search_textField'),
            onChanged: (searchKey) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.3),
              // enabledBorder: Theme.of(context)
              //     .inputDecorationTheme
              //     .focusedBorder!
              //     .copyWith(
              //       borderSide: const BorderSide(
              //         color: Colors.transparent,
              //       ),
              //     ),
              // focusedBorder: Theme.of(context)
              //     .inputDecorationTheme
              //     .focusedBorder!
              //     .copyWith(
              //       borderSide: const BorderSide(
              //         color: Colors.transparent,
              //       ),
              //     ),
              // border: Theme.of(context)
              //     .inputDecorationTheme
              //     .focusedBorder!
              //     .copyWith(
              //       borderSide: const BorderSide(
              //         color: Colors.transparent,
              //       ),
              //     ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: 'Search',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
        ),
      ),
    );
  }
}
