import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
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
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Nome: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "Krysthian Lessa",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Matrícula: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "1001",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "SEG",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "TER",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "QUA",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "QUI",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "SEX",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Total da semana: ",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .apply(fontWeightDelta: 2),
                      ),
                      Text(
                        "0:00:00",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Total do mês: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "0:00:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Entrada: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "08:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Saída: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "12:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Text(
                      "Entrada: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "08:00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Saída: ",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(fontWeightDelta: 2),
                    ),
                    Text(
                      "--:--",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Center(
              child: DigitalClock(
                digitAnimationStyle: Curves.elasticOut,
                is24HourTimeFormat: true,
                areaDecoration: BoxDecoration(color: Colors.transparent),
                hourMinuteDigitTextStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "CANCELAR",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: Colors.white, fontWeightDelta: 2),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "REGISTRAR",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: Colors.white, fontWeightDelta: 2),
                  ),
                  onPressed: () {
                    DateTime horarioDoRegistro = DateTime.now();
                    print(
                      horarioDoRegistro.hour.toString() +
                          ':' +
                          horarioDoRegistro.minute.toString() +
                          ':' +
                          horarioDoRegistro.second.toString(),
                    );
                    //Aqui vem o código para registrar a entrada ou saída
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
