import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'package:doctor_booking_app/main.dart';

void main() {
  testWidgets('App renders home page', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;

    await tester.pumpWidget(const MyApp());

    expect(find.text('Find Your \nConsultation'), findsOneWidget);
    expect(find.text('Categories'), findsOneWidget);
    expect(find.text('Doctors'), findsOneWidget);

    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  });
}
