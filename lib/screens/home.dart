import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Please Select your Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
              Container(
                  height: 150,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          checkColor: Colors.white,
                          shape: const CircleBorder(),
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          },
                        ),
                      ),
                      const Image(
                        image: AssetImage('assets/Group.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Shipper",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 25,
              ),
              Container(
                  height: 150,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          checkColor: Colors.white,
                          shape: const CircleBorder(),
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                      ),
                      const Image(
                        image: AssetImage('assets/truck.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Transporter",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(10)
                            )),
                    onPressed: () {},
                    child: const Text("CONTINUE",
                    style: TextStyle(
                      fontSize: 20
                    ),)),
              )
            ]),
      ),
    );
  }
}
