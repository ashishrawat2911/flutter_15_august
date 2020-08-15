import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(Flutter15AugApp());
}

class Flutter15AugApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Color(0xFFFF9933), Color(0xFFFF9933)],
                  [Colors.white, Colors.white],
                  [Color(0xFF138808), Color(0xFF138808)],
                ],
                durations: [10000, 10000, 10000],
                heightPercentages: [-1, 0.20, 0.6],
                blur: MaskFilter.blur(BlurStyle.solid, 10),
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              waveAmplitude: 20,
              backgroundColor: Colors.blue,
              size: Size(
                double.infinity,
                double.infinity,
              ),
            ),
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/600px-Ashoka_Chakra.svg.png",
                height: 200,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
