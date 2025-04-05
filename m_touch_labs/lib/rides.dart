import 'package:flutter/material.dart';

class Rides extends StatelessWidget {
  const Rides({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.50,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.25,
                          width: width,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/img/rider_4.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),

                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'ride to Nandi hills',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.purple.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Sheshi preetham',
                              style: TextStyle(
                                fontSize: 1,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Duration: 2 hours ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),

                            const SizedBox(width: 5),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.redAccent,
                            ),
                            Text(
                              " 900kms",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(Icons.calendar_month),

                            Text(
                              " April 20 2025",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(Icons.location_pin, color: Colors.redAccent),
                            Text(
                              " Hyderabad",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        // Icon(Icons.location_pin, color: Colors.redAccent),
                        // Text(
                        //   " Hyderabad",
                        //   style: TextStyle(fontSize: 16, color: Colors.black),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
