import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class LearnFlutterPagState extends StatefulWidget {
  const LearnFlutterPagState({super.key});

  @override
  State<LearnFlutterPagState> createState() => LearnFlutterPagStateState();
}

class LearnFlutterPagStateState extends State<LearnFlutterPagState> {
  bool isswitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Action');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/Albert_Einstein.jpg',
              width: 500, // Set the desired width
              height: 250,
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Elevated button');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: isswitch
                    ? Colors.green
                    : Colors
                        .blueGrey, // Set the text color of the ElevatedButton to white
              ),
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('outlined button');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: isswitch
                    ? Colors.green
                    : Colors
                        .blueGrey, // Set the text color of the ElevatedButton to white // Set the text color of the OutlinedButton to white
              ),
              child: const Text('Outlined button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: isswitch
                    ? Colors.green
                    : Colors
                        .blueGrey, // Set the text color of the TextButton to white
              ),
              child: const Text(' TextButton '),
            ),
            // ignore: prefer_const_constructors
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is the row widget');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Center the icons within the row
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isswitch,
              onChanged: (bool newBool) {
                setState(() {
                  isswitch = newBool;
                });
              },
              activeColor: Colors
                  .green, // Set the background color of the Switch to green
            ),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://cdn.dribbble.com/users/2927199/screenshots/5698774/media/6a9b208f78edf25462ec535342ce0cba.jpg')
          ],
        ),
      ),
    );
  }
}
