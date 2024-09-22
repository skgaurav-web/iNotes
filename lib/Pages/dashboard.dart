import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
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
    _page1 = Page1();
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
          backgroundColor: Colors.orange,
          title: const Text("Dashboard"),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.orange,
          items: const [
            TabItem(icon: Icons.dashboard, title: 'Dashboard'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.person_rounded, title: 'Profile'),
          ],
          onTap: (int i) => changeTab(i),
        ));
  }
}
List<DropdownMenuItem<String>> get items{
  List<DropdownMenuItem<String>> menuItems = [
    
    DropdownMenuItem(child: Text("Select Priority"),value: "Select Priority"),
    DropdownMenuItem(child: Text("High"),value: "High"),
    DropdownMenuItem(child: Text("Medium"),value: "Medium"),
    DropdownMenuItem(child: Text("Low"),value: "Low"),

  ];
  return menuItems;
}
String selectedValue = "Select Priority";
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Topic',
              label: Text('Topic')
              
            ),
          ),
          
          ),
            Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Details',
              label: Text('Details'),
              
            ),
          ),
          
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    
                  ),
                  dropdownColor: Colors.white,
                  value: selectedValue,
                  
                  onChanged: (String? newValue) {
                    selectedValue = newValue!;
                  },
                  items: items),
         ),
         AnimatedButton(
          onPress: () {
            
          },
              height: 70,
              width: 200,
              text: 'SUBMIT',
              
              selectedTextColor: Colors.black,
              
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
            ),
         TextButton(
          onPressed: () {
           
         },
         style: ButtonStyle(


         ),
          child: Text('Save'))
        ],
      ));
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
