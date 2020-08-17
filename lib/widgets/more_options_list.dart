import 'package:facebookclone/configs/pallete.dart';
import 'package:facebookclone/models/user_model.dart';
import 'package:facebookclone/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoreOptionsList extends StatelessWidget {
  final List<List> _moreOptionsList = const [
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendar, Colors.red, 'Events']
  ];

  final User currentUser;

  const MoreOptionsList({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: 1 + _moreOptionsList.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UserCard(
                user: currentUser,
              ),
            );
          }
          final List option = _moreOptionsList[index -1];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: _Option(icon: option[0] , color: option[1],label: option[2],),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _Option(
      {Key key,
      @required this.icon,
      @required this.color,
      @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
        children: [
          Icon(icon, color: color,size: 38.0 ,),
          const SizedBox(width: 6.0,),
          Flexible(
            child: Text(label,style: const TextStyle(
              fontSize: 18.0,

            ),
            overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
