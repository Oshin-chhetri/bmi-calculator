import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  bool iscalculated = false;
  double bmi = 0.00;
  String bmiReport = "";
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: deviceHeight,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth,
                  height: deviceHeight * 0.3,
                  color: Colors.blueGrey,
                  child: Text(
                    "BMI Calculator".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: deviceWidth * 0.07,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: deviceWidth * 0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFormField(
                              controller: heightcontroller,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Height",
                                  helperText: "Enter height in meter"),
                            ),
                            TextFormField(
                              controller: weightcontroller,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Weight",
                                  helperText: "Enter weight in Kg"),
                            ),
                            Row()
                          ],
                        ))),
                // SizedBox(
                //   height: 10,
                // ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          label: Text("Calculate")),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.refresh),
                          label: Text("Refresh")),
                    ]),
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth,
                  height: deviceHeight * 0.15,
                  color: Colors.blueGrey,
                  child: Text(
                    iscalculated ? bmiReport : "Result Goes Here",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
