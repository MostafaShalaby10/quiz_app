import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions/third.dart';
import 'package:quiz_app/main.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
                      "What is the key word for print in c++",
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
                  color: answer == "cout" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("cout"),
                    value: "cout",
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
                  color: answer == "cin" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("cin"),
                    value: "cin",
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
                  color: answer == "System.out.print" ? Colors.grey[300] : Colors.white,
                  child: RadioListTile(
                    title: Text("System.out.print"),
                    value: "System.out.print",
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
                              MaterialPageRoute(builder: (context) => Third()));
                          if(answer=="cout")
                          {
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
