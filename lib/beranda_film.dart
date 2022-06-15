import 'package:daftar_film/detail_film.dart';
import 'package:daftar_film/models/film_model.dart';
import 'package:daftar_film/theme.dart';
import 'package:flutter/material.dart';

class BerandaFilm extends StatelessWidget {
  const BerandaFilm({Key key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 90),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/foto_yolando.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Pagi',
                          style: hitamNormal12Text,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Yolando Asri Erbenca Gegeh',
                          style: putihMedium14Text,
                        )
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        showAlertDialog(context);
                      },
                      child: Icon(
                        Icons.info_outline,
                        color: putih,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      'Top Movie',
                      style: putihMedium20Text,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Coming Soon"),
                          duration: Duration(milliseconds: 500),
                        ));
                      },
                      child: Text(
                        'See More',
                        style: hitamLight14Text,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 300,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final FilmModel film = filmList[index];
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailFilm(
                                    film: film,
                                  );
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: film.index == 1 ? 0 : 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 190,
                                  height: 250,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    child: Image.network(
                                      film.urlBackground,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  film.judulFilm,
                                  style: putihMedium16Text,
                                ),
                                Container(
                                  width: 108,
                                  height: 18,
                                  child: Row(
                                    children: [1, 2, 3, 4, 5].map((index) {
                                      return Container(
                                        margin: EdgeInsets.only(),
                                        child: RatingItem(
                                          index: index,
                                          rating: film.angkaRatingFilm,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )
                              ],
                            ),
                          ));
                    },
                    itemCount: filmList.length,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tonton Sekarang',
                      style: putihMedium20Text,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Coming Soon"),
                          duration: Duration(milliseconds: 500),
                        ));
                      },
                      child: Text(
                        'See More',
                        style: hitamLight14Text,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final FilmModel film = filmList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailFilm(
                                  film: film,
                                );
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: film.index == 1 ? 0 : 15),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image.network(
                                        film.urlIconFilm,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      film.genreFilm,
                                      style: hitamNormal12Text,
                                    ),
                                    Text(
                                      film.judulFilm,
                                      style: putihMedium16Text,
                                    ),
                                    Container(
                                      width: 96,
                                      height: 20,
                                      child: Row(
                                        children: [1, 2, 3, 4, 5].map((index) {
                                          return Container(
                                            margin: EdgeInsets.only(),
                                            child: RatingItem(
                                              index: index,
                                              rating: film.angkaRatingFilm,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: filmList.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 30,
        height: 65,
        // margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Color(0xff1B1E25),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Home"),
                  duration: Duration(milliseconds: 500),
                ));
              },
              child: Icon(
                Icons.home,
                size: 40,
                color: ungu,
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Search"),
                  duration: Duration(milliseconds: 500),
                ));
              },
              child: Icon(
                Icons.search,
                size: 40,
                color: hitamLight,
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Bookmark"),
                  duration: Duration(milliseconds: 500),
                ));
              },
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: hitamLight,
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Profile"),
                  duration: Duration(milliseconds: 500),
                ));
              },
              child: Icon(
                Icons.person,
                size: 40,
                color: hitamLight,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// ignore: must_be_immutable
class RatingItem extends StatelessWidget {
  int index;
  final int rating;
  RatingItem({this.index, this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/images/bintang.png'
          : 'assets/images/bintang_abu.png',
      width: 16,
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(color: ungu),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Color(0xFF1D2027),
    title: Text(
      "About Me",
      style: TextStyle(color: Colors.white),
    ),
    content: Text(
      "Name : Yolando\nCity : Bandung\nCollage : Telkom University\nThis application is made for Dicoding submission assignments",
      style: putihNormal12Text.copyWith(fontSize: 16),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
