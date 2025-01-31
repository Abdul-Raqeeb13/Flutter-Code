// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class container_and_more extends StatefulWidget {
  const container_and_more({super.key});

  @override
  State<container_and_more> createState() => _container_and_moreState();
}

class _container_and_moreState extends State<container_and_more> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(166, 6, 95, 220),
          title: Text("TECH"),
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              // circle avatar backgorund of thr person icon
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 13, 13, 28),
                  // backgroundColor: Color.fromARGB(255, 13, 13, 28),
                  radius: 18,
                  // used to center the icon insode the circle avatar
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.person_2_outlined),
                  )),
            )
          ],
        ),
        body: Container(
         height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  // main imag e that show on the back of the complete page
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/abstract-orange-flame-mesh-background-futuristic-technology-style_1217-1136.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming"),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(255, 158, 4, 4),
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Ali ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(255, 158, 4, 4),
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Ali ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(255, 158, 4, 4),
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Ali ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(255, 158, 4, 4),
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Ali ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(255, 158, 4, 4),
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Ali ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 158, 4, 4),
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-male-personal-shopper-working_23-2148924142.jpg?ga=GA1.1.881659082.1730823737&semt=ais_incoming",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
