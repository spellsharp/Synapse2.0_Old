import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputVideoFeed extends StatelessWidget {
  const InputVideoFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Input'),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 70, 8, 8),
              child: Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.18,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click me'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
