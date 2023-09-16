import 'package:flutter/material.dart';

class CustomSubTitle extends StatelessWidget {
  final Size size;
  final String subTitle;
  final bool isSeeAll;

  const CustomSubTitle({
    super.key,
    required this.size,
    required this.subTitle,
    required this.isSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.95,
      child: Row(
        children: [
          Text(
            subTitle,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded,size: 20,),
          const Spacer(),
          if(isSeeAll)
            InkWell(
              onTap: (){

              },
              child: const Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
