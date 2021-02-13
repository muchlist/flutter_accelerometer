import 'package:flutter/material.dart';
import 'package:flutter_sensor/widget/accelerometer_widget.dart';
import 'package:flutter_sensor/widget/gyroscope.dart';
import 'package:flutter_sensor/widget/useraccelerometer.dart';

class SensorWidget extends StatelessWidget {
  const SensorWidget();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0.9,
      direction: Axis.vertical,
      children: const <Widget>[
        AccelerometerData(),
        UserAccelerometerData(),
        GyroscopeData()
      ],
    );
  }
}
