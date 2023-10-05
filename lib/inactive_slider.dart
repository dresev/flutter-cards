import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class InactiveSlider extends StatelessWidget {
  const InactiveSlider({
    Key? key,
    required this.max,
    required this.value,
    required this.measurement,
    required this.title,
    required this.style,
    required this.showLabel,
    required this.color,
  }) : super(key: key);

  final String title, measurement;
  final double max, value;
  final TextStyle style;
  final bool showLabel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          showLabel
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.bodySmall),
                        const Spacer(),
                        Text('${value.round()} ', style: style),
                        Text(measurement, style: style)
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                )
              : Container(color: Theme.of(context).scaffoldBackgroundColor),
          SfSliderTheme(
            data: SfSliderThemeData(
              tooltipBackgroundColor: Colors.transparent,
              activeTrackHeight: 8,
              inactiveTrackHeight: 8,
              activeDividerRadius: 4,
              inactiveDividerRadius: 4,
              activeDividerColor: Colors.white,
              inactiveTrackColor: Theme.of(context).hoverColor,
              thumbRadius: 0,
              trackCornerRadius: 10,
              thumbStrokeWidth: 2,
              overlayRadius: 0,
              disabledActiveTrackColor: color,
              disabledInactiveTrackColor: Theme.of(context).hoverColor,
            ),
            child: SfSlider(
              min: 0.0,
              max: max,
              value: value,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}