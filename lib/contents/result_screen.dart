import 'package:flutter/material.dart';
import 'package:flutter_bmi/components/navbar.dart';
import '../components/bg_card.dart';
import 'bmi_calculate/BottomContainer_Button.dart';
import '../components/constants.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  ResultPage({
    required this.textColor,
    required this.resultText,
    required this.bmi,
    required this.advise,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Nav_Bar(
        labeltext: 'BMI Result',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Your Result',
                style: ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BgCard(
              callback: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  const Text(
                    'Normal BMI range:',
                    style: klabelTextStyle,
                  ),
                  const Text(
                    '18.5 - 25 kg/m2',
                    style: kBodyTextStyle,
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    constraints: const BoxConstraints.tightFor(
                      width: 200.0,
                      height: 56.0,
                    ),
                    fillColor: Color(0xFF4C4F5E),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'SAVE RESULT',
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
