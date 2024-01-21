import 'package:flutter/material.dart';
import 'package:coqcifar_movil/screens/home.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("lib/assets/farma.jpg"),
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("lib/assets/logocoq.png"),
                height: 120.0,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20.0)
              ),
              Form(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nombres',
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0)
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Apellidos',
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0)
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Correo Electrónico',
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0)
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Contraseña',
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0)
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirmar Contraseña',
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0)
                        ),
                        MaterialButton(
                          height: 45.0,
                          minWidth: 160.0,
                          color: Colors.indigo.shade900,
                          textColor: Colors.white,
                          child: Text("Registrarte"),
                          onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())),
                          },
                          splashColor: Colors.redAccent,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 1.0)
                        ),
                      ],
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}