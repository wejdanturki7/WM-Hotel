import 'package:flutter/material.dart';

extension NavigatorCustom on BuildContext {
  push({required Widget screen}) {
    return Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  pop() {
    return Navigator.pop(this);
  }

  pushAndRemove({required Widget screen}) {
    return Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }
}
