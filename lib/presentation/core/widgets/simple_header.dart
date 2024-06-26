import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final Widget body;
  final VoidCallback onActionButton;
  const HomeHeader({
    super.key,
    required this.body,
    required this.onActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: Colors.black,
          size: 22,
        ),
      ),
      drawer: const SafeArea(
        child: Drawer(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
