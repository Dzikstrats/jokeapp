import 'package:flutter/material.dart';
import 'package:jokeapp/halaman_daftarlistjoke.dart';
import 'package:jokeapp/joke.dart';

// class DetailListJoke extends StatefulWidget {
//   // late final bool cekDeviceLayout;
//   late final Joke jokes;
//   DetailListJoke({required this.jokes});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(8),
//         child: Text('800'),
//       ),
//     );
//   }
class DetailListJoke extends StatelessWidget {
 late final Joke jokes;
 DetailListJoke({required this.jokes});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Text(jokes.punchline, style: TextStyle(fontSize: 20),),
      ),
    );
  }
}

//   _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
// }
//
// class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
//   @override
//   Widget build(BuildContext context) {
//     Widget content = Column(
//       children: <Widget>[
//         Padding(
//             padding: const EdgeInsets.all(8.0),
//           child: Text(widget.jokes.setup ?? 'joke belum dipilih'),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(widget.jokes.setup ?? 'tidak ada punchline'),
//         ),
//       ],
//     );
//     if (widget.cekDeviceLayout == true) {
//
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.jokes.setup?? 'no selected type'),
//       ),
//       body: Center(child: content,),
//       backgroundColor: Colors.blue,
//     );
//   }
// }
//
// class ListDetailJoke extends StatelessWidget {
//   late final Joke jokelist;
//
//   ListDetailJoke({required this.jokelist});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }

