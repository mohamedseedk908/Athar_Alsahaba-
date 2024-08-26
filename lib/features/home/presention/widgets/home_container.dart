import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:athar_alsahaba/features/home/data/models/historical_model_periods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_container_period.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});


  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection(FireBaseStrings.historicalPeriods).get() ,
      builder: (context,snapshot) {
        List<HistoricalPeriodsModel> historicalPeriods = [];
        for(int i = 0; i <snapshot.data!.docs.length ;i++){
          historicalPeriods.add(HistoricalPeriodsModel.fromJson(snapshot.data!.docs[i]));
        }
        return SizedBox(
          height: 96,
          child: ListView.separated(
            scrollDirection:Axis.horizontal ,
            separatorBuilder: (context, index) {
              return SizedBox(width: 10,);
            },
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return HistoricalPeriod(models: historicalPeriods[index],);

            },
          ),
        );
      }
    );
  }
}

