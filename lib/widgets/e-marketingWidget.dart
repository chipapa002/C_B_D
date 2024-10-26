import 'package:flutter/material.dart';

import 'ads_cards.dart';
import 'header_text.dart';

class MarketingWidget extends StatefulWidget {
  const MarketingWidget({super.key});

  @override
  State<MarketingWidget> createState() => _MarketingWidgetState();
}

class _MarketingWidgetState extends State<MarketingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        HeaderText(title: "Digital Marketing", description: "Digital marketing is the promotion of products or services using digital channels, such as the internet, search engines, social media, email, and mobile apps"),
        const SizedBox(height: 18,),
        Row(
          children: [
            Expanded(child: AdsCards(image_path: "assets/icons/facebook.webp",  title: "Facebook Ads", description: "Facebook Ads are a popular and effective way to promote products, services, or brand awareness on the Facebook platform.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/google.webp",title: "Google Ads", description: "Google Ads is an online advertising platform allowing businesses to create ads that appear on YouTube and other Google properties.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/x.jpeg",title: "X Ads", description: "X Ads are a popular advertising platform that allows you to promote your content on the X social media platform.", buttonText: "Visit")),
            Expanded(child: AdsCards(image_path: "assets/icons/instagram.jpeg",title: "Instagram Ads", description: "Instagram Ads are a popular advertising platform that allows you to promote your content on the X social media platform.", buttonText: "Visit")),

            
            //Expanded(child: MatrixCards(title: "E-commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
            //Expanded(child: MatrixCards(title: "Traditional commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
          ],
        ),
        const SizedBox(height: 18,),
      ],
    );
  }
}