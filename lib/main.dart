import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';
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
    }
    if (home == 'nature') {
      return Nature();
    }
    if (home == 'technology') {
      return Technology();
    }
    if (home == 'art') {
      return Art();
    }
    if (home == 'place') {
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
                          child: Text('Sport')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'nature';
                            });
                          },
                          child: Text('Nature')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'technology';
                            });
                          },
                          child: Text('Technology')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'art';
                            });
                          },
                          child: Text('Art')
                      ),
                      FlatButton(
                          onPressed: (){
                            setState(() {
                              home= 'place';
                            });
                          },
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

  List<String> sportlist= [
    'https://i.pinimg.com/236x/07/f9/ab/07f9abf3002425a530db0af32b128134.jpg',
    'https://i.pinimg.com/236x/a0/05/47/a0054732fdb1dd95b2283ee8c7fb5241.jpg',
    'https://i.pinimg.com/236x/db/ef/df/dbefdf627b50f3040d55f394bd9de1d0.jpg',
    'https://i.pinimg.com/236x/54/db/8b/54db8b2621ab2d17ece4dee81c623329.jpg',
    'https://i.pinimg.com/236x/04/53/73/045373c9164756a785c56b00d5a0553a.jpg',
    'https://i.pinimg.com/236x/e7/2e/d3/e72ed32d88257bf415696bd711582964.jpg',
    'https://i.pinimg.com/236x/82/34/38/823438930d25d756df410ae8323a7fc7.jpg',
    'https://i.pinimg.com/236x/2f/cb/61/2fcb614e41365751914933d9bd2f861f.jpg',
    'https://i.pinimg.com/236x/98/da/e8/98dae897233f4621e36fcc875948652c.jpg',
    'https://i.pinimg.com/236x/36/62/4e/36624efba3d7e2884cb0e4ba6595d0db.jpg',
    'https://i.pinimg.com/236x/97/e4/b9/97e4b9390f30a86ea4afe540dec0d5f4.jpg',
    'https://i.pinimg.com/236x/14/dc/f3/14dcf3a7c87625397f0de6a42b198b50.jpg',
    'https://i.pinimg.com/236x/40/55/4c/40554c241e12c18d5dba55802f218b76.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child:new StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          itemCount: sportlist.length,
          itemBuilder: (BuildContext context, int index) => new Container(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                      sportlist, index
                  )));
                },
                child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: sportlist[index], fit: BoxFit.cover,),
              )
          ),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}

class Nature extends StatefulWidget {
  @override
  _Nature createState() => _Nature();
}

class _Nature extends State<Nature> {


  List<Container> natureContainerList = new List();
  List<String> naturelist= [
    'gili-trawangan-lombok-ntb.jpg',
    'karimun-jawa-jawa-tengah.jpg',
    'pantai-nembrala.jpg',
    'pantai-nihiwatu-sumba-ntt.jpg',
    'pantai-ora-maluku-tengah.jpg',
    'pantai-padang-padang-bali.jpg',
    'pantai-pasir-putih-karang-asem-bali.jpg',
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
              // Navigator.push(context, MaterialPageRoute(builder: (context) => PageDetailPantai(
              //   nama: dataPantai['nama'],
              //   gambar: gambarPantai,
              //   provinsi: dataPantai['provinsi'],
              //   deskripsi: dataPantai['deskripsi'],
              // )));
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
    'https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509__340.jpg',
    'https://cdn.pixabay.com/photo/2018/10/30/16/06/water-lily-3784022__340.jpg',
    'https://cdn.pixabay.com/photo/2015/04/19/08/33/technology-729512__340.jpg',
    'https://cdn.pixabay.com/photo/2016/02/27/06/43/cherry-tree-1225186__340.jpg',
    'https://cdn.pixabay.com/photo/2016/06/17/16/42/bouquet-1463562__340.jpg',
    'https://cdn.pixabay.com/photo/2016/09/22/15/42/rose-1687547__340.jpg',
    'https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792__340.jpg',
    'https://cdn.pixabay.com/photo/2018/07/20/13/52/suntechnology-3550693__340.jpg',
    'https://cdn.pixabay.com/photo/2015/06/08/15/00/daisy-801813__340.jpg',
    'https://cdn.pixabay.com/photo/2017/10/15/15/58/spring-2854205__340.jpg',
    'https://cdn.pixabay.com/photo/2018/08/10/21/53/dandelion-3597681__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/19/15/46/bloom-1839982__340.jpg',
    'https://cdn.pixabay.com/photo/2017/10/10/14/54/plant-2837468__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/24/14/45/crocus-4077848__340.jpg',
    'https://cdn.pixabay.com/photo/2018/08/08/20/41/rose-3593112__340.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: new StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          itemCount: technologylist.length,
          itemBuilder: (BuildContext context, int index) => new Container(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                    technologylist, index
                )));
              },
              child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: technologylist[index], fit: BoxFit.cover,),
            ),
          ),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}

class Art extends StatefulWidget {
  @override
  _Art createState() => _Art();
}

class _Art extends State<Art> {

  List<String> artlist= [
    'https://cdn.pixabay.com/photo/2018/08/21/23/29/fog-3622519__340.jpg',
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/fall-1072821__340.jpg',
    'https://cdn.pixabay.com/photo/2016/07/22/16/29/fog-1535201__340.jpg',
    'https://cdn.pixabay.com/photo/2018/11/17/22/15/tree-3822149__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/31/21/43/the-dark-hedges-4094148__340.jpg',
    'https://cdn.pixabay.com/photo/2018/11/09/08/08/autumn-3804001__340.jpg',
    'https://cdn.pixabay.com/photo/2015/12/08/00/39/foggy-1081915__340.jpg',
    'https://cdn.pixabay.com/photo/2018/05/11/23/33/art-3392077__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/25/15/14/landscape-1858602__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/09/09/42/art-1245951__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/27/19/49/nature-1283976__340.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/17/35/sunbeam-2060662__340.jpg',
    'https://cdn.pixabay.com/photo/2019/02/27/02/07/art-4023269__340.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: new StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          itemCount: artlist.length,
          itemBuilder: (BuildContext context, int index) => new Container(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                    artlist, index
                )));
              },
              child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: artlist[index], fit: BoxFit.cover,),
            ),
          ),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}

class Place extends StatefulWidget {
  @override
  _Place createState() => _Place();
}

class _Place extends State<Place> {

  List<String> placelist= [
    'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3617500/pexels-photo-3617500.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1562/italian-landscape-places-nature.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1670187/pexels-photo-1670187.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2437297/pexels-photo-2437297.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1482927/pexels-photo-1482927.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2559941/pexels-photo-2559941.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1366909/pexels-photo-1366909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2437286/pexels-photo-2437286.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3551762/pexels-photo-3551762.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: new StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          itemCount: placelist.length,
          itemBuilder: (BuildContext context, int index) => new Container(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                    placelist, index
                )));
              },
              child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: placelist[index], fit: BoxFit.cover,),
            ),
          ),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}


//Sport, Nature, Technology, Art, Place