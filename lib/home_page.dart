import 'package:flutter/material.dart';
import 'package:traffic_lightss/favourite_page/favourite_page.dart';
import 'package:traffic_lightss/album_page/album_page.dart';
import 'package:traffic_lightss/training_page/training_page.dart';
import 'package:traffic_lightss/viewing_page/viewing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const ViewingPage(),
    const AlbumPage(),
    const FavouritePage(),
    const TrainingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages.elementAt(_selectedIndex),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                onPressed: () async {
                  int res = 0;

                  res = await getTotalSongsCount();
                  showDelayedSnackbar(context, res);
                },
                // onPressed: () {
                //   int res = 0;

                //   getTotalSongsCount().then((value) => {res = value});
                //   final temp = getTotalSongsCount();
                //   temp.then((value) => {res = value});

                //   showDelayedSnackbar(context, res);
                // },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.download),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.red,
        unselectedItemColor: const Color.fromARGB(255, 122, 111, 111),
        showSelectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda_rounded),
            label: 'Огляд',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Альбоми'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: 'Улюблені'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Training')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  //TODO: here are samples of async code
  void showDelayedSnackbar(BuildContext context, int count) {
    Future.delayed(const Duration(seconds: 1), () {
      ScaffoldMessenger.of(context).showSnackBar(
        //this code ScaffoldMessenger.of(context) is used to show snackbar in the bottom of the screen
        SnackBar(
          content: Text('We have $count songs in our library'),
        ),
      );
    });
  }

  Future<int> getTotalSongsCount() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    await getArtistOfTheDay();
    //is waiting 1 second only
    return 100;
  }

  Future<String> getArtistOfTheDay() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return 'The Beatles';
  }
}

/* TASK 1
Future<String> task1 = Future.delayed(const Duration(seconds: 1),
   () {
  return 'String';
});


 task1.then((value){
  print (value);
});*/

/*TASK 2

Future<String> task1 ()async{
  await Future.delayed(const Duration(seconds: 1),
  await task2();
   () {
  return 'String'; 
});
}

 Future<String> task2 () async {
  await Future.delayed(const Duration(seconds: 1), () {});
    return 'String 2';
 }*/

 /*TASK 3

 Future<String> errorTask = Future.delayed(const Duration(seconds: 1),
 () {
  return 'String3';
  throw 'NO String3';
 });

errorTask().then(value){
  print ('done');
})

.catchError((error)=>print(error));
print ('error ocuried');*/

