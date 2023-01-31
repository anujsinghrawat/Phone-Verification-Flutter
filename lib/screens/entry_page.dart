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

            SizedBox(height: 50,),



            //
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: DropdownButtonFormField(
                decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
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


            SizedBox(height: 30,),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      shape: RoundedRectangleBorder()),
                  onPressed: () {},
                  child: const Text(
                    "NEXT",
                    style: TextStyle(fontSize: 20),
                  )),
            ),


            SizedBox(
              height: 200,
            ),
            Image(image: AssetImage('./assets/layer2.png'),
            width: 500,)
          ],
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("English"), value: "English"),
    DropdownMenuItem(child: Text("Hindi"), value: "Hindi"),
    DropdownMenuItem(child: Text("Tamil"), value: "Tamil"),
    DropdownMenuItem(child: Text("Telugu"), value: "Telugu"),
  ];
  return menuItems;
}
