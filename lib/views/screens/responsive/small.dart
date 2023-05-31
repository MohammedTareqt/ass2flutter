import 'package:ass3flutter/views/screens/all_tasks_screen.dart';
import 'package:ass3flutter/views/screens/complete_tasks.dart';
import 'package:ass3flutter/views/screens/incomplete_tasks.dart';
import 'package:flutter/material.dart';

class Small extends StatefulWidget {
  Small();

  @override
  State<Small> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<Small> {
  PageController pageController = PageController();

  int pageIndex = 0;
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (v) {
            pageIndex = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                pageIndex = 0;
                pageController.jumpToPage(0);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('All Tasks'),
            ),
            ListTile(
              onTap: () {
                pageIndex = 1;
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('Complete Tasks'),
            ),
            ListTile(
              onTap: () {
                pageIndex = 2;
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('InComplete Tasks'),
            )
          ],
        ),
      ),
    );
  }
}
