class CardModel {
  String title;
  String note;
  String level;

  CardModel({
    required this.title,
    required this.note,
    required this.level,
  });
}

var cardModelList = [
  CardModel(
    title: 'Widget Flutter',
    note:
        'Widget adalah Semua komponen seperti button, text, icon dan sebagainya yang membentuk sebuah tampilan atau kerangka aplikasi. Keseluruhan dari aplikasi yang terlihat pada layar merupakan kumpulan widget.',
    level: 'basic',
  ),
  CardModel(
    title: 'Object Oriented Programming',
    note:
        'Pemrograman berorientasi objek (OOP) merupakan paradigma pemrograman berdasarkan konsep "objek", yang dapat berisi data, dalam bentuk field atau dikenal juga sebagai atribut; serta kode, dalam bentuk fungsi/prosedur atau dikenal juga sebagai method.',
    level: 'medium',
  ),
  CardModel(
    title: 'Prinsip Pemrograman SOLID',
    note:
        'SOLID (Single-responsibility, Open-closed, Liskov substitution, Interface segregation dan Dependency Inversion. SOLID merupakan prinsip-prinsip yang dibuat untuk membantu programmer yang menggunakan bahasa pemograman berbasis OOP, membuat kodingan yang bersih, kokoh, dan mudah maintain. Prinsip ini dicetuskan oleh Robert C.',
    level: 'expert',
  ),
  CardModel(
    title: 'Firebase',
    note:
        'Firebase adalah suatu layanan dari Google yang digunakan untuk mempermudah para pengembang aplikasi dalam mengembangkan aplikasi. Dengan adanya Firebase, pengembang aplikasi bisa fokus mengembangkan aplikasi tanpa harus memberikan usaha yang besar.',
    level: 'medium',
  ),
  CardModel(
    title: 'API',
    note:
        'API adalah singkatan dari Application Programming Interface. API sendiri merupakan interface yang dapat menghubungkan satu aplikasi dengan aplikasi lainnya. Dengan kata lain, peran API adalah sebagai perantara antar berbagai aplikasi berbeda, baik dalam satu platform yang sama atau pun lintas platform.',
    level: 'medium',
  ),
  CardModel(
    title: 'Bahasa Dart',
    note:
        'Dart adalah bahasa pemrograman yang dirancang untuk pengembangan klien, seperti untuk web dan aplikasi seluler. Ini dikembangkan oleh Google dan juga dapat digunakan untuk membangun aplikasi server dan desktop. Ini adalah bahasa yang berorientasi objek, berbasis kelas, dan mengumpulkan sampah dengan sintaks gaya-C.',
    level: 'basic',
  ),
];
