import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

import 'chip_icon.dart';

class AccelerometerData extends StatelessWidget {
  static final initialData = AccelerometerEvent(0, 0, 0);
  const AccelerometerData();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AccelerometerEvent>(
        stream: accelerometerEvents, // from sensors.dart
        initialData: initialData,
        builder: (context, accel) {
          final data = accel.data;

          if (data != null) {
            final x = data.x.toStringAsFixed(2);
            final y = data.y.toStringAsFixed(2);
            final z = data.z.toStringAsFixed(2);

            return ChipWithIcon(
              icon: Icon(Icons.drive_eta),
              text: "Accelerometter: $x, $y, $z",
            );
          }

          return const Text("No Data to display.");
        });
  }
}
