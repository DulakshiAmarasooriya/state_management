import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_001/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProvider, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListProvider.add();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(),
          body: SizedBox(
            child: Column(
              children: [
                Text(
                  numberListProvider.numbers.last.toString(),
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numberListProvider.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          numberListProvider.numbers[index].toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        );
                      }),
                )
              ],
            ),
          )),
    );
  }
}
