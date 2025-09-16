import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
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
                    chipColor: Colors.green,
                    chipTextColor: Colors.white,
                    chipText: 'Completed',
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

