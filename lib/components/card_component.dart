import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_portfolio/components/custom_card_button.dart';
import 'package:student_portfolio/constants/constants.dart';

Widget customCoursesCard(
  color,
  textColorprice,
  textColorbold,
  textColorfade,
  textcategory,
  textSub,
  textSubDescription,
  textViews,
  textcoursename,
  BuildContext context,
) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: Colors.grey.shade400, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
      ),
      width: screenWidth * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.175,
              width: screenWidth * 0.32,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 12)
                ],
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: Image.asset(
                'lib/assets/card_image1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.019,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth:
                          screenWidth * 0.38, 
                    ),
                    child: Text(
                      textcoursename,
                      style: GoogleFonts.urbanist(
                        color: textColorbold,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textSub,
                              style: GoogleFonts.urbanist(
                                color: textColorbold,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              textSubDescription,
                              style: GoogleFonts.urbanist(
                                color: textColorbold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        CustomCardButton(
                            text: "A",
                            color: Colors.white,
                            textColor: Colors.white,
                            width: 0.16,
                            function: () {}),
                      ]),
                ]),
          ],
        ),
      ));
}
