import 'package:flutter/material.dart';

class EmergencyCall extends StatelessWidget {
  const EmergencyCall({
    super.key,
    required List emergencyCall,
  }) : _emergencyCall = emergencyCall;

  final List _emergencyCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _emergencyCall.length,
          // call card
          (index) => Container(
            width: 100,
            height: 140,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // institute logo
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                ),
                // institute name
                Text(
                  _emergencyCall[index]['institute'],
                  style: const TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
