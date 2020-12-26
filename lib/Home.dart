import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controllerAlcool = TextEditingController();
  TextEditingController controllerGasolina = TextEditingController();
  String resultado = "";

  void calcular() {
    double alcool = double.tryParse(controllerAlcool.text);
    double gasolina = double.tryParse(controllerGasolina.text);

    if ((alcool == null) || (gasolina == null)) {
      setState(() {
        resultado =
            "Número inválido, digite números maiores que 0 e utilizando (.)";
      });
    } else {
      if (alcool / gasolina >= 0.7) {
        setState(() {
          resultado = "É melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          resultado = "É melhor abastecer com álcool";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("asset/logo.png"),
              SizedBox(height: 30),
              Text(
                "Saiba qual a melhor opção para abastecimento do seu carro",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: controllerAlcool,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do Álcool, ex: 1.59",
                ),
                showCursor: true,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                controller: controllerGasolina,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço do Gasolina, ex: 3,99"),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: calcular,
                color: Colors.indigo[800],
                textColor: Colors.white,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Calcular",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                resultado,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
