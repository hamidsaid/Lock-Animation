import 'package:flutter/material.dart';
import 'package:locks_animations/animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LockAnimation(),
    );
  }
}

class LockAnimation extends StatelessWidget {
  const LockAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("@ h.a.m.i.d_s"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
              labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: const Icon(
                Icons.vpn_key_outlined,
                color: Colors.black,
                size: 18,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              floatingLabelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Animate();
                },
              ),
            );
          },
          height: 55,
          color: Colors.green[400],
          child: const Text(
            "Verify",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    ));
  }
}
