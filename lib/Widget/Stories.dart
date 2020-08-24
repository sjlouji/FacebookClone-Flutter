import 'package:facebookclone/Widget/CreateRoom.dart';
import 'package:flutter/material.dart';
import 'package:facebookclone/Widget/AddPost.dart';

void main() {
  runApp(StoriesScreen());
}

class StoriesScreen extends StatelessWidget {

  String StoryImage;
  String userImage;
  String userName;
  bool first = false;
  StoriesScreen({Key key, this.StoryImage, this.userImage, this.userName, this.first}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoriesScreenPage(StoryImage: this.StoryImage, userImage: this.userImage, userName: this.userName, first: this.first,);
  }
}

class StoriesScreenPage extends StatefulWidget {
  StoriesScreenPage({Key key, this.StoryImage, this.userName, this.userImage, this.first}) : super(key: key);

  String StoryImage;
  String userImage;
  String userName;
  bool first = false;
  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreenPage> {



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
      child: AspectRatio(
          aspectRatio: 1.6/2.6,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(widget.first?"https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp":widget.StoryImage),
                  fit: BoxFit.cover
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.1),
                      ]
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  widget.first?
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(Icons.add,color: Color(0xFF1777F2),),
                    )
                      :
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                            image: NetworkImage(widget.userImage),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Text(widget.userName, style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
    );
  }
}

