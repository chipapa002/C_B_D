import 'package:flutter/material.dart';

import 'ads_cards.dart';
import 'header_text.dart';

class FundingWidget extends StatefulWidget {
  const FundingWidget({super.key});

  @override
  State<FundingWidget> createState() => _FundingWidgetState();
}

class _FundingWidgetState extends State<FundingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        HeaderText(title: "Secure Funding", description: "Securing funding is a crucial step for businesses, whether it's to start a new venture, expand operations, or financial challenges."),
        const SizedBox(height: 18,),
        Row(
          children: [
            Expanded(child: AdsCards(image_path: "assets/icons/seda.png",  title: "Seda", description: "A South African agency that supports small businesses with training, funding access, and mentorship to promote economic growth and job creation.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/nyda.jpg",title: "NYDA", description: "A South African organization empowering youth through grants, skills development, and entrepreneurial support to boost job creation and business growth.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/SME.jpg",title: "SME South Africa", description: "An online platform offering resources, news, and insights to help South African SMEs grow and stay competitive.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/sefa.png",title: "SEFA", description: "Provides loans and financial assistance for small businesses and co-operatives, with a focus on underserved communities and early-stage enterprises.", buttonText: "Visit")),
           

            
            //Expanded(child: MatrixCards(title: "E-commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
            //Expanded(child: MatrixCards(title: "Traditional commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
          ],
        ),
        const SizedBox(height: 18,),
      ],
    );
  }
}