import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

bool _prev = false;
bool _one = true;
bool _two = false;
bool _three = false;
bool _four = false;
bool _next = true;

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Alpha 2',
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
        home: new Scaffold(
          body: new Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  new Container(
                    height: 472.0,
                    width: 472.0,
                    child: new Image.asset("assets/maps.jpeg"),
                  ),
                  Positioned(
                    child: new RaisedButton(
                      onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.gps_fixed,color: Colors.green, size: 35.0,),
                      ),
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    bottom: 10.0,
                    left: 400.0,
                  )
                ],
              ),
              Expanded(
                child: new Column(
                  children: <Widget>[
                    new Container(
                        margin: EdgeInsets.all(12.0),
                        child: new Row(
                          children: <Widget>[
                            Expanded(
                                child: new Column(
                                  children: <Widget>[
                                    new Container(
                                      child: new Text("Rabu, 1 Agustus 2018", style: new TextStyle(color: Colors.grey, fontSize: 20.0)),
                                      alignment: Alignment.topLeft,
                                    ),
                                    new Container(
                                      child: new Text("Selamat Siang Nugi", style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0),
                                    ),
                                  ],
                                )
                            ),
                            new Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new AssetImage("assets/user.jpg")
                                    )
                                )),
                          ],
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          child: new ButtonTheme(
                            minWidth: 200.0,
                            height: 60.0,
                            child: new FlatButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SecondPage()),
                                );
                              },
                              highlightColor: Colors.white70,
                              color: Colors.white70,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              child: Row(
                                children: <Widget>[
                                  new Icon(Icons.search, color: Colors.green,size: 35.0,),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                      child: new Text("Mau pergi ke mana?",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Icon(Icons.directions,color: Colors.green,size: 35.0,)
                                ],
                              ),
                            ),
                          )
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Expanded(
                        child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: new ListView(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                                  title: Text("Universitas AMIKOM Yogyakarta",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text("Condong Catur, Depok, Sleman"),
                                ),
                                Divider(indent: 73.0,),
                                ListTile(
                                  leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                                  title: Text("EDS Building Universitas Gajah Mada",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text("Sinduadi, Mlati, Sleman"),
                                ),
                                Divider(indent: 73.0,),
                                ListTile(
                                  leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                                  title: Text("Kos Tercinta",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text("Condong Catur, Depok, Sleman"),
                                ),
                                Divider(indent: 73.0,),
                                ListTile(
                                  leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                                  title: Text("Rumah Tercinta",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text("Petunjungan, Bulakamba, Brebes"),
                                ),
                              ],
                            )
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Alpha 2',
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
        home: new Scaffold(
            appBar: PreferredSize(
                child: AppBar(
                  backgroundColor: Colors.white,
                  leading: new IconButton(
                      icon: Icon(Icons.keyboard_arrow_left,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: new TextField(
                      decoration:
                      InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(13.0, 10.0, 10.0, 13.0),
                        hintText: "Mau pergi ke mana?",
                        hintStyle: TextStyle(fontSize: 22.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(60.0)),
            body: new Column(
              children: <Widget>[
                new Container(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: new ButtonTheme(
                        height: 70.0,
                        child: FlatButton(
                            onPressed: (){},
                            child: new Row(
                              children: <Widget>[
                                Icon(
                                  Icons.map,
                                  color: Colors.green,
                                  size: 35.0,
                                ),
                                Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                      child: Text("Pilih dari peta",
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                ),
                                Icon(Icons.keyboard_arrow_right,size: 30.0,)
                              ],
                            )),
                      )
                  ),
                ),
                Expanded(
                    child: new MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: new ListView(
                          children: <Widget>[
                            Divider(indent: 73.0,),
                            ListTile(
                              leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                              title: Text("Universitas AMIKOM Yogyakarta",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Condong Catur, Depok, Sleman"),
                            ),
                            Divider(indent: 73.0,),
                            ListTile(
                              leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                              title: Text("EDS Building Universitas Gajah Mada",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Sinduadi, Mlati, Sleman"),
                            ),
                            Divider(indent: 73.0,),
                            ListTile(
                              leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                              title: Text("Kos Tercinta",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Condong Catur, Depok, Sleman"),
                            ),
                            Divider(indent: 73.0,),
                            ListTile(
                              leading: Icon(Icons.location_on, color: Colors.green,size: 35.0,),
                              title: Text("Rumah Tercinta",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Petunjungan, Bulakamba, Brebes"),
                            ),
                          ],
                        )
                    )
                ),
                new Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new ButtonTheme(
                          minWidth: 400.0,
                          height: 60.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          child: new RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ThirdPage()),
                              );
                            },
                            color: Colors.green,
                            child: new Text("Start navigation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),)
                      ),
                    )
                )
              ],
            )
        )
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Alpha 2',
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
        home: new Scaffold(
          body: ViewThirdPage(),
        )
    );
  }
}

class ViewThirdPage extends StatefulWidget{
  @override
  ViewThirdPageState createState() => ViewThirdPageState();

}

class ViewThirdPageState extends State<ViewThirdPage>
{
  void _pageChanger (int i)
  {
    setState(() {
      if(i==0){
        _prev = false;
        _one = true;
        _two = false;
        _three = false;
        _four = false;
        _next = true;
      }
      else if(i==1){
        _prev = true;
        _one = false;
        _two = true;
        _three = false;
        _four = false;
        _next = true;
      }
      else if(i==2){
        _prev = true;
        _one = false;
        _two = false;
        _three = true;
        _four = false;
        _next = true;
      }
      else{
        _prev = true;
        _one = false;
        _two = false;
        _three = false;
        _four = true;
        _next = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            new Container(
              height: 660.0,
              width: 474.0,
              child: new Image.asset("assets/navigation.jpeg", fit: BoxFit.fill,),
            ),
            Positioned(
              child: new RaisedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.gps_fixed,color: Colors.green, size: 35.0,),
                ),
                shape: CircleBorder(),
                color: Colors.white,
              ),
              bottom: 70.0,
              left: 400.0,
            ),
            Positioned(
              child: new RaisedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.navigation,color: Colors.orange, size: 35.0,),
                ),
                shape: CircleBorder(),
                color: Colors.white,
              ),
              bottom: 10.0,
              left: 400.0,
            ),
          ],
        ),
        Expanded(
            child: new Stack(
              children: <Widget>[
                new PageView(
                  onPageChanged: _pageChanger,
                  children: <Widget>[
                    new Container(
                        child: new Row(
                          children: <Widget>[
                            new Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.directions_walk, size: 65.0,color: Colors.white,),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                  child: new Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: new Text(
                                            "110 m",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28.0,
                                                color: Colors.blue
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Jalan untuk 10 menit",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.blue
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Menuju halte Transjogja JEC",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.blue
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    new Container(
                        child: new Row(
                          children: <Widget>[
                            new Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.directions_bus, size: 65.0,color: Colors.white,),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                  child: new Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: new Text(
                                            "TransJogja U2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28.0,
                                                color: Colors.green
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Tujuan Terminal Condong Catur",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Turun di Halte UPN",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    new Container(
                        child: new Row(
                          children: <Widget>[
                            new Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.directions_walk, size: 65.0,color: Colors.white,),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                  child: new Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: new Text(
                                            "110 m",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28.0,
                                                color: Colors.blue
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Jalan untuk 10 menit",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.blue
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Menuju halte Transjogja JEC",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.blue
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    new Container(
                        child: new Row(
                          children: <Widget>[
                            new Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.directions_bus, size: 65.0,color: Colors.white,),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                  child: new Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: new Text(
                                            "TransJogja U2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28.0,
                                                color: Colors.green
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Tujuan Terminal Condong Catur",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "Turun di Halte UPN",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    )
                  ],
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ButtonTheme(
                        minWidth: 80.0,
                        height: 60.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        child: new RaisedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainPage()),
                            );
                          },
                          color: Colors.red,
                          child: new Text("End",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),)
                    ),
                  ),
                  bottom: 20.0,
                  left: 380.0,
                ),
              ],
            )
        ),
        new Row(
          children: <Widget>[
            Expanded(
              child: new Container(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.centerRight,
                child: AnimatedOpacity(
                  child: new Icon(Icons.keyboard_arrow_left),
                    opacity: _prev ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 200)
                )
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new AnimatedSize(duration: null, vsync: AnimatedListState())
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new AnimatedCrossFade(
                      firstChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.black,),
                      secondChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.grey,),
                      crossFadeState: _two ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 100)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new AnimatedCrossFade(
                      firstChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.black,),
                      secondChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.grey,),
                      crossFadeState: _three ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 100)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new AnimatedCrossFade(
                      firstChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.black,),
                      secondChild: new Icon(Icons.brightness_1,size: 10.0,color: Colors.grey,),
                      crossFadeState: _four ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 100)
                  ),
                ),
              ],
            ),
            Expanded(
              child: new Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child: AnimatedOpacity(
                      child: new Icon(Icons.keyboard_arrow_right),
                      opacity: _next ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 200)
                  )
              ),
            ),
          ],
        )
      ],
    );
  }
}
