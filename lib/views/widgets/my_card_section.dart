import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {

  late PageController pageController;
   int currentIndex = 0;

   @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    pageController.addListener(() { 
      currentIndex = pageController.page!.round();
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 420,
          child: Text('My Card',
          style: AppStyles.styleSeminBold20),
         
        ),
        const SizedBox(height: 20,),
         MyCardPageView(pageController: pageController,),
         const SizedBox(height: 20,),
          DotsIndicator(currentIndex: currentIndex,),
      ],
    );
  }
}