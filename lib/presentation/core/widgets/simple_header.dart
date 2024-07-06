import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:notzz/presentation/core/widgets/destination.dart';
import 'package:notzz/presentation/core/widgets/simple_drawer_header.dart';

class SimpleHeader extends HookWidget {
  final Widget body;
  final VoidCallback onActionButton;
  const SimpleHeader({
    super.key,
    required this.body,
    required this.onActionButton,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(useContext()).size.width;
    return Scaffold(
      drawer: width > 600 ? null : drawerItems(),
      // SafeArea(
      //   child: Drawer(
      //     shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.horizontal(
      //         right: Radius.circular(10),
      //       ),
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 10.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           const SimpleDrawerHeader(),
      //           const SimpleDivider(),
      //           ...destinations.map<ListTile>((d) {
      //             return ListTile(
      //               horizontalTitleGap: 0,
      //               leading: Icon(
      //                 d.icon,
      //                 size: 23,
      //               ),
      //               title: Text(
      //                 d.label,
      //                 style: const TextStyle(color: Colors.white),
      //               ),
      //               trailing: d.trailing,
      //             );
      //           }),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        child: const Icon(
          size: 22,
          Iconsax.add,
          color: Colors.black,
        ),
      ),
      body: body,
    );
  }

  /// This is outside the build method, this method doesn't have the access to context
  /// Here we can use the useContext() directly in place of context
  Widget drawerItems() => SafeArea(
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SimpleDrawerHeader(),
                const SimpleDivider(),
                ...destinations.map<ListTile>((d) {
                  return ListTile(
                    horizontalTitleGap: 0,
                    leading: Icon(
                      d.icon,
                      size: 23,
                    ),
                    title: Text(
                      d.label,
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: d.trailing,
                  );
                }),
              ],
            ),
          ),
        ),
      );

  // SizedBox(height: MediaQuery.of(useContext()).size.height * 0.2);
}

class SimpleDivider extends StatelessWidget {
  const SimpleDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: DottedDashedLine(
        height: 10,
        width: MediaQuery.sizeOf(context).width * 0.5,
        axis: Axis.horizontal,
        dashColor: Colors.white24,
      ),
    );
  }
}
