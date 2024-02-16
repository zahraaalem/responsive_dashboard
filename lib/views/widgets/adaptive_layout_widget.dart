import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdaptiveLayout
 extends StatelessWidget {
  const AdaptiveLayout
  ({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, Constraints) {
          if(Constraints.maxWidth > 900){
            return desktopLayout(context);
          }
          else if(Constraints.maxWidth > 600){
            return tabletLayout(context);
          }
          else{
            return mobileLayout(context);
          }
        }
      );
  }
}