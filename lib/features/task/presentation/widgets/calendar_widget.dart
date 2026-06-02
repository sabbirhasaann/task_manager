import 'package:flutter/material.dart';

/* constants*/
import 'package:task_manager/core/constants/app_colors.dart';
import 'package:task_manager/core/constants/app_text_styles.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final String month = 'Jan';
    // final int date = 1;
    final String day = 'Sun';
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 31,
        itemBuilder: (context, index) {
          return Container(
            width: screenSize.width * (70 / 375),
            height: 84,
            margin: EdgeInsets.only(
              right: 12,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              color: AppColors.white,
            ),
            child: Card(
              color: index == 25 ? AppColors.primary : AppColors.white,
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    month,
                    style: AppTextStyles.lexenDecaRegular11px.copyWith(
                      color: index == 25 ? AppColors.white : AppColors.black,
                    ),
                  ),
                  Text(
                    (index + 1).toString(),
                    style: AppTextStyles.lexenDecaSemiBold19px.copyWith(
                      color: index == 25 ? AppColors.white : AppColors.black,
                    ),
                  ),
                  Text(
                    day,
                    style: AppTextStyles.lexenDecaRegular11px.copyWith(
                      color: index == 25 ? AppColors.white : AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
