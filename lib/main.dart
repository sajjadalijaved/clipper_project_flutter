import 'package:clipper_project/clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('Clipper'),
          leading: const Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_sharp,
                  size: 30,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 40,
              child: ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange[500],
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  alignment: Alignment.topCenter,
                  height: 200,
                  width: 370,
                  child: const Center(
                      child: Icon(Icons.account_circle_sharp, size: 140)),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 54,
              child: ClipPath(
                clipper: MyClip(),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  height: 350,
                  width: 350,
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(children: const [
                    TextField(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          contentPadding: EdgeInsets.all(5),
                          labelText: 'User Name',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'Please Enter Name Here',
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscuringCharacter: '*',
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          contentPadding: EdgeInsets.all(5),
                          labelText: 'User Password',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'Please Enter Password Here',
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                            size: 30,
                          )),
                    )
                  ]),
                ),
              ),
            ),
            const Spacer(
              flex: 5,
            )
          ],
        ));
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, height);
    // path.cubicTo(width * .15, height * .15, width * .5, height * .5, width, 0);
    path.quadraticBezierTo(width * .10, height * .10, width * 0.20, height);
    path.lineTo(width * 0.21, height);
    path.quadraticBezierTo(width * .38, height * .10, width * 0.46, height);
    path.lineTo(width * 0.46, height);
    path.quadraticBezierTo(width * .63, height * .10, width * 0.71, height);
    path.lineTo(width * 0.71, height);
    path.quadraticBezierTo(width * .88, height * .10, width, height);

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
