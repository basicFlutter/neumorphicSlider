import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: screenWidth * 0.042,
              height: screenHeight * 0.042,
              child: SvgPicture.asset("assets/images/insta.svg",
                  color: Colors.grey),
            ),
            SizedBox(
              width:screenWidth*0.02,
            ),
            const Text("basic_flutter",style: TextStyle(color: Colors.grey),),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(

        child: Stack(
          alignment: Alignment.center,
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: -8,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey[900],
                  shadowLightColorEmboss: Colors.grey[700],
                  shadowDarkColorEmboss: Colors.black
              ),
              child: Container(
                width: screenWidth*0.6,
                height: screenWidth*0.6,
              ),
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey[850],
                  shadowLightColor: Colors.grey[850],
                  shadowDarkColor: Colors.grey[750]
              ),
              child: Container(
                width: screenWidth*0.48,
                height: screenWidth*0.48,
              ),

            ),
            SleekCircularSlider(
                min: 0,
                max: 100,
                appearance: CircularSliderAppearance(
                    infoProperties: InfoProperties(
                        mainLabelStyle: TextStyle(
                          color: Colors.cyan[800],
                          fontSize: screenWidth*0.07,
                          fontWeight: FontWeight.bold,
                        )
                    ),

                    customWidths: CustomSliderWidths(
                        handlerSize: screenWidth*0.025
                      // progressBarWidth: screenWidth*0.05
                    ),
                    size: screenWidth*0.6,
                    customColors: CustomSliderColors(
                        shadowColor: Colors.grey[800],
                        dotColor: Colors.white70,
                        progressBarColor: Colors.cyan[700],
                        trackColor: Colors.transparent
                    )
                ),
                onChange: (double value) {

                })
          ],
        ),
      ),
    );
  }
}
