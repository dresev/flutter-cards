import 'package:cards/inactive_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h),
          Container(
            height: 20.h,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('2343 ',
                        style: Theme.of(context).textTheme.titleLarge),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('actual',
                            style: Theme.of(context).textTheme.labelSmall),
                        Text('Kcals',
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('diet',
                            style: Theme.of(context).textTheme.headlineMedium),
                        Text('/ 1750 kcals',
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const InactiveSlider(
                  max: 100,
                  value: 40,
                  measurement: 'measurement',
                  title: 'title',
                  style: TextStyle(),
                  showLabel: false,
                  color: Color(0xFF2bd98e),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Proteinas',
                            style: Theme.of(context).textTheme.bodySmall),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('25',
                                style: Theme.of(context).textTheme.titleSmall),
                            Text('%',
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Carbs',
                            style: Theme.of(context).textTheme.bodySmall),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('25',
                                style: Theme.of(context).textTheme.titleSmall),
                            Text('%',
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Grasas',
                            style: Theme.of(context).textTheme.bodySmall),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('25',
                                style: Theme.of(context).textTheme.titleSmall),
                            Text('%',
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
