import 'package:customer_delivery_system/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPageBody extends StatefulWidget {
  const ItemPageBody({Key? key}) : super(key: key);

  @override
  State<ItemPageBody> createState() => _ItemPageBodyState();
}

class _ItemPageBodyState extends State<ItemPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, position){
        return _buildPageItem(position);

      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index.isEven?AppColors.shapecolor:AppColors.shapecolor2,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/5gallon.png"
                  )
              )

          ),
        )
      ],
    );
  }
}
