import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/model/home_foryou_model.dart';
import 'package:signin_signup/screens/home/category_controller.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key,required this.size}) : super(key: key);
final Size size;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      init: Get.put(CategoryController()),
      builder: (controller) {
        return SizedBox(
          height: size.height * 0.1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                      controller.selectedCategoryIndex = index;
                      controller.getCategoryView(size, HomeForYouModel.categoriesName[index]);
                      },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          HomeForYouModel.categoriesImg[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        HomeForYouModel.categoriesName[index],
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: 12,
                            height: 3.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: controller.selectedCategoryIndex!=index?Colors.white12.withOpacity(0.6):Colors.white12.withOpacity(0.1),
                        ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            itemCount: HomeForYouModel.categoriesImg.length,
          ),
        );
      }
    );
  }
}
