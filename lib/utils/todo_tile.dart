import "package:flutter/material.dart";

class TodoTile extends StatelessWidget {
  const TodoTile(
      {super.key,
      required this.taskName,
      required this.isCompleted,
      required this.onChanged});

  final String taskName;
  final bool isCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(value: isCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                decoration: isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
