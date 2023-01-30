import 'package:components/routes/app_routes.dart';
import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Variables

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView.separated(
          itemCount: menuOption.length + 1,
          separatorBuilder: (BuildContext context, int i) => ListTile(
            leading: Icon(menuOption[i].icon, color: AppTheme.primary),
            title: Text(menuOption[i].name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => Navigator.pushNamed(context, menuOption[i].route),
          ),
          itemBuilder: (_, __) => const Divider(),
        ));
  }
}
