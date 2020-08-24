import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebookclone/Widget/CreateRoom.dart';
import 'package:facebookclone/Widget/Stories.dart';
import 'package:flutter/material.dart';
import 'package:facebookclone/Widget/AddPost.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(PostScreen());
}

class PostScreen extends StatelessWidget {
  // This widget is the root of your application.
  String userImage, username, caption, timeAgo, imageUrl, likes, comments, shares, profileImage;
  PostScreen({Key key,this.userImage, this.username, this.caption, this.timeAgo, this.imageUrl, this.likes, this.comments, this.shares, this.profileImage });

  @override
  Widget build(BuildContext context) {
    return PostScreenPage(userImage: this.userImage, username: this.username, caption: this.caption, timeAgo: this.timeAgo, imageUrl: this.imageUrl, likes: this.likes, comments: this.comments,shares: this.shares, profileImage: this.profileImage,);
  }
}

class PostScreenPage extends StatefulWidget {

  String userImage, username, caption, timeAgo, imageUrl, likes, comments, shares, profileImage;
  PostScreenPage({Key key,this.userImage, this.username, this.caption, this.timeAgo, this.imageUrl, this.likes, this.comments, this.shares, this.profileImage });

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreenPage> {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 0.0,
      ),
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PostHeader(profileImage: widget.userImage,username: widget.username, timeAgo: widget.timeAgo,),
                  const SizedBox(height: 4.0),
                  Text(widget.caption),
                  widget.imageUrl != null
                      ? const SizedBox.shrink()
                      : const SizedBox(height: 6.0),
                ],
              ),
            ),
            widget.imageUrl!= null
                ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.network(widget.imageUrl),
            )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: _PostStats(likes: widget.likes,comments: widget.comments,share: widget.shares,),
            ),
          ],
        ),
      ),
    );
  }
}



class _PostHeader extends StatelessWidget {
  final String profileImage;
  final String username;
  final String timeAgo;

  const _PostHeader({
    Key key,
    @required this.profileImage,
    @required this.username,
    @required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _AvatarImage(profileAvatarImage: profileImage,),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${timeAgo} • ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () => print('More'),
        ),
      ],
    );
  }
}


class _PostStats extends StatelessWidget {

  final String likes, comments, share;

  const _PostStats({
    Key key,
    @required this.likes,
    @required this.comments,
    @required this.share,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Color(0xFF1777F2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: Text(
                '${likes}',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              '${comments} Comments',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              '${share} Shares',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            _PostButton(
              icon: Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Like',
              onTap: () => print('Like'),
            ),
            _PostButton(
              icon: Icon(
                MdiIcons.commentOutline,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Comment',
              onTap: () => print('Comment'),
            ),
            _PostButton(
              icon: Icon(
                MdiIcons.shareOutline,
                color: Colors.grey[600],
                size: 25.0,
              ),
              label: 'Share',
              onTap: () => print('Share'),
            )
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const _PostButton({
    Key key,
    @required this.icon,
    @required this.label,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class _AvatarImage extends StatelessWidget{

  final String profileAvatarImage;

  const _AvatarImage({
    Key key,
    @required this.profileAvatarImage,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Stack(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(profileAvatarImage!=null?profileAvatarImage:"https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
            ),
          ]
      ),
    );
  }

}
