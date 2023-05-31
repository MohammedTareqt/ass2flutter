import 'package:ass3flutter/views/screens/all_tasks_screen.dart';
import 'package:ass3flutter/views/screens/complete_tasks.dart';
import 'package:ass3flutter/views/screens/incomplete_tasks.dart';
import 'package:flutter/material.dart';

class Large extends StatefulWidget {
  Large();

  @override
  State<Large> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<Large> {
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
              updateScreen();
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "All Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.done), label: "Complete Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cancel), label: "InComplete Tasks"),
            ]),
        appBar: AppBar(
          title: const Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 0;
                    pageController.jumpToPage(0);
                    updateScreen();
                  },
                  child: const Text('All Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 1;
                    pageController.jumpToPage(1);
                    updateScreen();
                  },
                  child: const Text('Complete Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 2;
                    pageController.jumpToPage(2);
                    updateScreen();
                  },
                  child: const Text('InComplete Tasks'),
                ),
              ],
            )),
            Expanded(
                child: PageView(
              controller: pageController,
              children: [
                AllTasksScreen(updateScreen),
                CompleteTasksScreen(updateScreen),
                InCompleteTasksScreen(updateScreen)
              ],
            ))
          ],
        ));
  }
}
