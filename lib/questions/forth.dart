import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/questions/fifth.dart';

class Forth extends StatefulWidget {
  const Forth({Key? key}) : super(key: key);

  @override
  State<Forth> createState() => _ForthState();
}

class _ForthState extends State<Forth> {
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
                      "What is your favourite programming language",
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
                  color: answer == "Python" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("Python"),
                    value: "Python",
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
                  color: answer == "Java" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("Java"),
                    value: "Java",
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
                  color: answer == "C++" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("C++"),
                    value: "C++",
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
                      IconButton(
                        onPressed: () {

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Fifth()));
                          if (answer == "Python") {
                            score++;
                          }
                          qNumber++;
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          size: 40,
                        ),
                      ),
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
