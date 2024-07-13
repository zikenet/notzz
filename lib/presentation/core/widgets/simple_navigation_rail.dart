import 'package:flutter/material.dart';
import 'package:notzz/presentation/core/widgets/animated_floating_action_button.dart';
import 'package:notzz/presentation/core/widgets/destination.dart';
import 'package:notzz/presentation/core/animations/animations.dart';
import 'package:notzz/presentation/core/transitions/nav_transition.dart';

class SimpleNavigationRail extends StatelessWidget {
  const SimpleNavigationRail({
    super.key,
    required this.backgroundColor,
    required this.selectedIndex,
    required this.railAnimation,
    required this.railFabAnimation,
    this.onDestinationSelected,
  });

  final Color backgroundColor;
  final int selectedIndex;
  final RailAnimation railAnimation;
  final RailFabAnimation railFabAnimation;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: IntrinsicHeight(
            child: NavigationRail(
              selectedIndex: selectedIndex,
              backgroundColor: backgroundColor,
              onDestinationSelected: onDestinationSelected,
              unselectedIconTheme: const IconThemeData(color: Colors.white60),
              selectedIconTheme: const IconThemeData(color: Colors.white),
              leading: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  const SizedBox(height: 8),
                  AnimatedFloatingActionButton(
                    animation: railFabAnimation,
                    elevation: 0,
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                  // FloatingActionButton.small(
                  //   shape: const RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(8),
                  //     ),
                  //   ),
                  //   // backgroundColor: colorScheme.tertiaryContainer,
                  //   // foregroundColor: colorScheme.onTertiaryContainer,
                  //   onPressed: () {},
                  //   child: const Icon(Icons.add),
                  // ),
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
          ),
        ),
      ),
    );
  }
}
