import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int index = 0;
  final List<String> _items = [
    'Market Item 0',
    'Market Item 1',
    'Market Item 2',
    'Market Item 3',
    'Market Item 4',
    'Market Item 5',
    'Market Item 6',
    'Market Item 7',
    'Market Item 8',
    'market Item 9',
    'Market Item 10',
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
                  color: Colors.redAccent,
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
