import 'package:flutter/material.dart';

class NoteEditor extends StatelessWidget {
  const NoteEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.yellow,
      ),
    );
    //   Padding(
    //   padding: const EdgeInsets.only(right: 8.0),
    //   child: ListView(
    //     children: [
    //       const SizedBox(height: 8),
    //       ...List.generate(10, (index) {
    //         return Padding(
    //           padding: const EdgeInsets.only(bottom: 8.0),
    //           child: Container(
    //             width: 100,
    //             height: 100,
    //             color: Colors.red,
    //           ),
    //         );
    //       }),
    //     ],
    //   ),
    // );
  }
}
