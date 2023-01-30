import 'package:components/themes/app_theme.dart';
import 'package:components/widgets/custom_card_img.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarScreen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: AppTheme.primary.withOpacity(0.5).withRed(175),
              child: const Text('AS'),
            ),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage('https://picsum.photos/840/560'),
          ),
          const SizedBox(height: 50),
          const CustomCardImg(imgUrl: 'https://picsum.photos/840/560'),
          const SizedBox(height: 50),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const FadeInImage(
              fit: BoxFit.fill,
              width: 100,
              height: 100,
              placeholder: AssetImage('assets/img/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/840/560'),
            ),
          )
        ],
      )),
    );
  }
}
