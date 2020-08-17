import 'package:facebookclone/models/user_model.dart';
import 'package:facebookclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfileAvatar(
          imageUrl: user.imageUrl,
        ),
        const SizedBox(
          width: 6.0,
        ),
        Flexible(
          child: Text(
            user.name,
            style: TextStyle(fontSize: 16.0),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
