import 'package:flutter/material.dart';
import 'package:signin_signup/model/home_foryou_model.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ProductDetailsScreen(
                //       product: forYouList[index],
                //     ),
                //   ),
                // );
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      categoriesImg[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    categoriesName[index],
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 12,
                        height: 3.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                ],
              ),
            ),
            const SizedBox(
              width: 4,
            ),
          ],
        ),
        itemCount: categoriesImg.length,
      ),
    );
  }
}
