import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  // Variables
  final List<String> gamesList = const [
    'Elden Ring',
    'Crisis',
    'GTA',
    'Granth Touring',
    'Monster Hunter'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView.separated(
          itemCount: gamesList.length,
          separatorBuilder: (BuildContext context, int i) => ListTile(
            leading: const Icon(Icons.gamepad_outlined),
            title: Text(gamesList[i]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: null,
          ),
          itemBuilder: (_, __) => const Divider(),
        ));
  }
}
