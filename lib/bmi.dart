import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  var _sliderValue = 170;
  var _weightValue = 70;
  var _ageValue = 20;
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _isMale = true;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: _isMale ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(
                          //   Icons.person,
                          //   size: 55,
                          // ),
                          Image.asset('images/male.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _isMale = false;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: _isMale ? Colors.grey : Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(
                          //   Icons.pregnant_woman,
                          //   size: 55,
                          // ),
                          Image.asset("images/female.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("$_sliderValue cm",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                  Slider(
                    max: 200,
                    min: 100,
                    value: _sliderValue.toDouble(),
                    onChanged: (value) {
                      print(value);
                      _sliderValue = value.toInt();
                      print(_sliderValue);
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text("$_weightValue kg",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  if (_weightValue == 50) return;
                                  _weightValue--;
                                  setState(() {});
                                },
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  if (_weightValue == 122) return;
                                  _weightValue++;
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text("$_ageValue",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  _ageValue--;
                                  setState(() {});
                                },
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  _ageValue++;
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                calculate();
              },
              color: Colors.blue,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  void calculate() {
    double weight = 0;
    if (_isMale) {
      weight = 48 + 1.1 * (_sliderValue - 150);
    } else {
      weight = 45 + 0.9 * (_sliderValue - 150);
    }

    double totalResult = weight / _weightValue * 100;
    print(totalResult);

    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('AlertDialog'),
        content: Text('Percent : ${totalResult.toInt()} %'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
