import 'package:flutter/material.dart';
import 'package:health_care_flutter/components/custom_container.dart';

import '../../SizeConfig.dart';
import '../../constants.dart';

class SpecialistContainer extends StatelessWidget {
  const SpecialistContainer({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.image,
  }) : super(key: key);
  final String text1, text2, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(10),
      width: SizeConfig.screenWidth * 0.7,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
              height: getProportionateScreenHeight(10),
              width: SizeConfig.screenWidth * 0.6,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDBDBDB).withOpacity(0.55),
                    blurRadius: 34,
                    offset: Offset(8, 8),
                  )
                ],
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(7) / 6),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: nameColour.withOpacity(0.3),
                              fontSize: 10,
                            ),
                      ),
                      Text(
                        text2,
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: nameColour,
                            ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            size: getProportionateScreenWidth(4),
                            color: color2ter,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            size: getProportionateScreenWidth(4),
                            color: color2ter,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            size: getProportionateScreenWidth(4),
                            color: color2ter,
                          ),
                          Icon(
                            Icons.star,
                            size: getProportionateScreenWidth(4),
                            color: color2ter,
                          ),
                          Icon(
                            Icons.star,
                            size: getProportionateScreenWidth(4),
                            color: color2ter,
                          ),
                        ],
                      ),
                      CustomContainer(
                        onTap: () {},
                        borderwidth: 1,
                        color: Colors.white,
                        bordercolor: color2ter,
                        textcolor: color2ter,
                        text: "Book",
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getProportionateScreenHeight(7),
              width: getProportionateScreenHeight(7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Color(0xffDBDBDB).withOpacity(0.55),
                    blurRadius: 34,
                  )
                ],
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(7) / 6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
