import 'package:facebookclone/configs/pallete.dart';
import 'package:facebookclone/models/user_model.dart';
import 'package:facebookclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;

  const Rooms({Key key, @required this.onlineUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          itemCount: 1 + onlineUser.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: _CreateRoomButton());
            }
            final User user = onlineUser[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: OutlineButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        borderSide: BorderSide(width: 2.0, color: Colors.blueAccent[100]),
        textColor: Palette.facebookBlue,
        child: Row(
          children: [
            ShaderMask(
                shaderCallback: (rect) =>
                    Palette.createRoomGradient.createShader(rect),
                child: Icon(
                  Icons.video_call,
                  size: 35.0,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 4.0,
            ),
            Text('Create\nRoom')
          ],
        ),
      ),
    );
  }
}
