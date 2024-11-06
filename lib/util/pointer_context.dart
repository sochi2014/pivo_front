import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class PointerContext extends StatelessWidget {
  const PointerContext({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return PointerInterceptor(
        child: child,
      );
    }

    return child;
  }
}
