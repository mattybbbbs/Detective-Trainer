import 'package:flutter/material.dart';
import 'drug_questionbank.dart';

DrugQuizBrain drugQuizBrain = DrugQuizBrain();

class Druginvestigations extends StatefulWidget {
  @override
  _DruginvestigationsState createState() => _DruginvestigationsState();
}

class _DruginvestigationsState extends State<Druginvestigations> {
//class Druginvestigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drug Investigations'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.black,
                ]),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    drugQuizBrain.getQuestionText(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 3.0,
                )),
                child: Center(
                  child: Text(
                    'Answer 1',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
