import 'package:flutter/material.dart';
import 'package:flutter_application_1/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutterPagState();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.green, // Set the background color of the button to green
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8.0), // Set the button's border radius
          ),
        ),
        child: const Text(
          'Learn Flutter',
          style: TextStyle(
            color: Colors.white, // Set the text color to white
          ),
        ),
      ),
    );
  }
}
