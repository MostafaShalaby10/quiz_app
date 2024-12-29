import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/questions/first.dart';


class FinalScore extends StatelessWidget {
  const FinalScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,

          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your final score is : ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${score}/5",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: score > 2 ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              if (score > 2)
                Text(
                  "👍",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              if (score < 3)
                Text(
                  "👎",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              // Spacer(),
              SizedBox(
                height: 30,
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: MaterialButton(
                  onPressed: () {
                    qNumber = 1 ;
                    score = 0 ;
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>first()), (route) => false);
                  },
                  child: Text("Restart",style: TextStyle(fontSize: 25 , color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
