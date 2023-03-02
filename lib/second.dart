import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Second extends StatefulWidget {
  const Second({super.key, required List<int> numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  late final List<int> numbers;
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
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbers[index].toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
