import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleproject/arguments.dart';
import 'package:sampleproject/screens/pdf_veiwer/pdf_veiwer.dart';
import 'components/book.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  Future<List<Book>> readJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/tests.json');
    final list = json.decode(jsondata) as List<dynamic>;
    var allBooks = list.map((e) => Book.fromJson(e)).toList();
    if (search == '') {
      return allBooks;
    } else {
      final filteredItems = allBooks.where((book) {
        // For each
        final arTitle = book.titleAr!.toLowerCase();
        final input = search.toLowerCase();
        return arTitle.contains(input);
      }).toList();
      return filteredItems;

      /// return for where
    }
  }

  final controller = TextEditingController();

  // List<Pdf> Pdfs = allPdfs;
  static var items; //   object
  static var search = '';
  List<Book>? pdfs = items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: TextField(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
                hintText: ' اسم التحليل',
                hintStyle: TextStyle(),
              ),
              onChanged: (query) {
                //filterpdf    ---------------------------

                setState(() {
                  search = query;
                });
              },
            ),
          ),
          FutureBuilder(
            future: readJsonData(),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text("${data.error}"));
              } else if (data.hasData) {
                items = data.data as List<Book>;

                return ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap:
                        true, // if we dont put it the list view will disappear
                    itemCount: items.length, //items == 'null' ? 0 :
                    itemBuilder: (context, index) {
                      // final book = items[index];

                      // Display our list of pdfs on the screen
                      return myCard(index);
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    ));
  }

  Card myCard(int index) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 16),
                    child: GestureDetector(
                      onTap: () {
                        String pdfTitle = items[index].titleAr.toString();
                        print(index);

                        print(pdfTitle);

                        Navigator.pushReplacementNamed(
                          context,
                          PdfVeiwer.routname,
                          arguments: ScreenArguments(index, pdfTitle),
                        );

                        // هون لازم نستدعي تابع يخزنلي ويبعتلي قيمو الانديكس والعنوان للصفحة التانية
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          items[index].titleAr.toString(),
                          textAlign: TextAlign.right,
                          style: GoogleFonts.notoKufiArabic(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Container(
              color: Colors.amber,
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                  radius: 5, backgroundColor: Color.fromARGB(255, 147, 38, 8)),
            ),
          ],
        ),
      ),
    );
  }
}
