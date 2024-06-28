import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

class SimpleHeader extends StatelessWidget {
  final Widget body;
  final VoidCallback onActionButton;
  const SimpleHeader({
    super.key,
    required this.body,
    required this.onActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      drawer: SafeArea(
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
                Container(
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
                            'Notzz Account',
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
                ),
                const ListTile(
                  horizontalTitleGap: 0,
                  leading: Icon(Iconsax.note_2),
                  title: Text(
                    'All notes',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text('5'),
                ),
                const ListTile(
                  horizontalTitleGap: 0,
                  leading: Icon(Iconsax.task_square),
                  title: Text(
                    'Tasks',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text('5'),
                ),
                const ListTile(
                  horizontalTitleGap: 0,
                  leading: Icon(Iconsax.trash),
                  title: Text(
                    'Trash',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DottedDashedLine(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  axis: Axis.horizontal,
                  dashColor: Colors.white24,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: Colors.black,
          size: 22,
        ),
      ),
      body: body,
    );
  }
}
