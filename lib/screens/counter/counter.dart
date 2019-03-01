import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter/screens/counter/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  CounterBloc _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Starter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterEvent, int>(
              bloc: _bloc,
              builder: (context, value) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _bloc.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
