import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebookclone/configs/pallete.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const ProfileAvatar({Key key, @required this.imageUrl, this.isActive = false, this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 18.0 : 20.0,
            backgroundImage: CachedNetworkImageProvider(imageUrl),
            backgroundColor: Colors.grey[200],
          ),
        ),
        isActive ? Positioned(
          bottom: 5.0,
          right: 2.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
                color: Palette.online,
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.white)),
          ),
        ) : SizedBox.shrink(),
      ],
    );
  }
}
