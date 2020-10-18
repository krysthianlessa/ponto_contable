import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ponto_contable/page/RecordPage.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

typedef TimeProducer = DateTime Function();

class ClockPage extends StatefulWidget {
  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  ClockPage({
    this.getCurrentTime = getSystemTime,
    this.updateDuration = const Duration(seconds: 1),
  });

  static DateTime getSystemTime() {
    return DateTime.now();
  }

  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  final _formKey = GlobalKey<FormState>();

  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = new DateTime.now();
    this._timer = new Timer.periodic(widget.updateDuration, setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = new DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONTABLE - Controle de Presença",
          style: Theme.of(context)
              .textTheme
              .headline4
              .apply(color: Colors.white, fontWeightDelta: 2),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildClock(),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      style: Theme.of(context).textTheme.headline3,
                      decoration: InputDecoration(
                        labelText: "Matrícula",
                        contentPadding: EdgeInsets.all(25),
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize:
                              Theme.of(context).textTheme.headline3.fontSize,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "ENTRAR",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .apply(color: Colors.white, fontWeightDelta: 2),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecordPage(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClock() {
    return DigitalClock(
      digitAnimationStyle: Curves.elasticOut,
      is24HourTimeFormat: true,
      areaDecoration: BoxDecoration(color: Colors.transparent),
      hourMinuteDigitTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 100,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
