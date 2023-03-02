import 'package:flutter/material.dart';
import 'package:project_001/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [
    1,
    2,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: SizedBox(
        child: Column(
          children: [
            Text(
              numbers.last.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbers[index].toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Second(numbers: numbers)));
              },
              child: Text('Second'),
            )
          ],
        ),
      ),
    );
  }
}
