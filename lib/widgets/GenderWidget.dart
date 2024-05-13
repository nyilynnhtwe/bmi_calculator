import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.isMaleSelected,
    required this.gender,
  });

  final bool isMaleSelected;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isMaleSelected
            ? const Color.fromARGB(151, 19, 7, 7)
            : const Color.fromARGB(80, 19, 7, 7),
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      width: 150,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gender=="Male"?const Icon(
            Icons.male,
            color: Colors.white,
            size: 80,
          ):const Icon(
            Icons.female,
            color: Colors.white,
            size: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            gender,
            style: const TextStyle(
              color: Color.fromARGB(255, 216, 216, 216),
            ),
          )
        ],
      ),
    );
  }
}
