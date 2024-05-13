import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    var data = calculateBMI(bmi);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 53, 146, 56),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: const Text(
                "Result",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  color: Color.fromARGB(60, 14, 7, 7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      data["classification"]!,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 88, 244, 93),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      double.parse(data["bmi"]!).toStringAsFixed(1),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        data["result"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black54,
        child: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ResultScreen(
                  bmi: 0.0,
                ),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'ReCalculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Map<String, String> calculateBMI(double bmi) {
    var calculatedResult = {
      "bmi": bmi.toString(),
      "classification": "",
      "result": ""
    };
    if (bmi < 16) {
      calculatedResult["classification"] = "Severe Thinness";
      calculatedResult["result"] =
          "Your BMI falls into the Severe Thinness category, indicating a significantly low body weight relative to height.";
    } else if (bmi >= 16 && bmi <= 17) {
      calculatedResult["classification"] = "Moderate Thinness";
      calculatedResult["result"] =
          "Your BMI falls into the Moderate Thinness category, indicating a moderately low body weight relative to height";
    } else if (bmi > 17 && bmi <= 18.5) {
      calculatedResult["classification"] = "Mild Thinness";
      calculatedResult["result"] =
          "Your BMI falls into the Mild Thinness category, indicating a slightly lower body weight relative to height";
    } else if (bmi > 18.5 && bmi <= 25) {
      calculatedResult["classification"] = "Normal";
      calculatedResult["result"] =
          "Your BMI falls into the Normal range, indicating a healthy body weight relative to height.";
    } else if (bmi > 25 && bmi <= 30) {
      calculatedResult["classification"] = "Overweight";
      calculatedResult["result"] =
          "Your BMI falls into the Overweight category, indicating a higher body weight relative to height.";
    } else if (bmi > 30 && bmi <= 35) {
      calculatedResult["classification"] = "Obese Class I";
      calculatedResult["result"] =
          "Your BMI falls into Obese Class I, indicating a significantly higher body weight relative to height.";
    } else if (bmi > 35 && bmi <= 40) {
      calculatedResult["classification"] = "Obese Class II";
      calculatedResult["result"] =
          "Your BMI falls into Obese Class II, indicating a very high body weight relative to height.";
    } else if (bmi > 40) {
      calculatedResult["classification"] = "Obese Class III";
      calculatedResult["result"] =
          "Your BMI falls into Obese Class III, indicating an extremely high body weight relative to height";
    }
    return calculatedResult;
  }
}
