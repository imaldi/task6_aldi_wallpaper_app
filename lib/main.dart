import 'package:flutter/material.dart';
import 'detail.dart';
// import 'package:task_6_flutter_wallpaper_app/detail_pantai.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Aplikasi Walpaper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var home='sport';
  view(){
    if(home == 'sport'){
      return Sport();
    } else if (home == 'nature') {
      return Nature();
    } else if (home == 'technology') {
      return Technology();
    }else if (home == 'art') {
      return Art();
    } else if (home == 'place') {
      return Place();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          margin: EdgeInsets.only(top:10),
          child: Stack(
              children: <Widget>[
                Container(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'sport';
                            });
                          },
                          color: Colors.lightBlue,
                          child: Text('Sport')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'nature';
                            });
                          },
                          color: Colors.lightBlue,
                          child: Text('Nature')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'technology';
                            });
                          },
                          color: Colors.lightBlue,
                          child: Text('Technology')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'art';
                            });
                          },
                          color: Colors.lightBlue,
                          child: Text('Art')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'place';
                            });
                          },
                          color: Colors.lightBlue,
                          child: Text('Place')
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top:25),
                    child: view()
                )
              ]
          )
      ),
    );
  }
}

class Sport extends StatefulWidget {
  @override
  _Sport createState() => _Sport();
}

class _Sport extends State<Sport> {

  List<Container> sportContainerList = new List();
  List<String> sportlist= [
    's1.jpg',
    's2.jpg',
    's3.jpg',
    's4.jpg',
    's5.jpg',
    's6.jpg',
    's7.jpg',
    's8.jpg',
    's9.jpg',
    's10.jpg',
    's11.jpg',
    's12.jpg',
    's13.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 1, children: sportContainerList);
  }
  _buatContainerList() async {
    for(var i = 0; i<sportlist.length; i++){
      // final dataPantai = itemPantai[i];

      final String image = sportlist[i];
      sportContainerList.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                  "gambar/sport/"+
                      sportlist[i]
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: sportlist[i],
                  child: Image.asset('gambar/sport/$image',height: 300,width: 300, fit: BoxFit.contain,),
                ),
                // Padding(
                //   padding: EdgeInsets.all(1),
                // ),
                // Text(dataPantai['nama'],style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),)
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatContainerList();
  }
}

class Nature extends StatefulWidget {
  @override
  _Nature createState() => _Nature();
}

class _Nature extends State<Nature> {


  List<Container> natureContainerList = new List();
  List<String> naturelist= [
    'n1.jpg',
    'n2.jpg',
    'n3.jpg',
    'n4.jpg',
    'n5.jpg',
    'n6.jpg',
    'n7.jpg',
    'n8.jpg',
    'n9.jpg',
    'n10.jpg',
    'n11.jpg',
    'n12.jpg',
    'n13.jpg',
    'n14.jpg',
  ];

  _buatContainerList() async {
    for(var i = 0; i<naturelist.length; i++){
      // final dataPantai = itemPantai[i];

      final String natureImage = naturelist[i];
      natureContainerList.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                  "gambar/nature/"+
                      naturelist[i]
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: naturelist[i],
                  child: Image.asset('gambar/nature/$natureImage',height: 300,width: 300, fit: BoxFit.contain,),
                ),
                // Padding(
                //   padding: EdgeInsets.all(1),
                // ),
                // Text(dataPantai['nama'],style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),)
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatContainerList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 1, children: natureContainerList)
    );
  }
}

class Technology extends StatefulWidget {
  @override
  _Technology createState() => _Technology();
}

class _Technology extends State<Technology> {

  List<String> technologylist= [
    't1.jpg',
    't2.jpg',
    't3.jpg',
    't4.jpg',
    't5.jpg',
    't6.jpg',
    't7.jpg',
    't8.jpg',
    't9.jpg',
    't10.jpg',
  ];

  List<Container> technologyContainerList = new List();

  _buatContainerList() async {
    for(var i = 0; i<technologylist.length; i++){
      // final dataPantai = itemPantai[i];

      final String image = technologylist[i];
      technologyContainerList.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                  "gambar/technology/"+
                      technologylist[i]
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: technologylist[i],
                  child: Image.asset('gambar/technology/$image',height: 300,width: 300, fit: BoxFit.contain,),
                ),
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatContainerList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 1, children: technologyContainerList)
    );
  }
}

class Art extends StatefulWidget {
  @override
  _Art createState() => _Art();
}

class _Art extends State<Art> {

  List<String> artlist= [
    'a1.jpg',
    'a2.jpg',
    'a3.jpg',
    'a4.jpg',
    'a5.jpg',
    'a6.jpg',
    'a7.jpg',
    'a8.jpg',
    'a9.jpg',
    'a10.jpg',
    'a11.jpg',
  ];

  List<Container> artContainerList = new List();

  _buatContainerList() async {
    for(var i = 0; i<artlist.length; i++){
      // final dataPantai = itemPantai[i];

      final String image = artlist[i];
      artContainerList.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                  "gambar/art/"+
                      artlist[i]
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: artlist[i],
                  child: Image.asset('gambar/art/$image',height: 300,width: 300, fit: BoxFit.contain,),
                ),
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatContainerList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 1, children: artContainerList)
    );
  }
}

class Place extends StatefulWidget {
  @override
  _Place createState() => _Place();
}

class _Place extends State<Place> {

  List<String> placelist= [
    'p1.jpg',
    'p2.jpg',
    'p3.jpg',
    'p4.jpg',
    'p5.jpg',
    'p6.jpg',
    'p7.jpg',
    'p8.jpg',
    'p9.jpg',
    'p10.jpg',
    'p11.jpg',
    'p12.jpg',
  ];

  List<Container> placeContainerList = new List();

  _buatContainerList() async {
    for(var i = 0; i<placelist.length; i++){
      // final dataPantai = itemPantai[i];

      final String image = placelist[i];
      placeContainerList.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap : (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                  "gambar/place/"+
                      placelist[i]
              )));
            },
            child: Column(
              children: [
                Hero(
                  tag: placelist[i],
                  child: Image.asset('gambar/place/$image',height: 300,width: 300, fit: BoxFit.contain,),
                ),
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatContainerList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 1, children: placeContainerList)
    );
  }
}


//Sport, Nature, Technology, Art, Place