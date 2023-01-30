import 'package:flutter/material.dart';

class CustomCardImg extends StatelessWidget {
  final String imgUrl;
  final String? title;

  const CustomCardImg({
    super.key,
    required this.imgUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Para que no out la img del card
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15), // Create a border-radius custom
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 50),
          ),
          if (title != null)
            Container(
              padding: const EdgeInsets.only(
                bottom: 5,
                top: 5,
                right: 10,
              ),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(title ?? 'No title'),
            ),
        ],
      ),
    );
  }
}
