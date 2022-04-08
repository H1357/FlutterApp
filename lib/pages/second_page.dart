import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  void _menuOpen(){ // main menu
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(title: Text('manu'),),
            body: Column(

              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0)),
                Row(
                    children:[

                      ElevatedButton.icon(label:Text('Go to Main Page'), onPressed: (){
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                      }, icon: Icon(Icons.account_tree_outlined)),

                    ]
                ),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0)),
                Row(children: [

                  TextButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/to_list_in', (route) => false);
                  }, child: Text('Go to list')),
                ],),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0)),
                Row(children: [

                  OutlinedButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/to_list_in', (route) => false);
                  }, child: Text('Go to settings')),
                ],),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0)),
                Row(children: [

                  OutlinedButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/to_list_in', (route) => false);
                  }, child: Text('Go to world raitings list')),
                ],),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0)),
                Row(children: [

                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/to_list_in', (route) => false);
                  }, child: Text('Chat of events')),
                ],),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 10, 0.0, 0.0)),
                Row(children: [

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.blue,
                        // padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 14),
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(context, '/to_list_in', (route) => false);

                      }, child: Text('About')),
                ],),
                Row(children: [

                ],),
                Row(children: [

                ],),
                Row(children: [

                ],),

              ],
            ),
          );
        })
    );
  }


  @override
  Widget build(BuildContext context){

    return Scaffold(

        appBar: AppBar(

        backgroundColor: Colors.grey[900],
        title: const Text('nikeName'),
        centerTitle: true,
          actions: [  // main menu
            IconButton(
                onPressed: _menuOpen,
                icon: Icon(Icons.menu_outlined)
            )
          ],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center (child: Text('Your level now', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('00', style: TextStyle(color:  Colors.black, fontSize: 50),),
        ),
        Center (child: Text('Your max level', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('00', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('Your participant  days score', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('00', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('Your invite link score', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('00', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('Your complience score', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),
        Center (child: Text('00', style: TextStyle(color:  Colors.black, fontSize: 20),),
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                  ),
                  onPressed: () {

                Navigator.pushNamed(context, '/to_list_in');
              }, child: Text('ListIN')),
              //Padding(padding: EdgeInsets.fromLTRB(10.0, 10, 10.0, 10.0)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(

                  padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                  ),

                  onPressed: () {

                Navigator.pushNamed(context, '/to_list_out');
              }, child: Text('ListOUT'))
        ],),



      ],
    )
    ); }
}