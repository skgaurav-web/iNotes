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

   int _currentIndex=0;
  late Widget _currentPage;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page1 = Page1();
    _page2 = Page2();
    _page3 = Page3();

    _pages = [_page1, _page2, _page3];

    _currentIndex = 0;
    _currentPage = _page1;
  }
  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage,
      appBar: AppBar(
        title: const Text("Dashboard"),
        
      ),
      bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.dashboard, title: 'Dashboard'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.person_rounded, title: 'Profile'),
      
    ],
    onTap: (int i) => changeTab(i),
  )
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page1"),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page2"),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page3"),
    );
  }
}
