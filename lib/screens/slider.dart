import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  // Variables
  double _sliderValue = 120;
  bool _sliderEnable = true;
  bool _showImg = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderScreen'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text('Zoom'),
          Slider.adaptive(
            min: 50,
            max: 500,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            divisions: 10,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          CheckboxListTile(
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
            activeColor: AppTheme.primary,
            title: const Text('Slider habilitado'),
          ),
          SwitchListTile.adaptive(
            value: _showImg,
            onChanged: (value) => setState(() {
              _showImg = value;
            }),
            activeColor: AppTheme.primary,
            title: const Text('Mostrar imagen completa'),
          ),
          const AboutListTile(),
          const SizedBox(height: 20),
          _showImg
              ? const FadeInImage(
                  image: NetworkImage('https://picsum.photos/2160/3996'),
                  placeholder: AssetImage('assets/img/jar-loading.gif'),
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 50),
                  placeholderFit: BoxFit.contain,
                )
              : Container(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://picsum.photos/2160/3996'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
