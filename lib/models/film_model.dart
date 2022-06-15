class FilmModel {
  int index;
  String urlBackground;
  String urlIconFilm;
  String ratingFilm;
  String judulFilm;
  String genreFilm;
  String direktorFilm;
  int angkaRatingFilm;
  String sinopsisSingkat;
  String sinopsisPanjang;
  String urlSinopsis;

  FilmModel(
      {this.index,
      this.urlBackground,
      this.urlIconFilm,
      this.ratingFilm,
      this.judulFilm,
      this.genreFilm,
      this.direktorFilm,
      this.angkaRatingFilm,
      this.sinopsisSingkat,
      this.sinopsisPanjang,
      this.urlSinopsis});
}

var filmList = [
  FilmModel(
      index: 1,
      urlBackground:
          'https://upload.wikimedia.org/wikipedia/id/thumb/e/e7/Poster_film_Kukira_Kau_Rumah.jpg/220px-Poster_film_Kukira_Kau_Rumah.jpg',
      urlIconFilm: 'https://images.solopos.com/2022/02/kukira-kau-rumah.jpg',
      ratingFilm: '4,0',
      judulFilm: 'Kukira Kau Rumah',
      genreFilm: 'Romance',
      direktorFilm: 'Umay Shahab',
      angkaRatingFilm: 4,
      sinopsisSingkat:
          'Film ini bercerita tentang pemuda bernama Pram (Jourdy Pranata) yang kesepian akibat ditinggalkan sang ayah untuk selamanya ketika dia kecil. Sang ibu, yang seharusnya merawat dia, malah disibukkan dengan pekerjaannya.',
      sinopsisPanjang:
          'Film ini bercerita tentang pemuda bernama Pram (Jourdy Pranata) yang kesepian akibat ditinggalkan sang ayah untuk selamanya ketika dia kecil. Sang ibu, yang seharusnya merawat dia, malah disibukkan dengan pekerjaannya.Pram yang kesepian akhirnya mengisi waktu dengan bermain musik sembari mengarang lagu. Dia juga bekerja part time di sebuah kafe musik Singkat cerita, Pram bertemu Niskala (Prilly Latuconsina). Dari pertemuan itu akhirnya membuat mereka semakin sering bersua. Hubungan keduanya pun makin dekat.Namun, Pram tidak mengetahui bahwa Niskala mengidap gangguan bipolar.Selain itu, Niskala menyembunyikan fakta bahwa ia mengejar pendidikan tinggi yang dimaksud ayahnya, Dedi (Kiki Narendra).Niskala ingin membuktikan kepada ayahnya bahwa meskipun dengan kondisinya, ia masih bisa berprestasi. Sejak Pram akrab dengan Niskala, kehidupan Niskala berubah. Pram merasa Niskala bisa mengisi hari-hari sepinya, bahkan bisa mendukungnya dalam bermusik. Duet Pram dengan Niskala pun mendapat apresiasi luar biasa. Pram akhirnya mengetahui bahwa Niskala mengidap gangguan bipolar.Namun, Pram justru semakin mencintai Niskala. Saat ayah Niskala mengetahui anaknya sedang bernyanyi di kafe, hingga terjadi keributan antara Pram dan Dedi.',
      urlSinopsis: 'https://www.youtube.com/watch?v=yLIY-yaF9tE'),
  FilmModel(
      index: 2,
      urlBackground:
          'https://m.media-amazon.com/images/M/MV5BYjBjM2Y5YWEtNTgyMi00MzcwLThkYTctYzZmY2FkNjZjZTRjXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg',
      urlIconFilm:
          'https://media.suara.com/pictures/300x300/2022/03/10/14880-poster-film-kkn-di-desa-penari.jpg',
      ratingFilm: '3',
      judulFilm: 'KKN Desa Penari',
      genreFilm: 'Horror',
      direktorFilm: 'Lele Gaila',
      angkaRatingFilm: 3,
      sinopsisSingkat:
          'Ada beberapa mahasiswa dari salah satu Universitas yang ada di daerah Jawa Timur. Pada kisah dalam film ini difokuskan kepada 6 orang mahasiswa yang bernama Widya, Nur, Ayu, Bima, Wahyu, dan Anton. Pada saat memasuki desa yang merupakan tempat KKN, mereka mengalami sebuah kejadian aneh.',
      sinopsisPanjang:
          'Ada beberapa mahasiswa dari salah satu Universitas yang ada di daerah Jawa Timur. Pada kisah dalam film ini difokuskan kepada 6 orang mahasiswa yang bernama Widya, Nur, Ayu, Bima, Wahyu, dan Anton. Pada saat memasuki desa yang merupakan tempat KKN, mereka mengalami sebuah kejadian aneh. Berawal dari salah seorang mahasiswi yang bernama Nur mendengar suara gamelan di dalam hutan, sampai ada salah satu mahasiswa yang bernama Bima meninggal di lokasi KKN. Hal ini terjadi pada tahun 2009 di salah satu kota yang berinisial S. Semuanya menjadi kacau seperti ini karena  dua orang diantara mereka  yang tidak memperhatikan peraturan. Mereka adalah Ayu dan Bima, diketahui bahwa mereka melakukan hubungan terlarang yang mengakibatkan mereka semua diganggu. Dalam kisah ini, ada sesosok Jin yang menjadi cerita utamanya. Jin ini disebut dengan Badarawuhi. Dia merupakan sesosok penari yang menghantui Nur sang pemeran utama. Jin tersebut berhasil merasuki tubuh Widya dan mulai menghasut Ayu dan Bima untuk melakukan perbuatan yang melanggar norma  di Desa tersebut. Ending dari kisah ini sangat tragis karena Ayu dan Bima ditemukan dalam kondisi tak bernyawa di Desa tersebut.',
      urlSinopsis: 'https://www.youtube.com/watch?v=01BPk6M37qs'),
  FilmModel(
      index: 3,
      urlBackground:
          'https://cdn1-production-images-kly.akamaized.net/ByfoNPSMTMfPEtHmnQMFhgGP80Y=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg',
      urlIconFilm:
          'https://static.republika.co.id/uploads/images/inpicture_slide/poster-terbaru-film-spider-man-no-way_211116160111-504.jpeg',
      ratingFilm: '5',
      judulFilm: 'Spiderman No Way Home',
      genreFilm: 'Fantasi',
      direktorFilm: 'Marvel Studio',
      angkaRatingFilm: 5,
      sinopsisSingkat:
          'Spider-Man: No Way Home mengisahkan dilema yang dirasakan Peter Parker (Tom Holland) setelah ia difitnah dan identitasnya dibongkar oleh Mysterio (Jake Gyllenhaal) sebelum tewas dalam pertarungan di London. Informasi dari Mysterio itu semakin berkembang dengan penuh spekulasi juga tudingan setelah diberitakan media sensasional The Daily Bugle yang dipimpin J Jonah Jameson (JK Simmons).',
      sinopsisPanjang:
          'Spider-Man: No Way Home mengisahkan dilema yang dirasakan Peter Parker (Tom Holland) setelah ia difitnah dan identitasnya dibongkar oleh Mysterio (Jake Gyllenhaal) sebelum tewas dalam pertarungan di London. Informasi dari Mysterio itu semakin berkembang dengan penuh spekulasi juga tudingan setelah diberitakan media sensasional The Daily Bugle yang dipimpin J Jonah Jameson (JK Simmons). Spider-Man, yang identitasnya diungkap sebagai Peter Parker, dicap sebagai pembunuh dari Mysterio dan membuat semua orang kesal dan membenci dirinya. Peter Parker yang semula tak pernah dilihat oleh sekelilingnya mendadak menjadi pusat perhatian. Rumahnya bahkan tak pernah sepi dipantau oleh media juga masyarakat. Ia pun harus menghadapi berbagai tuntutan hukum usai pemberitaan tersebut. Kondisi itu membuat Peter Parker semakin merasa tersudutkan dan kepayahan, apalagi dirinya baru menjalin hubungan asmara dengan MJ (Zendaya). Sampai kemudian, Peter Parker memiliki ide. Ia mendatangi Doctor Strange yang pernah sama-sama berjuang melawan Thanos. Kepada Strange, Peter meminta tolong membuat semua orang lupa bahwa dirinya adalah Spider-Man. Strange (Benedict Cumberbatch) sebenarnya sempat diberi peringatan oleh Wong (Benedict Wong), tapi ia tetap memilih membantu Peter Parker. Kala Strange mulai merapal mantra, Peter rupanya gamang akan keputusan tersebut hingga ia membuat sang Master of the Mystic Arts kesal dan membuat kesalahan. Kesalahan itu menyebabkan batas lintas-semesta menjadi terbuka dan menarik sejumlah pihak dari semesta lain masuk dalam semesta yang saat ini dihuni Peter dan Strange. Sementara itu, Film ini dibintangi oleh Tobey Maguire, Tom Holland, Andrew Agrfield, Zendaya dan banyak lagi artis ternama. Tidak hanya itu Spiderman juga di stradarai oleh Jon Watts dan ditulis oleh Chris McKenna dan Erik Sommers.',
      urlSinopsis: 'https://www.youtube.com/watch?v=JfVOs4VSpmA'),
  FilmModel(
      index: 4,
      urlBackground:
          'https://blog.amartha.com/wp-content/uploads/2022/02/all-of-us-are-dead.jpg',
      urlIconFilm:
          'https://blog.amartha.com/wp-content/uploads/2022/02/all-of-us-are-dead.jpg',
      ratingFilm: '4',
      judulFilm: 'All Of Us Are Dead',
      genreFilm: 'Thiriller',
      direktorFilm: 'Netflix Series',
      angkaRatingFilm: 4,
      sinopsisSingkat:
          'All of Us Are Dead menceritakan tentang sekelompok siswa SMA yang terperangkap di sekolah yang menjadi tempat penyebaran wabah zombie. Mereka pun harus bersatu dan berjuang untuk bertahan hidup hingga bala bantuan tiba.',
      sinopsisPanjang:
          'All of Us Are Dead menceritakan tentang sekelompok siswa SMA yang terperangkap di sekolah yang menjadi tempat penyebaran wabah zombie. Mereka pun harus bersatu dan berjuang untuk bertahan hidup hingga bala bantuan tiba. Serial ini membawa keunikan tersendiri dengan menampilkan jenis infeksi yang berbeda-beda, termasuk ‘golongan yang tidak bisa mati’ - mereka yang telah digigit zombie namun masih bisa berpikir dan menyerang - dan ‘golongan imun’ - mereka yang tidak berubah menjadi zombie namun masih di bawah pengaruh virus. Di bawah naungan sutradara Lee JQ dan penulis Chun Sung-il, All of Us Are Dead mampu menghasilkan genre zombie survival remaja yang segar dengan menampilkan sisi K-zombie yang baru kepada penonton dunia. Dengan jalan cerita yang mendebarkan dan efek visual yang apik, tak heran apabila serial ini mampu mendominasi di Netflix.',
      urlSinopsis: 'https://www.youtube.com/watch?v=IN5TD4VRcSM'),
  FilmModel(
      index: 5,
      urlBackground: 'https://lsf.go.id/wp-content/uploads/2021/12/SING-2.jpeg',
      urlIconFilm:
          'https://images.bisnis-cdn.com/posts/2022/01/10/1487332/sing-2.jpg',
      ratingFilm: '5',
      judulFilm: 'Sing 2',
      genreFilm: 'Animasi',
      direktorFilm: 'Universal Pictures',
      angkaRatingFilm: 5,
      sinopsisSingkat:
          'Sing 2 mengambil setting beberapa bulan setelah film pertamanya. Buster Moon (Matthew McConaughey) dikisahkan berhasil merevitalisasi Moon Theater peninggalan ayahnya. Tak hanya berhasil memperbaiki Moon Theater, Buster juga sukses menjadikannya sebagai teater tersukses di Calatonia di mana tidak ada pertunjukkan di sana yang tidak sold out.',
      sinopsisPanjang:
          'Sing 2 mengambil setting beberapa bulan setelah film pertamanya. Buster Moon (Matthew McConaughey) dikisahkan berhasil merevitalisasi Moon Theater peninggalan ayahnya. Tak hanya berhasil memperbaiki Moon Theater, Buster juga sukses menjadikannya sebagai teater tersukses di Calatonia di mana tidak ada pertunjukkan di sana yang tidak sold out. Meski berhasil menjadikan Moon Teater sebagai yang tersukses di Calatonia, Buster belum puas. Ia punya target baru, membawa kelompok teaternya yang terdiri atas Meena (Tori Kelly), Rosita (Reese Witherspoon), Ash (Scarlet Johansson), Johnny (Taron Egerton), Gunter (Nick Kroll), dan Miss Crawly (Garth Jennings) perform di Redshore City. Padanan dari Las Vegas, Redshore City adalah pusat show biz di mana hanya seniman-seniman terpilih (dan teruji) yang bisa tampil di sana. Buster hakul yakin kru-nya pantas dan berhak untuk tampil di Redshore. Demi mewujudkannya, Buster mengundang talent scout dari Crystal Entertainment, Suki (Chelsea Peretti), ke teaternya untuk meninjau kemampuannya. Di luar dugaan, Suki tidak puas dengan performa Moon Theater. Tidak berhenti di situ, Suki pun merasa kelompok Buster kurang tangguh untuk melawan buasnya persaingan di Redshore.Dasarnya tidak mengenal kata menyerah, Buster nekat mengajak krunya ke Redshore City. Ia yakin bisa membujuk Suki dan bosnya, Jimmy Crystal (Bobby Cannavale), untuk memperbolehkan kelompoknya tampil di Crystal Theater. Gilanya, Buster hanya bermodal nekat, tidak membawa satupun naskah jadi atau deck untuk dipresentasikan.',
      urlSinopsis: 'https://www.youtube.com/watch?v=EPZu5MA2uqI'),
];
