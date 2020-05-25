import 'package:flutter/cupertino.dart';
import 'package:galleryapp/animation/transtions.dart';
import 'package:galleryapp/api/unsplash_client.dart';
import 'package:galleryapp/protocol/picture.dart';
import 'package:flutter/material.dart';

import 'open_picture_screen.dart';

class PictureListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pictures"),
      ),
      body: FutureBuilder(
          future: UnsplashClient.getPictureList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<PictureObj> list = snapshot.data;
              print("list  $list.length");
              return PictureGridList(pictureList: list);
            }
            return Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

class PictureGridList extends StatelessWidget {

  PictureGridList({this.pictureList});
  final List<PictureObj> pictureList;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints box) {
      final width = box.maxWidth;
      final height = box.maxHeight;

      return GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: (width) / (height + 8),
        children: <Widget>[
          for (PictureObj pictureObj in pictureList)
            PictureGridTile(
              pictureObj: pictureObj,
            ),
        ],
      );
    });
  }
}

class PictureGridTile extends StatelessWidget {
  PictureGridTile({this.pictureObj});

  final PictureObj pictureObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue, clipBehavior: Clip.hardEdge, //      elevation: 8.0,
      child: InkWell(
        onTap: () { Navigator.push(context, SlideRightRoute(page: OpenPictureScreen(pictureObj: pictureObj))); },
        child: Column(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                child: Image.network(
                  pictureObj.urls.thumb,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8.0),
              child: Text(
                pictureObj.altDescription != null
                    ? pictureObj.altDescription
                    : pictureObj.description != null
                    ? pictureObj.description
                    : "",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.8),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8.0, bottom: 8.0),
              child: Text(
                pictureObj.user.name,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.overline,
              ),
            )
          ],
        ),
      ),
//      onTap: () {
//
//      },
    );
  }
}
