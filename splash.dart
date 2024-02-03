import 'package:chat/nFront.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 0.6 * h,
                width: w,
                color: Color.fromARGB(255, 250, 244, 243),
              ),
              Positioned(
                bottom: 0,
                left: (w - 380) / 2, // Center the image horizontally
                child: Container(
                  height: 0.60*h,
                  width: 1.1*w,
                  child: Image.asset(
                    'assets/logo.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Intern, Learn, Succeed',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      'Unlock Your Future: Explore Exciting Internship Opportunities with our App',
                      style: TextStyle(fontSize: 16.0,),textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.0),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Route newRoute2 = MaterialPageRoute(
                            builder: (context) => MyHomePage());
                        Navigator.pushReplacement(context, newRoute2);
                      },
                      child: Container(
                        height: 50,
                        width: 2 * w / 3,
                        // color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
