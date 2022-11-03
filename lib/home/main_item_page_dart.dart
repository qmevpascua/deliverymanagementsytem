import 'package:customer_delivery_system/utils/colors.dart';
import 'package:customer_delivery_system/widgets/big_text.dart';
import 'package:customer_delivery_system/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_page_body.dart';

class MainItemPage extends StatefulWidget {
  const MainItemPage({Key? key}) : super(key: key);

  @override
  State<MainItemPage> createState() => _MainItemPageState();
}

class _MainItemPageState extends State<MainItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainbgcolor,
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
                      BigText(text: "Welcome Back!", color: AppColors.shapecolor, size: 21,),
                      Row(
                        children: [
                          SmallText(text: "FirstName", color: Colors.black87, size: 12,),
                          Icon(Icons.arrow_drop_down_rounded ),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.shapecolor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ItemPageBody(),
        ],
      ),
    );
  }
}
