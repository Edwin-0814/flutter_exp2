import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_exp2/main.dart';

void main() {
  testWidgets('App loads test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ResponsiveUIApp());

    // Verify that the AppBar title exists.
    expect(find.text('Experiment 2 - Edwin Paul'), findsOneWidget);
  });
}
