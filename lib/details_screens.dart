import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_couse_app_ui/constant.dart';

import 'course_content.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color(0xfff5f4ef),
          image: DecorationImage(
              image: AssetImage('assets/images/ux_big.png'),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                      ),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ClipPath(
                    clipper: BestSellerCliper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: const EdgeInsets.only(
                          left: 10, right: 20, top: 5, bottom: 5),
                      child: Text(
                        'BestSeller'.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Nunito',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Design Thinking',
                    style: kHeadingextStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/person.svg',
                        color: const Color(0xffffa534),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '18k',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        color: const Color(0xffffa534),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '4.8',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '\$50 ',
                          style: kHeadingextStyle.copyWith(fontSize: 32),
                        ),
                        TextSpan(
                          text: '\$70',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red.withOpacity(0.5),
                            decorationThickness: 3,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Course content',
                            style: kTitleTextStyle,
                          ),
                          CourseContent(
                            number: '01',
                            title: 'Welcome to course',
                            duration: 5.32,
                            isDone: true,
                          ),
                          CourseContent(
                            number: '02',
                            duration: 19.22,
                            title: 'Design Thinking into.',
                            isDone: true,
                          ),
                          CourseContent(
                            number: '03',
                            duration: 15.35,
                            title: 'Design Thinking Process',
                          ),
                          CourseContent(
                            number: '04',
                            duration: 5.35,
                            title: 'Customer Perspective',
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 5),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: kTextColor.withOpacity(0.20),
                              offset: const Offset(0, 4),
                              blurRadius: 50,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(14),
                              height: 56,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xffffedee),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/shopping-bag.svg'),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: kBlueColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height * 0.5);

    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
