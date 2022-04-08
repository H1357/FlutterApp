import 'package:flutter/material.dart';

class ListInClass extends StatefulWidget {
  const ListInClass({Key? key}) : super(key: key);

  @override
  State<ListInClass> createState() => _ListInClassState();
}

class _ListInClassState extends State<ListInClass> {

  String userToDo='';
  List listIn = [];


  @override
  void initState(){
    super.initState();
    listIn.addAll(['first','second']);
  }

/*
  void _drowerOpen(){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: const Text('Drawer Demo'),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Drawer Header',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
          );
          }
          )
    );
  }
  void _menuOpen2(){ // main menu
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(title: Text('manu'),),
            body:
                Container (
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  child: ElevatedButton.icon(label:Text('Go to Main Page'), onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  }, icon: Icon(Icons.account_tree_outlined)),
                ),


          );

        })
    );
  }

*/
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
        title: const Text('List in'),
        centerTitle: true,
        actions: [  // main menu
          IconButton(
              onPressed: _menuOpen,
              icon: Icon(Icons.menu_outlined)
          )
        ],
      ),
      body: ListView.builder(
          itemCount: listIn.length,
          itemBuilder: (BuildContext context, int index){
            return Dismissible(
                key: Key(listIn[index]),
                child: Card(
                  child: ListTile(
                    title:  Text(listIn[index]),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.accessibility_sharp,
                      color: Colors.deepPurpleAccent
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                      //setState(() {
                      //  listIn.removeAt(index);
                      //});
                    },
                  ),
                  )
                ),
                onDismissed: (direction) {
                  setState(() {
                    listIn.removeAt(index);
                  });
            },
            );
          }),
      /*
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title:  Text('add hand'),
              content: TextField(
                onChanged: (String value) {
                  userToDo = value;

                },
              ),
              actions: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    listIn.add(userToDo);
                  });
                  Navigator.of(context).pop(); // Close pop up window after tap button
                }, child: Text('add'))
              ],
            );
          });

        },
        child: Icon(
          Icons.add_box,
          color: Colors.greenAccent
        ),
      ),
      */

    );
  }
}