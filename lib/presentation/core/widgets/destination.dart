import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Destination {
  const Destination({
    required this.icon,
    required this.label,
    this.trailing,
  });

  final IconData icon;
  final String label;
  final Widget? trailing;
}

const List<Destination> destinations = <Destination>[
  Destination(
    icon: Iconsax.note_2,
    label: 'All notes',
    trailing: Text(
      '5',
      style: TextStyle(color: Colors.white),
    ),
  ),
  Destination(
    icon: Iconsax.task_square,
    label: 'Tasks',
  ),
  Destination(
    icon: Iconsax.trash,
    label: 'Trash',
  ),
];
