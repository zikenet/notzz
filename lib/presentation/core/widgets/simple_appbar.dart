import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  final String title;
  final String item;
  final int amount;
  final List<Widget>? actionItems;
  const SimpleAppBar({
    super.key,
    this.actionItems,
    required this.item,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final scrolled = constraints.scrollOffset > 0;
        return SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: 120,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            title: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Visibility(
                  visible: !scrolled,
                  child: Text(
                    '$amount $item',
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: actionItems ?? [],
        );
      },
    );
  }
}
