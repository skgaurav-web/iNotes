import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;

  late Widget _currentPage;

  @override
  void initState() {
   
    super.initState();
    _page1 =  Page1();
    _page2 = Page2();
    _page3 = Page3();

    _pages = [_page1, _page2, _page3];

    _currentPage = _page1;
  }

  void changeTab(int index) {
    setState(() {
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: _currentPage,
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.dashboard, title: 'Dashboard'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.person_rounded, title: 'Profile'),
          ],
          onTap: (int i) => changeTab(i),
        ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("page1"),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("page2"),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("page3"),
    );
  }
}
