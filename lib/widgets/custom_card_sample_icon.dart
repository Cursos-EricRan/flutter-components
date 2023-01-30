import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardSampleIcon extends StatelessWidget {
  const CustomCardSampleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo,
            color: AppTheme.primary,
          ),
          title: Text('Soy un título'),
          subtitle: Text(
              'Tempor id minim culpa cupidatat. Ipsum laboris voluptate nisi commodo dolore reprehenderit nisi et minim exercitation tempor ex veniam excepteur.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => {},
                // style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: const Text('Accept'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
