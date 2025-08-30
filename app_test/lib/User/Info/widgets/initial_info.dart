import 'package:flutter/material.dart';

class InitialInfoWidget extends StatelessWidget {
  const InitialInfoWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("!Welcome!", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
    );
  }
}