import 'package:flutter/material.dart';
import 'package:flutter_facebook/config/palette.dart';
import 'package:flutter_facebook/models/models.dart';
import 'package:flutter_facebook/widgets/widgets.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;
  Rooms({
    @required this.onlineUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUser.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }
          final User user = onlineUser[index - 1];
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true,),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create Button'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent[100],
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rec) => Palette.createRoomGradient.createShader(rec),
            child: Icon(
              Icons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0,),
          Text('Create\nRoom'),
        ],
      ),
    );
  }
}
