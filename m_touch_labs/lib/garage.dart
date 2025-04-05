import 'package:flutter/material.dart';

class Garage extends StatefulWidget {
  const Garage({super.key});

  @override
  State<Garage> createState() => _GarageState();
}

class _GarageState extends State<Garage> {
  int index = 0;
  final List<String> _items = [
    'Garage Item 0',
    'Garage Item 1',
    'Garage Item 2',
    'Garage Item 3',
    'Garage Item 4',
    'Garage Item 5',
    'Garage Item 6',
    'Garage Item 7',
    'Garage Item 8',
    'Garage Item 9',
    'Garage Item 10',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    _items[index],
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            );
          },
          itemCount: _items.length,
        ),
      ),
    );
  }
}
