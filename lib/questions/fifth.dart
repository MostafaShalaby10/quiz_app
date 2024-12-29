import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/finalScore.dart';
import 'package:quiz_app/main.dart';


class Fifth extends StatefulWidget {
  const Fifth({Key? key}) : super(key: key);

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  String? answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,

          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Center(
                  child: Text(
                    "Quiz app",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "${qNumber}/5",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    color: Colors.grey[300],
                    padding: EdgeInsetsDirectional.all(17),
                    child: Text(
                      "What is your rate of app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: answer == "10" ? Colors.grey[300] : Colors.white,

                  child: RadioListTile(
                    title: Text("10"),
                    value: "10",
                    groupValue: answer,
                    onChanged: (value) {
                      setState(() {
                        answer = value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: answer == "9.9" ? Colors.grey[300] : Colors.white,

                  child: RadioListTile(
                    title: Text("9.9"),
                    value: "9.9",
                    groupValue: answer,
                    onChanged: (value) {
                      setState(() {
                        answer = value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: answer == "9.8" ? Colors.grey[300] : Colors.white,

                  child: RadioListTile(
                    title: Text("9.8"),
                    value: "9.8",
                    groupValue: answer,
                    onChanged: (value) {
                      setState(() {
                        answer = value.toString();
                      });
                    },
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {


                        Navigator.pop(context);
                        qNumber--;
                        score--;
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 40,
                      ),
                    ),
                    Spacer(),
                    if (answer != null)
                      MaterialButton(
                        onPressed: () {

                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinalScore()),
                              (route) => false);
                          if (answer == "10") {
                            score++;
                          }
                        },
                        child: Text("Submit"),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
