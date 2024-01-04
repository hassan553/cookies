import 'package:flutter/material.dart';

class TemplateParams {}

class CodiaPage extends StatefulWidget {
  const CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: 370.53,
        height: 415,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 309.27,
              top: 105.73,
              height: 309.27,
              child: Image.asset(
                'assets/images/cart.png',
                width: 309.27,
                height: 309.27,
              ),
            ),
            Positioned(
              left: 0,
              width: 343.95,
              top: 71.05,
              height: 343.95,
              child: Image.asset(
               'assets/images/cart.png',
                width: 343.95,
                height: 343.95,
              ),
            ),
            Positioned(
              left: 251.42,
              width: 83.98,
              top: 99.64,
              height: 83.07,
              child: Image.asset(
           'assets/images/cart.png',
                width: 83.98,
                height: 83.07,
              ),
            ),
            Positioned(
              left: 267.84,
              width: 61.27,
              top: 107.66,
              height: 61.27,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 61.27,
                    top: 0,
                    height: 61.27,
                    child: Image.asset(
                 'assets/images/cart.png',
                      width: 61.27,
                      height: 61.27,
                    ),
                  ),
                  const Positioned(
                    left: 22.22,
                    top: 21.2,
                    child: Text(
                      '24',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15.42,
                          color: Color(0xffffffff),
                          fontFamily: 'Outfit-SemiBold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 309.27,
              width: 61.27,
              top: 199.19,
              height: 61.27,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 61.27,
                    top: 0,
                    height: 61.27,
                    child: Image.asset(
                    'assets/images/cart.png',
                      width: 61.27,
                      height: 61.27,
                    ),
                  ),
                  const Positioned(
                    left: 22.16,
                    top: 21.2,
                    child: Text(
                      '32',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15.42,
                          color: Color(0xff000000),
                          fontFamily: 'Outfit-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 182.09,
              width: 61.27,
              top: 46,
              height: 61.27,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 61.27,
                    top: 0,
                    height: 61.27,
                    child: Image.asset(
                   'assets/images/cart.png',
                      width: 61.27,
                      height: 61.27,
                    ),
                  ),
                  const Positioned(
                    left: 23.12,
                    top: 21.2,
                    child: Text(
                      '12',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15.42,
                          color: Color(0xff000000),
                          fontFamily: 'Outfit-Medium',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 117.54,
              top: 161.61,
              child: Text(
                '33.88',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 92.49,
                    color: Color(0xffffffff),
                    fontFamily: 'Outfit-Medium',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Positioned(
              left: 117.54,
              top: 268.56,
              child: Text(
                '24 Unit',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 23.12,
                    color: Color(0x77ffffff),
                    fontFamily: 'Outfit-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Positioned(
              left: 220.63,
              top: 182.81,
              child: Text(
                'USD',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 19.27,
                    color: Color(0xff979797),
                    fontFamily: 'Outfit-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 118,
              width: 93.44,
              top: 310,
              height: 19,
              child: Stack(
                children: [
                  const Positioned(
                    left: 20.44,
                    top: 0,
                    child: Text(
                      'Most Sales',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15.42,
                          color: Color(0xffe57f34),
                          fontFamily: 'Outfit-Regular',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 13,
                    top: 3,
                    height: 13,
                    child: Image.asset(
                      'assets/images/cart.png',
                      width: 13,
                      height: 13,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 108,
              top: 0,
              child: Text(
                'Select Quantity',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 24,
                    color: Color(0xffffffff),
                    fontFamily: 'Outfit-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
