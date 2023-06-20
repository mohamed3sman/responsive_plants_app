import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'plant_care_custom_widget.dart';
import 'product_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1.4 / 3,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_rounded),
                      SizedBox(
                        height: 40,
                      ),
                      ProductDetails(),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/images/pic_2.png',
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plant Care',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const PlantCareCustomWidget(
                          icon: Icon(
                            Icons.water_drop_outlined,
                          ),
                          text: 'Every 3 Weeks',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const PlantCareCustomWidget(
                          icon: Icon(
                            Icons.wb_sunny_outlined,
                          ),
                          text: 'Natural Light',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const PlantCareCustomWidget(
                          icon: Icon(
                            Icons.thermostat,
                          ),
                          text: 'Minimum of 7\u2103',
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 35),
                      decoration: const BoxDecoration(
                        color: Color(0xff1a6354),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Next Watering',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 13.sp),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CircularPercentIndicator(
                              radius: 40.r,
                              lineWidth: 8.0,
                              percent: 0.8,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '8',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'days',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 13.sp,
                                    ),
                                  )
                                ],
                              ),
                              progressColor: Colors.white,
                              circularStrokeCap: CircularStrokeCap.round,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 15),
                  child: Text(
                    'Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.sp,
                    ),
                  ),
                ),
                Text(
                  'Euphorbia Eritria is a castus-like plant that\ngrows slowly and requires little\nmaintenance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
