import 'package:components/widgets/custom_card_img.dart';
import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  // Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardSampleIcon(),
          SizedBox(height: 10),
          CustomCardSampleImg(),
          SizedBox(height: 10),
          CustomCardImg(imgUrl: 'https://picsum.photos/2160'),
          SizedBox(height: 10),
          CustomCardImg(
            imgUrl: 'https://picsum.photos/1440',
            title: 'Img random 1440x1440',
          ),
          SizedBox(height: 10),
          CustomCardImg(
            imgUrl: 'https://picsum.photos/1080',
            title: 'Img random 1080x1080',
          ),
          SizedBox(height: 10),
          CustomCardImg(
            imgUrl: 'https://picsum.photos/720',
            title: 'Img random 720x720',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
