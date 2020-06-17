import 'package:flutter/material.dart';
import 'package:apacenews/helper/news.dart';
import 'package:apacenews/helper/widgets.dart';

class CategoryNews extends StatefulWidget {

  final String newsCategory;

  CategoryNews({this.newsCategory});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  var newslist;
  bool _loading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    NewsForCategory news = NewsForCategory();
    await news.getNewsForCategory(widget.newsCategory);
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Apace",
              style:
              TextStyle(color: Colors.blue.shade100, fontWeight: FontWeight.w600,letterSpacing:1,fontSize: 24,fontFamily: 'Montserrat'),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.green.shade600, fontWeight: FontWeight.w600,letterSpacing:1,fontSize: 24,fontFamily: 'Montserrat'),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                ),
          )
        ],
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: CircularProgressIndicator(),
      ) : SingleChildScrollView(
        child: Container(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: ListView.builder(
                  itemCount: newslist.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return NewsTile(

                      imgUrl: newslist[index].urlToImage ?? "",
                      title: newslist[index].title ?? "",
                      desc: newslist[index].description ?? "",
                      content: newslist[index].content ?? "",
                      posturl: newslist[index].articleUrl ?? "",
                    );
                  }),
            ),
        ),
      ),
    );
  }
}
