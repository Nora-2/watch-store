import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signin_signup/Features/home/data/models/watch_Item_model.dart';
import 'package:signin_signup/Features/product_details/presentation/manger/product_details_cubit.dart';
import 'package:signin_signup/Features/product_details/presentation/manger/product_details_states.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';
import 'package:signin_signup/core/widgets/custom_rating_stars.dart';


class ProductDetailsScreen extends StatefulWidget {
  final WatchItem item;
  const ProductDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => ProductDetailsCubit(),
      child: BlocConsumer<ProductDetailsCubit,ProductDetailsStates>(
        builder:(context, state) =>  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Image.asset(widget.item.image,
                                width: size.width * 0.8,
                                height: size.height * 0.4,
                                fit: BoxFit.contain),
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    ProductDetailsCubit.get(context).changeFavorites(widget.item);
                                  },
                                  icon: widget.item.isFavorite ?
                                   SvgPicture.asset('assets/images/heart_check.svg',width: 30,) :
                                  SvgPicture.asset('assets/images/heart.svg',width: 30,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        widget.item.watchName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.item.watchDescription,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      const Text(
                        'Available',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3A3AD3),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          widget.item.price,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3A3AD3),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      // create dropDownButton of quantities.
                      Container(
                        width: size.width * 0.35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Quantity:  ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            DropdownButton(
                                items: const <DropdownMenuItem>[
                                  DropdownMenuItem(value: 1, child: Text('1')),
                                  DropdownMenuItem(value: 2, child: Text('2')),
                                  DropdownMenuItem(value: 3, child: Text('3')),
                                ],
                                value: ProductDetailsCubit.get(context).quantity,
                                dropdownColor: Colors.black,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                underline: Container(),
                                onChanged: (value) {
                                  setState(() {
                                    ProductDetailsCubit.get(context).changeQuantity(value);
                                  });
                                },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      CustomMainButton(
                        size: size,
                        backgroundColor: Colors.black,
                        text: 'Add to cart',
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      CustomMainButton(
                        size: size,
                        backgroundColor: Colors.white,
                        text: 'Buy Now',
                        textColor: Colors.black,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const CustomRatingStars(),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const Text(
                            '4.5 of 5',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                            AssetImage('assets/images/profile_picture.png'),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          const Text('Mohammed',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/images/edit_icon.svg'),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.007,
                      ),
                      const CustomRatingStars(),
                      Row(
                        children: [
                           const Text(
                            '  Very Good Product.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Text(
                              'Was This Good For You ?',
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ))
        , listener: (context, state) {},
      ),
    );
  }
}

