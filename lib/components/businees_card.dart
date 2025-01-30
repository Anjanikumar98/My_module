import 'package:flutter/material.dart';
import '../utlis/color_constants.dart';


class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.pureBlack,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon or Logo
              CircleAvatar(
                radius: 28,
                backgroundColor: ColorConstant.primaryGreen,
                child: Icon(
                  Icons.public,
                  color: ColorConstant.pureBlack,
                  size: 28,
                ),
              ),
              SizedBox(width: 16), // Spacing between logo and text

              // Text and Details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Business Name and Rating
                  Row(
                    children: [
                      Text(
                        "Business Name",
                        style: TextStyle(
                          color: ColorConstant.pureWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: ColorConstant.primaryBlue, size: 18),
                      Text(
                        "4.0",
                        style: TextStyle(
                          color: ColorConstant.pureWhite,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),

                  // City, State & Business Type
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: ColorConstant.pureWhite.withOpacity(0.7),
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "City, State",
                        style: TextStyle(
                          color: ColorConstant.pureWhite.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "●",
                        style: TextStyle(
                          color: ColorConstant.primaryGreen,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Business Type",
                        style: TextStyle(
                          color: ColorConstant.primaryGreen,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: BusinessCard(),
));