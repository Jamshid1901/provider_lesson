import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/controller.dart';
import 'package:provider_lesson/two_controller.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key, required this.title});

  final String title;

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${context.watch<TwoController>().count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<TwoController>().addCount();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}