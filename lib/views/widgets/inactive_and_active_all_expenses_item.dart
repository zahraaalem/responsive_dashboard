import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          AllExpensesItemHeader(image:allExpensesItemModel.image
          ),
          SizedBox(height: 34,),
          Text(allExpensesItemModel.title,
          style: AppStyles.styleMedium16,),
          SizedBox(height: 8,),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14,),
          SizedBox(height: 16,),
          Text(allExpensesItemModel.price,style: AppStyles.styleSeminBold24,)
        ],
      ),
    );
  }
}


class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Color(0xff4DB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          AllExpensesItemHeader(
            imageBackgroundColor: Colors.white.withOpacity(0.1),
            imageColor: Colors.white,
            image:allExpensesItemModel.image
          ),
          SizedBox(height: 34,),
          Text(allExpensesItemModel.title,
          style: AppStyles.styleMedium16.copyWith(color:Colors.white),),
          SizedBox(height: 8,),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14.copyWith(color:Color(0xffFAFAFA)),),
          SizedBox(height: 16,),
          Text(allExpensesItemModel.price,style: AppStyles.styleSeminBold24.copyWith(color:Colors.white),)
        ],
      ),
    );
  }
}
