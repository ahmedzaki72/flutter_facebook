import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/models.dart';
import 'package:flutter_facebook/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  CreatePostContainer({
    @required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
             ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'what\'s on your mind ?',
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 36.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                    onPressed: () => print('Live'),
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text(
                      'Live',
                    )),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                    onPressed: () => print('photo'),
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text(
                      'Photo',
                    )),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                    onPressed: () => print('Room'),
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text(
                      'Room',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
