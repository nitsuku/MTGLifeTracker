import 'package:flutter/material.dart';
import 'dart:collection';

int playerCount = 2; //Total players in the current game
Set allPlayers = new Set(); //Collection of all players, used for resetting games

void main() {
  runApp(const MyApp());
  SetPlayers(playerCount); //Will get replaces when save/load is figured out
}

class Players {
  Players (int i) {
    playerCount = i;
  }
}

void NewGame() {
  allPlayers = new Set();
  SetPlayers(playerCount);
}

void ChangePlayers(int i){
  setPlayerCount(i);
  NewGame();
}

void SetPlayers(int i) {
  for( int y = 1; y <= i; y++ ) {
    Player player = Player('Player${y}');
    allPlayers.add(player);
  }
}
/*void getPlayers() {
  for(var player in allPlayers) {
    print(player.toString());
  }
}*/

void resetGame() {
  for(var player in allPlayers) {
    resetPlayer(player);
  }
}

void resetPlayer(player) {
  player.hp = 40;
  player.poison = 0;
  player.monarch = false;
  player.ascend = false;
  player.tax0 = 0;
  player.tax1 = 0;
  player.exp = 0;
  player.p1c1_damage = 0;
  player.p1c2_damage = 0;
  player.p2c1_damage = 0;
  player.p2c2_damage = 0;
  player.p3c1_damage = 0;
  player.p3c2_damage = 0;
  player.p4c1_damage = 0;
  player.p4c2_damage = 0;
  player.p5c1_damage = 0;
  player.p5c2_damage = 0;
  player.p6c1_damage = 0;
  player.p6c2_damage = 0;
}

class Player {
  int hp = 40;
  var pname = 'player';
  int poison = 0;
  bool monarch = false;
  bool ascend = false;
  int tax0 = 0;
  int tax1 = 0;
  int exp = 0;
  int p1c1_damage = 0;
  int p1c2_damage = 0;
  int p2c1_damage = 0;
  int p2c2_damage = 0;
  int p3c1_damage = 0;
  int p3c2_damage = 0;
  int p4c1_damage = 0;
  int p4c2_damage = 0;
  int p5c1_damage = 0;
  int p5c2_damage = 0;
  int p6c1_damage = 0;
  int p6c2_damage = 0;

  Player(String name) {
   pname = name;
  }

  @override
  String toString() {
    return 'Player{pname: $pname}';
  }
}

void GainLife(Player player) {
  player.hp++;
}
void LoseLife(Player player) {
  player.hp--;
}
void SetLife(Player player, int newhp) {
  player.hp = newhp;
}

void SetName(Player player, String newName) {
  player.pname = newName;
}

void GainPoison(Player player) {
  player.poison++;
}
void LosePoison(Player player) {
  player.poison--;
}
void SetPoison(Player player, int newpoison) {
  player.poison = newpoison;
}
void BecomeMonarch(Player player) {
  player.monarch = true;
}
void LoseMonarch(Player player) {
  player.monarch = false;
}

void gainAscend(Player player) {
  player.ascend = true;
}
void LoseAscend(Player player) {
  player.ascend = false;
}

void GainTax0(Player player) {
  player.tax0++;
}
void LoseTax0(Player player) {
  player.tax0--;
}
void SetTax0(Player player) {
  player.tax0 = 0;
}
void GainTax1(Player player) {
  player.tax1++;
}
void LoseTax1(Player player) {
  player.tax1--;
}
void SetTax1(Player player) {
  player.tax1 = 0;
}

void GainP1C1(Player player) {
  player.p1c1_damage++;
}
void LoseP1C2(Player player) {
  player.p1c2_damage--;
}
void GainP2C1(Player player) {
  player.p2c1_damage++;
}
void LoseP2C2(Player player) {
  player.p2c2_damage--;
}
void GainP3C1(Player player) {
  player.p3c1_damage++;
}
void LoseP3C2(Player player) {
  player.p3c2_damage--;
}
void GainP4C1(Player player) {
  player.p4c1_damage++;
}
void LoseP4C2(Player player) {
  player.p4c2_damage--;
}
void GainP5C1(Player player) {
  player.p5c1_damage++;
}
void LoseP5C2(Player player) {
  player.p5c2_damage--;
}
void GainP6C1(Player player) {
  player.p6c1_damage++;
}
void LoseP6C2(Player player) {
  player.p6c2_damage--;
}

void setPlayerCount(int numPlayers) {
  playerCount = numPlayers;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
