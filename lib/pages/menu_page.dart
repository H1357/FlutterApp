import 'package:flutter/material.dart';



class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _menuOpen_2(context);
  }
}

 _menuOpen_2(context){ // main menu
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