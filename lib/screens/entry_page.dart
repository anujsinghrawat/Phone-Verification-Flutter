import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  String selectedValue = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.image_outlined,
                size: 100,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Please select your Language",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            //
            const Text("you can change the language at any time."),

            const SizedBox(
              height: 50,
            ),

            //
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    // fillColor: Colors.blueAccent,
                  ),
                  value: selectedValue,
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems),
            ),

            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    Navigator.pushNamed(context, '/phone');
                  },
                  child: const Text(
                    "NEXT",
                    style: TextStyle(fontSize: 20),
                  )),
            ),

            const SizedBox(
              height: 200,
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: const Image(
        image: AssetImage('./assets/layer2.png'),
        fit: BoxFit.contain,
        width: 400,
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("English"), value: "English"),
    const DropdownMenuItem(child: Text("Hindi"), value: "Hindi"),
    const DropdownMenuItem(child: Text("Tamil"), value: "Tamil"),
    const DropdownMenuItem(child: Text("Telugu"), value: "Telugu"),
  ];
  return menuItems;
}
