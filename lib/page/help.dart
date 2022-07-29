import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    var style = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    var style2 = const TextStyle(
      fontSize: 20,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: screen.height / 4,
              width: screen.width / 1,
              color: Colors.grey[600],
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(12, 12),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_circle_left,
                        color: Colors.grey[100],
                        size: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Rangkumanku 1.0',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: screen.height / 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Rangkumanku merupakan aplikasi yang dirancang untuk merangkum materi-materi apa saja yang dibutuhkan pengguna. Nantinya di versi selanjutnya akan ditambahkan fiktur CRUD rangkuman yang akan tersambung dengan Firebase. Kurang lebih fungsinya sama seperti aplikasi notes pada umumnya.',
                        textAlign: TextAlign.justify,
                        style: style,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '1. Rangkuman dibagi menjadi tiga kategori, yaitu : basic, medium dan expert.',
                        style: style2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '2. Basic (hijau), Medium (kuning), Expert (merah).',
                        style: style2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '3. Badges pada text "Dibaca" akan bertambah nilainya ketika pengguna melakukan cheklist pada icon "circle_outlined" yang ada disamping masing-masing rangkuman.',
                        style: style2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
