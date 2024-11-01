import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
         title: Text("                Search",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),           
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF0E3F6),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF9139BA), width: 2),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            hintText: "Search for a vendor or product",hintStyle: TextStyle(color: Colors.grey))),
            SizedBox(height: 7,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.timelapse,color: Colors.grey,),
                  Text('No recent search',style: TextStyle(color: Colors.grey,fontSize: 12),)
                ],
              ),
            )
           
          ],
        ),
      ),);
  }
}