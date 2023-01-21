import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0,
        title:const  Text("Ecommerce App"),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
          )
        ],
        ),
        body: Column(children: [
        
        ],),
      ),
    );
  }
}