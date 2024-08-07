import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
   @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
   // ignore: non_constant_identifier_names
   List<Widget> Pages = const [
     HomePage(),
     ProfilePage()

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        backgroundColor:
            Colors.green, // Set the background color of the AppBar to green
      ),
      body: Pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton pressed');
        },
        backgroundColor: Colors
            .green, // Set the background color of the FloatingActionButton to green
        shape:
            const CircleBorder(), // Make the FloatingActionButton circle-shaped
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const  [
          NavigationDestination(icon:Icon(Icons.home), label:'home'),
          NavigationDestination(icon:Icon(Icons.person), label:'profile'),

        ],
        onDestinationSelected: (int index ) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
