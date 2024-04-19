import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InputVideoFeed extends StatefulWidget {
  const InputVideoFeed({super.key});

  @override
  State<InputVideoFeed> createState() => _InputVideoFeedState();
}

class _InputVideoFeedState extends State<InputVideoFeed> {
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
                // child: galleryFile == null
                //     ? const Center(child: Text('Sorry nothing selected!!'))
                //     : Text(galleryFile!.path),
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
                  onPressed: () async {
                    ImagePicker imagePicker = ImagePicker();
                    XFile? file = await imagePicker.pickVideo(
                        source: ImageSource.gallery);
                  },
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
