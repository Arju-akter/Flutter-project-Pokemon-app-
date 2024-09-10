import 'package:flutter/material.dart';

class Powerbadge extends StatelessWidget {
  final String text;
  const Powerbadge({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        color: Colors.white.withOpacity(0.2),
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
      margin: EdgeInsets.symmetric(vertical: 3.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
