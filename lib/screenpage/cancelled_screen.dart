import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TaskCard(
                    chipColor: Colors.red,
                    chipTextColor: Colors.white,
                    chipText: 'Cancelled',
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 5);
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

