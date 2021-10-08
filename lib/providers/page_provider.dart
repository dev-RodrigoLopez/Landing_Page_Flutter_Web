// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier{

  PageController scrollController = new PageController();
  List<String> _pages = ['home', 'about', 'pricing', 'contact', 'location'];

  goTO( int index ){

    // final routeName = _pages[index];s
    html.window.history.pushState(null, '', '#/${ _pages[index]}');

    scrollController.animateToPage(
      index, 
      duration: Duration(milliseconds: 300), 
      curve: Curves.easeInOut
    );

  }



}