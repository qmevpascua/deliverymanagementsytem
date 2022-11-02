import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainItemPage extends StatefulWidget {
  const MainItemPage({Key? key}) : super(key: key);

  @override
  State<MainItemPage> createState() => _MainItemPageState();
}

class _MainItemPageState extends State<MainItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Container(
              margin: EdgeInsets.only(top: 45,bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Welcome Back!"),
                      Text("City")
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.blue,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
