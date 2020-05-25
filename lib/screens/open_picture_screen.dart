import 'package:flutter/cupertino.dart';
import 'package:galleryapp/protocol/picture.dart';
import 'package:flutter/material.dart';



class OpenPictureScreen extends StatelessWidget {

  OpenPictureScreen({Key key, this.pictureObj}) : super(key: key);
  final PictureObj pictureObj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Picture"),
        actions: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
//              radius: 24,
              backgroundImage: NetworkImage(pictureObj.user.profileImage.large),
            ),
          ),

//          CircleNetworkImage(
//            size: 35.0,
//            link: pictureObj.user.profileImage.medium,
//          ),
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(pictureObj.urls.regular),
              fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}


class CircleNetworkImage extends StatelessWidget {

  CircleNetworkImage({Key key, this.size, this.link}) : super(key: key);
  final double size;
  final String link;

  @override
  Widget build(BuildContext context) {




    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
//        image: DecorationImage(
//            image: NetworkImage(link),
//            fit: BoxFit.cover
//        ),
      ),
    );
  }
}