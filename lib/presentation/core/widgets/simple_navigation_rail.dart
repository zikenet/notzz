import 'package:flutter/material.dart';
import 'package:notzz/presentation/core/animations/animations.dart';
import 'package:notzz/presentation/core/transitions/nav_transition.dart';
import 'package:notzz/presentation/core/widgets/destination.dart';

class SimpleNavigationRail extends StatelessWidget {
  const SimpleNavigationRail({
    super.key,
    required this.backgroundColor,
    required this.selectedIndex,
    required this.railAnimation,
    this.onDestinationSelected,
  });

  final Color backgroundColor;
  final int selectedIndex;
  final RailAnimation railAnimation;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: NavigationRail(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        onDestinationSelected: onDestinationSelected,
        leading: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const SizedBox(height: 8),
            FloatingActionButton.small(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              // backgroundColor: colorScheme.tertiaryContainer,
              // foregroundColor: colorScheme.onTertiaryContainer,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
        groupAlignment: -0.85,
        destinations: destinations.map<NavigationRailDestination>((d) {
          return NavigationRailDestination(
            icon: Icon(d.icon),
            label: Text(d.label),
          );
        }).toList(),
      ),
    );
  }
}
