import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/home/components/profile_container.dart';
import 'package:health_care_flutter/home/components/specialist_container.dart';
import 'package:health_care_flutter/home/components/suggestion.dart';

import '../../constants.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileContainer(),
        SizedBox(
          height: getProportionateScreenHeight(2),
        ),
        buldContent(context)
      ],
    );
  }

  Padding buldContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What are you doing today?",
            style: Theme.of(context).textTheme.bodyText2.apply(
                  color: nameColour,
                ),
          ),
          Suggestion(
              icon: "assets/icons/brain.svg",
              text1: "Doctors",
              text2: "Brain Checkout",
              text3: "Have an appointment today",
              containertext: "View",
              color: errorColor),
          Divider(
            height: 1,
            color: color4,
          ),
          Suggestion(
              icon: "assets/icons/brain.svg",
              text1: "Pharmach",
              text2: "Purchase Prescription",
              text3: "Don't forget to bring the list with you",
              containertext: "Set",
              color: color1ter),
          Divider(
            height: 1,
            color: color4,
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          Text(
            "Visit a Specialists",
            style: Theme.of(context).textTheme.bodyText2.apply(
                  color: nameColour,
                ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          SizedBox(
            height: getProportionateScreenHeight(11),
            child: ListView.builder(
              clipBehavior: Clip.none,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: getProportionateScreenWidth(10),
                  ),
                  child: SpecialistContainer(
                      text1: "Physician",
                      text2: "Svyatoslav Taushev",
                      image: "assets/images/su.jpg"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
