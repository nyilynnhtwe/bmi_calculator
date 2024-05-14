import 'package:flutter/material.dart';

class DecreaseBtn extends StatelessWidget {
  const DecreaseBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: const Icon(
        Icons.remove,
        color: Colors.white,
      ),
    );
  }
}
