//to start any Application ,you should write the code
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstApp(),
    );
  }
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 189, 138),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 134, 100, 0),
        elevation: 20.0,
        centerTitle: true,
        title: const Text(
          // textAlign: TextAlign.center,
          "My First Project",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: "myfont",
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.amber,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              size: 30,
              color: Colors.amber,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.amber,
      //   child: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.add),
      //     iconSize: 40,
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              color: Colors.amberAccent,
              child: const Center(
                child: Text(
                  "**Mahmoud Adel**",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 31,
                    // fontWeight: FontWeight.w700,
                    fontFamily: "myfont",
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(29.0),
              child: Image.asset(
                // image from devices
                "assets/img/3.jpg",
                fit: BoxFit.cover,
                width: 350,
                height: 220,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                // image from ntwork
                "https://tse2.mm.bing.net/th?id=OIP.Ej5PeR793u4kraH_qvKfBQHaE8&pid=Api&P=0&h=180",
                fit: BoxFit.cover,
                width: 350,
                height: 220,
                loadingBuilder: (context, child, progress) {
                  return progress == null
                      ? child
                      : Container(
                          margin: EdgeInsets.fromLTRB(175, 110, 0, 0),
                          child: CircularProgressIndicator());
                },
              ),
            ),

            const CircleAvatar(
              backgroundImage: AssetImage("assets/img/2.jpg"),
              radius: 90,
            ),
            ClipOval(
              child: Image.asset("assets/img/6.jpg"),
            ),
            // SVG image(Icon image)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/img/face.svg",
                    color: Color.fromARGB(255, 0, 80, 120),
                    height: 111,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/img/twitter.svg",
                    color: Color.fromARGB(255, 34, 134, 184),
                    height: 111,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/img/inst.svg",
                    color: Color.fromARGB(255, 255, 3, 200),
                    height: 111,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
