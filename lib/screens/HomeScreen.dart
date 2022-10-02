import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_activity_outlined)),
                Tab(icon: Icon(Icons.devices_outlined)),
                Tab(icon: Icon(Icons.manage_accounts_outlined)),
                Tab(icon: Icon(Icons.history_outlined)),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Image.asset(
                'assets/images/signature.png',
                height: 25,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
              const Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.local_activity_outlined),
              Icon(Icons.devices_outlined),
              Icon(Icons.manage_accounts_outlined),
              Icon(Icons.history_outlined),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.black87,
            child: const Icon(Icons.qr_code_scanner),
          ),
        ),
      ),
    );
  }
}