import 'package:flutter/widgets.dart';

class MyTitle extends StatelessWidget {
  final String text;
  MyTitle({
    super.key,
    required this.text,
    required color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        "$text",
        style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
