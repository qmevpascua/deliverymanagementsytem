import 'package:customer_delivery_system/utils/colors.dart';
import 'package:customer_delivery_system/widgets/big_text.dart';
import 'package:customer_delivery_system/widgets/icon_and_text_widget.dart';
import 'package:customer_delivery_system/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPageBody extends StatefulWidget {
  const ItemPageBody({Key? key}) : super(key: key);

  @override
  State<ItemPageBody> createState() => _ItemPageBodyState();
}

class _ItemPageBodyState extends State<ItemPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
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
          margin: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index.isEven?AppColors.shapecolor:AppColors.shapecolor2,
              image: DecorationImage(
                  // fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/5gallon.png"
                  )
              )

          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(

            height: 130,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 33),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white,

            ),
            child: Container(
              padding: EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "5 Gallon Container", size: 18,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.shapecolor2,size: 15,)),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5", color: AppColors.textcolorlogin, size: 10,),
                      SizedBox(width: 10,),
                      SmallText(text: "123", color: AppColors.textcolorlogin, size: 12),
                      SizedBox(width: 5,),
                      SmallText(text: "comments", color: AppColors.textcolorlogin, size: 12),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          color: Colors.black87,
                          iconColor: AppColors.shapecolor)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
