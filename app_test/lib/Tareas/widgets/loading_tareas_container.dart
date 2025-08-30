import 'package:flutter/material.dart';

class LoadingTareas extends StatelessWidget {
  const LoadingTareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}