import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/questions/second.dart';


class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                      "What is the key word for print in python",
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
                  color: answer == "print" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("print"),
                    value: "print",
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
                  color: answer == "Print" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("Print"),
                    value: "Print",
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
                  color: answer == "println" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("println"),
                    value: "println",
                    groupValue: answer,
                    onChanged: (value) {
                      setState(() {
                        answer = value.toString();
                        // color = Colors.grey[300];
                      });
                    },
                  ),
                ),
                Spacer(),
                if (answer != null)
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Second()));
                          if (answer == "print") {
                            score++;
                          }
                          qNumber++;
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          size: 40,
                        ),
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
