import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jokeapp/halaman_daftarlistjoke.dart';
import 'halaman_detailjoke.dart';
import 'package:jokeapp/joke.dart';

class HalamanListJoke extends StatefulWidget {
  late final Joke pilihanjoke;
  late final ValueChanged<Joke> pilihanjokecallback;

  HalamanListJoke(
      {required Key key,
      required this.pilihanjokecallback,
      required this.pilihanjoke})
      : super(key: key);

  @override
  _HalamanListJokeState createState() => _HalamanListJokeState();
}

class _HalamanListJokeState extends State<HalamanListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listjokes.map((jokes) {
      return Container(
        child: ListTile(
          title: Text(
            jokes.setup,
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => widget.pilihanjokecallback(jokes),
          selected: widget.pilihanjoke == jokes,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), shape: BoxShape.rectangle),
      );
    }).toList());
  }
}

class ListJoke extends StatelessWidget {
  const ListJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joke'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          late final Joke listjoke = listjokes[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailListJoke(jokes: listjoke);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Center(
                  //   child: Expanded(
                  //     flex: 1,
                  //     child: Text(listjoke.type),
                  //   ),
                  // ),
                  // Center(
                  //     child: Expanded(
                  //       flex: 2,
                  //   child: Text(listjoke.setup),
                  // ))
                  Text(listjoke.type, style: TextStyle(fontSize: 20),),
                  Text(listjoke.setup, style: TextStyle(fontSize: 20),)

                  // Expanded(flex: 2, child: Text(listjoke.type,),),
                  // Expanded(flex: 3, child: Text(listjoke.type,),),
                ],
              ),
            ),
          );
        },
        itemCount: listjokes.length,
      ),
    );
  }
}
