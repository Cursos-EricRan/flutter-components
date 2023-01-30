import 'package:flutter/material.dart';

class CustomCardSampleImg extends StatelessWidget {
  const CustomCardSampleImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Para que no salga la imagen del card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ), // Crea un boder-radius personalizado
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://picsum.photos/2080'),
            placeholder: AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 50),
          ),
          Container(
            padding: const EdgeInsets.only(
              bottom: 5,
              top: 5,
              right: 10,
            ),
            alignment: AlignmentDirectional.centerEnd,
            child: const Text('Img random'),
          ),
        ],
      ),
    );
  }
}
