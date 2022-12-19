import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/provider/todo_provider.dart';
import 'package:provider_kullanimi/screens/homepage.dart';
import 'package:provider_kullanimi/providerornek/state_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommentProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
/* 
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('callback kullanımı'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: SolWidgetA()),
            Expanded(child: SagWidgetA())
          ],
        ),
      ),
    );
  }
}

class SolWidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String sehir = Provider.of<StateData>(context).sehir;
    return Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Text(
              'Sol Widget',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              sehir,
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}

class SagWidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        Text(
          'SagWidget A',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetB()
      ]),
    );
  }
}

class SagWidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      color: Colors.purple,
      child: Column(children: [
        Text(
          'SagWidget B',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetC()
      ]),
    );
  }
}

class SagWidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Function newCity = Provider.of<StateData>(context).newCity;
    return Container(
      color: Colors.white,
      height: 150,
      width: 160,
      child: Column(children: [
        Text(
          'SagWidget C',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          Provider.of<StateData>(context).sehir,
          style: TextStyle(fontSize: 20),
        ),
        TextField(onChanged: (input) {
         //Provider.of<StateData>(context).newCity(input);
         newCity(input);
        },)
      ]),
    );
  }
}
 */