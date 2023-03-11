import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(AddPost());
}

class AddPost extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AddPostPage();
  }
}

class AddPostPage extends StatefulWidget {
  AddPostPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Color(0xFF1777F2),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                            "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(height: 20.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => print('Live'),
                    icon: const Icon(
                      MdiIcons.videoImage,
                      color: Colors.red,
                      size: 20,
                    ),
                    label: Text('Live'),
                  ),
                  const VerticalDivider(
                    width: 8.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.lightGreen,
                      size: 20,
                    ),
                    label: Text('Photo'),
                  ),
                  const VerticalDivider(width: 8.0),
                  ElevatedButton.icon(
                    onPressed: () => print('Room'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.deepPurpleAccent,
                      size: 20,
                    ),
                    label: Text('Room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
