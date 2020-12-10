import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

class Detail extends StatefulWidget {
  final List<String> imagelist;
  final int index;
  Detail(this.imagelist, this.index);

  @override
  _Detail createState() => _Detail(this.imagelist, this.index);
}

class _Detail extends State<Detail> {
  final List<String> imagelist;
  final int index;
  _Detail(this.imagelist, this.index);
  // ignore: unused_field
  String _wallpaperFile = 'Unknown';

  Future<void> setWallpaperFromFile() async {
    setState(() {
      _wallpaperFile = "Loading";
    });
    String result;
    var file = await DefaultCacheManager().getSingleFile(imagelist[index]);
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await WallpaperManager.setWallpaperFromFile(
          file.path, WallpaperManager.HOME_SCREEN);
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
                  FadeInImage.memoryNetwork(placeholder:  kTransparentImage, image: this.imagelist[index]),
                  RaisedButton(
                      child: Text('Set As Walpaper'),
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