import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tasks extends StatelessWidget {
  @override
  String tasks;
  IconData icon;
  String date;
  Tasks({super.key, required this.tasks, required this.icon, required this.date});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 75,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                tasks,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                date,
                style: const TextStyle(fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
