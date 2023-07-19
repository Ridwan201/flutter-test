import 'package:flutter/material.dart';
class Homeabc extends StatefulWidget {
  const Homeabc({super.key});
  @override
  State<Homeabc> createState() => _HomeabcState();
}
// expanded example
class _HomeabcState extends State<Homeabc> {
  @override
  Widget build(BuildContext context) {
    //creating a imagelist for list viewbuilder
    List <String> imageList =[ 'assets/images/1.PNG','assets/images/2.jpg','assets/images/3.jpg','assets/images/4.jpg'] ;
    
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          child: Column(
            children: [
                DrawerHeader(child: Text('Ridwan')),
                ListTile(leading: Icon(Icons.home),title: Text('Home'),),
                ListTile(leading: Icon(Icons.settings),title: Text('Setting'),),
                ListTile(leading: Icon(Icons.balance),title: Text('Balance cheque'),),
                ListTile(leading: Icon(Icons.person),title: Text('Profile'),),
                ListTile(leading: Icon(Icons.logout),title: Text('Sign Out'),),
                ]),),
        appBar: AppBar(
          elevation: 10.0,
          title: const Text('Flutter Toast with ListTile'),
        ),
        body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context,Index){
            return Image.asset(imageList[Index]);
          })
        ),);
            }}