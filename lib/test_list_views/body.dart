import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'components/books.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<ProductDataModel>;
          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
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
                                padding: EdgeInsets.only(left: 8, right: 16),
                                child: Text(
                                  items[index].titleAr.toString(),
                                  textAlign: TextAlign.right,
                                  /*style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),*/
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                              /*    Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(items[index].price.toString()),
                              )
                              */
                            ],
                          ),
                        )),
                        Container(
                          color: Colors.amber,
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Color.fromARGB(255, 147, 38, 8)),
                        ),
                      ],
                    ),
                  ),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/tests.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
