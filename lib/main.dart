import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexClicked = 0;
  List<Widget> pages = const [
    Center(
      child: Text(
        'Chats',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ),
    Center(
      child: Text(
        'Updates',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ),
    Center(
      child: Text(
        'Communities',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ),
    Center(
      child: Text(
        'Calls',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(115, 95, 50, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        title: const Text('ChatBox'),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {
              // print('Working as expected');
            },
            icon: const Icon(Icons.cast),
          ),
          IconButton(
            // iconSize: 29,
            splashRadius: 25,
            onPressed: () {
              // print('Working as expected');
            },
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            iconSize: 29,
            splashRadius: 25,
            onPressed: () {
              // print('Working as expected');
            },
            icon: const Icon(Icons.search_outlined),
          ),
          IconButton(
            // iconSize: 29,
            splashRadius: 25,
            onPressed: () {
              // print('Working as expected');
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/tanjiro.jpg'),
            ),
          ),
        ],
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(40, 42, 58, 1),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        iconSize: 30,
        currentIndex: indexClicked,
        onTap: (value) => setState(() {
          indexClicked = value;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates_outlined), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined), label: 'Communities'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined), label: 'Calls'),
        ],
      ),
    );
  }
}
