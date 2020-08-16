import 'package:facebookclone/configs/pallete.dart';
import 'package:facebookclone/models/data.dart';
import 'package:facebookclone/models/post_model.dart';
import 'package:facebookclone/widgets/circle_button.dart';
import 'package:facebookclone/widgets/create_post_container.dart';
import 'package:facebookclone/widgets/post_container.dart';
import 'package:facebookclone/widgets/rooms.dart';
import 'package:facebookclone/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                iconData: Icons.search,
                iconSize: 30.0,
                onPressed: () {},
              ),
              CircleButton(
                iconData: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () {
                  print('messenger');
                },
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
                child: Rooms(
              onlineUser: onlineUsers,
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
                child: Stories(
              currentUser: currentUser,
              stories: stories,
            )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final Post post = posts[index];
              return PostContainer(post:post);
            },
            childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }


}
