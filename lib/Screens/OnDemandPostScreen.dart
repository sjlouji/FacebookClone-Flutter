import 'package:facebookclone/Widget/CreateRoom.dart';
import 'package:facebookclone/Widget/Post.dart';
import 'package:facebookclone/Widget/Stories.dart';
import 'package:flutter/material.dart';
import 'package:facebookclone/Widget/AddPost.dart';

void main() {
  runApp(OnDemaindPostScreen());
}

class OnDemaindPostScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OnDemaindPostPage();
  }
}

class OnDemaindPostPage extends StatefulWidget {
  OnDemaindPostPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OnDemandPostScreenState createState() => _OnDemandPostScreenState();
}

class _OnDemandPostScreenState extends State<OnDemaindPostPage> {



  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              PostScreen(userImage: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Nicolos', caption: '', timeAgo: '2 week', imageUrl: "https://images.unsplash.com/photo-1593642532781-03e79bf5bec2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '21', comments: '20',shares: '23',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Minh Pham', caption: '', timeAgo: '2 week', imageUrl: "https://images.unsplash.com/photo-1558981033-f5e2ddd9c57e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '23', comments: '13',shares: '1',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80', username: 'Tony', caption: '', timeAgo: '2 days', imageUrl: "https://images.unsplash.com/photo-1598259812920-0f409c9d3f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '125', comments: '13',shares: '4',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Alex', caption: '', timeAgo: '2 days', imageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '123', comments: '12',shares: '1',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80', username: 'Luis Villasmil', caption: '', timeAgo: '12hrs', imageUrl: "https://images.unsplash.com/photo-1558980664-3a031cf67ea8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '522', comments: '152',shares: '20',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', username: 'Nicolos Horn', caption: '', timeAgo: '10hrs', imageUrl: "https://images.unsplash.com/photo-1598225176697-e7fc9857917b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '22', comments: '130',shares: '30',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Ben Parker', caption: '', timeAgo: '8hrs', imageUrl: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80", likes: '232', comments: '110',shares: '100',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Minh Pham', caption: '', timeAgo: '7hrs', imageUrl: "https://images.unsplash.com/photo-1593642532454-e138e28a63f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", likes: '432', comments: '120',shares: '90',),
              PostScreen(userImage: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', username: 'Charles', caption: '', timeAgo: '3hrs', imageUrl: "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80", likes: '32', comments: '10',shares: '9',),
            ],
          ),
        )
    );
  }
}

