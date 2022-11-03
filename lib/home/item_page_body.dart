import 'package:customer_delivery_system/utils/colors.dart';
import 'package:customer_delivery_system/widgets/big_text.dart';
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
          margin: EdgeInsets.only(left: 5,right: 5),
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

            height: 140,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white,

            ),
            child: Container(
              padding: EdgeInsets.only(top: 10,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "5 Gallon Container", size: 18,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.shapecolor2,size: 15,)),
                      )
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
