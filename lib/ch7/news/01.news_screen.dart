import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_01/ch7/news/05.news_detail_screen.dart';
import 'news_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final Dio dio = Dio();
  final List<NewsModel> dataList = [];
  int page = 1;
  bool loading = false;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isBottom = false;
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          isBottom = true;
        }
        if (isBottom && !loading) {
          page++;
          String url = makeUrl(page);
          getApi(url);
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NewsScreen"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                    onPressed: () async {
                      String url = makeUrl(page);
                      getApi(url);
                    },
                    child: Text("call")),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      page = 1;
                      dataList.clear();
                      setState(() {});
                    },
                    child: Text("Clear")),
              ),
            ],
          ),
          Expanded(
              child: ListView.separated(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return item(dataList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: dataList.length)),
          if (loading) ...[
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> getApi(String url) async {
    //api 호출 전에 기존에 있던 데이터 제거

    loading = true;
    setState(() {});
    final response = await dio.get(url);
    print("response : $response");
    List<NewsModel> result =
        response.data["articles"].map<NewsModel>((element) {
      return NewsModel.fromJson(element);
    }).toList();
    dataList.addAll(result);
    loading = false;
    setState(() {});
  }

  Widget item(NewsModel newsModel) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewsDetailScreen(newsModel: newsModel);
          }));
        },
        child: Row(
          children: [
            const SizedBox(width: 10),
            Hero(
              tag: newsModel,
              child: Image.network(
                newsModel.urlToImage,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null &&
                      loadingProgress.expectedTotalBytes != null) {
                    int percent = ((loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!) *
                            100)
                        .ceil();
                    if(percent==100) return child;
                    return SizedBox(
                      width: 150,
                      height: 150,
                      child: Text(percent.toString(),
                      style: const TextStyle(fontSize: 25),),

                    );
                  }
                  return child;
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey.withOpacity(0.5),
                    child: Icon(
                      Icons.error_outline,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(child: Text(newsModel.title))
          ],
        ));
  }

  String makeUrl(int page) {
    String url = "https://newsapi.org/v2/everything"
        "?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey="
        "d38754e618a44b58be87417caa105cdc&pageSize=20";

    url += "&page=$page";

    return url;
  }

}
