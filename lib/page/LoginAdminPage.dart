import 'package:flutter/material.dart';
import 'package:ponto_contable/page/ClockPage.dart';

class LoginAdminPage extends StatefulWidget {
  @override
  _LoginAdminPageState createState() => _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {
  final _formKeyEmail = GlobalKey<FormState>();
  final _formKeyPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      title: Text(
        "CONTABLE - Controle de Presença",
        style: Theme.of(context)
            .textTheme
            .headline4
            .apply(color: Colors.white, fontWeightDelta: 2),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  Widget getBody() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Form(
            key: _formKeyEmail,
            child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              style: Theme.of(context).textTheme.headline3,
              decoration: InputDecoration(
                labelText: "E-mail",
                contentPadding: EdgeInsets.all(25),
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: Theme.of(context).textTheme.headline3.fontSize,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Form(
            child: TextFormField(
              key: _formKeyPassword,
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.headline3,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                contentPadding: EdgeInsets.all(25),
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: Theme.of(context).textTheme.headline3.fontSize,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "LOGIN",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .apply(color: Colors.white, fontWeightDelta: 2),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClockPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
