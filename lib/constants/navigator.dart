import 'package:flutter/material.dart';

navigateTo(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

navigateBack(BuildContext context) {
  Navigator.pop(context);
}
