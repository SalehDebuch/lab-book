import 'package:flutter/material.dart';
import 'package:sampleproject/screens/test_list_views/tests_list_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../arguments.dart';

// ignore: must_be_immutable
class PdfViewer extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey =
      GlobalKey(); //This for Bookmark
  // late PdfViewerController _pdfViewerController;

  // final String testTitle ;
  //final int pdfIndex ;

  @override
  Widget build(BuildContext context) {
    // var pdfIndex = 3;
    final data = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, TestsLists.routname);
          },
        ),
        title: Text(
          '${data.title}', //$testName
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState
                  ?.openBookmarkView(); // This for Bookmark
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        'assets/pdfs/${data.index}.pdf', //{$pdfIndex}

        //controller: _pdfViewerController,
        key: _pdfViewerKey, // This for Bookmark
        canShowScrollHead: true,
        canShowScrollStatus: true,
        canShowPaginationDialog: true,
      ),
    );
  }
}
