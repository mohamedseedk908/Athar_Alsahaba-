import 'package:athar_alsahaba/features/home/data/models/historical_model_periods.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class HistoricalPeriod extends StatelessWidget {
   HistoricalPeriod({super.key,  required this.models});
   final HistoricalPeriodsModel models;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.deepGrey,
              blurRadius: 10,
              offset:  Offset(0, 5)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           SizedBox(
            height: 47,
            width: 62,
            child:   Text(
              models.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(
            width: 25,
          ),
          Container(
            decoration:   BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(models.image),
              ),
            ),
            height: 64,
            width: 47,
          ),
           SizedBox(width: 16,),
        ],
      ),

    );
  }
}
