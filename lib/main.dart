import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget{
  const MyWidget ({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {

  double tamanho = 300;
  double red = 0;
  double green= 0;
  double blue = 0;

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
               if (tamanho > 50){
                tamanho -= 50;
               };
              });
            },
            icon: const Icon (Icons.remove),
          ),
           IconButton(
            onPressed: () {
              setState(() {
                tamanho = 50;
              });
            },
            icon: Text ('S'),
          ),
              IconButton(
            onPressed: () {
              setState(() {
                tamanho = 300;
              });
            },
            icon: Text ('M'),
          ),
              IconButton(
            onPressed: () {
              setState(() {
                tamanho = 500;
              });
            },
            icon: Text ('L'),
          ),
              IconButton(
            onPressed: () {
              setState(() {
                if (tamanho < 500){
                tamanho += 50;
                }
              });
            },
            icon: const Icon(Icons.add) ,
          ),
        ],
      ),
      body: Column(
        children: [
          Center (
            child: Icon(Icons.gamepad, size: tamanho, color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),),
            ),
            Slider(
              activeColor: Colors.red,
              min: 0,
              max: 255,
              value: red,
              onChanged: (double value){
                setState(() {
                  red = value;
                });
              }
            ),
            Slider(
              activeColor: Colors.green,
              min: 0,
              max: 255,
              value: green, 
              onChanged: (double value) {
                setState(() {
                  green = value;
                });
            }),
            Slider(
              activeColor: Colors.blue,
              min: 0,
              max: 255,
              value: blue,
              onChanged: (double value) {
                setState(() {
                blue = value;
                                  });
              })
        ],
      )
    );
  }
}


