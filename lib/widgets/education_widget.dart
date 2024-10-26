import 'package:flutter/material.dart';

import 'ads_cards.dart';
import 'header_text.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({super.key});

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        HeaderText(title: "Financial Education", description: "Financial education equips you with the knowledge and skills to make informed decisions about business finances, leading to improved financial well-being."),
        const SizedBox(height: 18,),
        Row(
          children: [
            Expanded(child: AdsCards(image_path: "assets/icons/fnb.png",  title: "FNB", description: "A South African agency that supports small businesses with training, funding access, and mentorship to promote economic growth and job creation.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/hollard.png",title: "Hollard", description: "A South African organization empowering youth through grants, skills development, and entrepreneurial support to boost job creation and business growth.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/unisa.png",title: "UNISA Business School", description: "An online platform offering resources, news, and insights to help South African SMEs grow and stay competitive.", buttonText: "Visit")),
            
          ],
        ),
        const SizedBox(height: 18,),
      ],
    );
  }
}