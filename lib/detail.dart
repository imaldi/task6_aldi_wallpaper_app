import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

class Detail extends StatefulWidget {
  // final List<String> imagelist;
  // final int index;
  final String imagePath;
  // Detail(this.imagelist, this.index);
  Detail(this.imagePath);
  @override
  _Detail createState() => _Detail(this.imagePath);
}

class _Detail extends State<Detail> {
  // final List<String> imagelist;
  // final int index;
  final String imagePath;
  // _Detail(this.imagelist, this.index);
  _Detail(this.imagePath);
  // ignore: unused_field
  String _wallpaperFile = 'Unknown';
  //
  Future<void> setWallpaperFromFile() async {
    setState(() {
      _wallpaperFile = "Loading";
    });
    String result;
    // var file = await DefaultCacheManager().getSingleFile(imagePath);
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await WallpaperManager.setWallpaperFromFile(
          // file.path,
          imagePath,
          // "gambar/art/a1.jpg",
          WallpaperManager.HOME_SCREEN);
      Toast.show("Success", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
    } on PlatformException {
      result = 'Failed to get wallpaper.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _wallpaperFile = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Walpaper'),
        ),
        body: Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  // FadeInImage.memoryNetwork(placeholder:  kTransparentImage, image: this.imagePath),
                  Image.asset(this.imagePath,height: 300,width: 300, fit: BoxFit.contain),
                  Padding(padding: EdgeInsets.all(5),),
                  RaisedButton(
                    color: Colors.green,
                      child: Text('Set As Walpaper',
                          style: TextStyle(
                            color: Colors.white,
                          )
                      ),
                      onPressed: (){
                        setWallpaperFromFile();
                      }
                  )
                ],
              ),
            )
        )
    );
  }
}