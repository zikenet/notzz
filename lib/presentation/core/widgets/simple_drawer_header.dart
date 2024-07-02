import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SimpleDrawerHeader extends StatelessWidget {
  const SimpleDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Row(
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(
                  Iconsax.user,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Isaac',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Notzz account',
                style: TextStyle(
                  color: Colors.white24,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Iconsax.setting),
          ),
        ],
      ),
    );
  }
}
