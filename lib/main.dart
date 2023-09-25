import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      home: NavigationExample(),

    );
  }
  }

  class NavigationExample extends StatefulWidget{
    @override
    State<NavigationExample> createState()=> _NavigationExampleState();
 }
 class _NavigationExampleState extends State< NavigationExample>{
   int currentPageIndex=0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: NavigationBar(
         onDestinationSelected: (int index){
           setState(() {
             currentPageIndex=index;
           });
         },
         selectedIndex: currentPageIndex,
         backgroundColor: Colors.amber,
         destinations: [
           NavigationDestination(
               icon: Icon(Icons.home_outlined),
               label: 'Home',
               selectedIcon: Icon(Icons.home),
           ),
           NavigationDestination(
               icon: Icon(Icons.school_outlined),
               label: 'School' ,
               selectedIcon: Icon(Icons.school),
           ),
           NavigationDestination(
               icon: Icon(Icons.business_outlined),
               label: 'Business',
               selectedIcon: Icon(Icons.business),
           ),
         ],
       ),
         body:<Widget>[
           Container(
             color: Colors.cyan,
             alignment: Alignment.center,
             child: Text('Page 1'),
         ),
           Container(
             color: Colors.cyanAccent,
             alignment: Alignment.center,
             child: Text('Page2'),
         ),
           Container(
             color: Colors.amberAccent,
             alignment:  Alignment.center,
             child: Text('Page3'),
         ),
       ][currentPageIndex]

     );
   }
}




