import 'package:flutter/material.dart';
import 'package:zumarada/ui/components/build_onboarding_content_section.dart';
import 'package:zumarada/ui/components/build_onboarding_footer_section.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          BuildOnBoardingContentSection(),
          BuildOnBoardingFooterSection(),
        ],
      ),
    );
  }
}
