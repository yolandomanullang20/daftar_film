import 'package:flutter/material.dart';

import 'package:daftar_film/models/film_model.dart';
import 'package:daftar_film/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailFilm extends StatefulWidget {
  final FilmModel film;
  const DetailFilm({Key key, this.film}) : super(key: key);

  @override
  State<DetailFilm> createState() => _DetailFilm(film);
}

class _DetailFilm extends State<DetailFilm> {
  bool isStoryline = false;

  FilmModel filmModel;
  _DetailFilm(this.filmModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.network(
                      filmModel.urlBackground,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  filmModel.judulFilm,
                  style: putihMedium20Text,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Director : ' + filmModel.direktorFilm + '     |     ',
                      style: hitamLight14Text,
                    ),
                    Image.asset(
                      'assets/images/bintang.png',
                      width: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      filmModel.ratingFilm,
                      style: hitamLight14Text,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 20,
                  width: 100,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      filmModel.genreFilm,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff252932),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Storyline',
                  style: putihMedium20Text,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  isStoryline
                      ? filmModel.sinopsisPanjang
                      : filmModel.sinopsisSingkat + ' . . . . . . ',
                  textAlign: TextAlign.justify,
                  style: hitamLight14Text,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        isStoryline = !isStoryline;
                      },
                    );
                  },
                  child: Text(
                    isStoryline ? 'HideMore' : 'ReadMore',
                    style: TextStyle(color: ungu, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // print(film.urlSinopsis.toString());
          _launchURL(filmModel.urlSinopsis);
        },
        child: Container(
          width: MediaQuery.of(context).size.width - (30),
          height: 65,
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: ungu,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Watch Trailer',
                style: putihMedium18Text,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

AppBar buildAppBar() {
  return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Color(0xFF1D2027),
      iconTheme: IconThemeData(color: Colors.white, size: 20),
      centerTitle: true,
      title: buildTextTitle(),
      actions: <Widget>[BookmarkButton()]);
}

Text buildTextTitle() {
  return Text(
    'Detail Film',
  );
}

class BookmarkButton extends StatefulWidget {
  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
          isBookmark
              ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Bookmark Ditambahkan"),
                  duration: Duration(milliseconds: 500),
                ))
              : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Bookmark Dihapus"),
                  duration: Duration(milliseconds: 500),
                ));
        });
      },
      tooltip: 'Bookmark',
      icon: Icon(
        Icons.bookmark_add_outlined,
        color: isBookmark ? ungu : putih,
      ),
    );
  }
}
