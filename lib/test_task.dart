import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 24, 1, 20),
          centerTitle: true,
          title: const Text(
            "Business Card",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SizedBox(
          width: 1000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage("imgs/tst.jpg"),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Shada Ahmed Adly",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Software Enginer",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xff3E494A),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      color: Colors.white,
                      Icons.mail,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "shada.ahmed@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xff3E494A),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      color: Colors.white,
                      Icons.phone,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "+201001134858",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
