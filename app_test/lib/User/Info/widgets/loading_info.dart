import 'package:flutter/material.dart';

class LoadingInfoWidget extends StatelessWidget {
  const LoadingInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator( color: Colors.white,),
    );
  }
}