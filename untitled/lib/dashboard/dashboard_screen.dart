import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/api/api_implementer.dart';
import 'package:untitled/config/routes/app_routes.dart';
import 'package:untitled/dashboard/news_model.dart' as model;

class DashbaordScreen extends StatefulWidget {
  const DashbaordScreen({Key? key}) : super(key: key);

  @override
  State<DashbaordScreen> createState() => _DashbaordScreenState();
}

class _DashbaordScreenState extends State<DashbaordScreen> {
  RxInt _selectedIndex = 0.obs;
  late model.GetNewsListModel getNewsListModel;
  late List<model.Articles> getArticleList;

  RxBool isLoading = true.obs;
  RxBool hasError = false.obs;

  // static final List<Widget> _widgets = <Widget>[
  //
  //   Container(
  //     margin: EdgeInsets.all(12.0),
  //     child:
  //     // ListView.builder(
  //     //     shrinkWrap: true,
  //     //     scrollDirection: Axis.vertical,
  //     //     itemCount:getNewsListModel.articles.length,
  //     //     itemBuilder: (BuildContext context, int index) {
  //     //       return Card(
  //     //         child: Text("test"),
  //     //       );
  //     //     }),
  //   ),
  //   Container(
  //     margin: EdgeInsets.all(12.0),
  //     child: const Text("hii"),
  //   ),
  // ];

  @override
  void initState() {
    getNewsApiCall(
      q: "IT",
      from: "2022-04-05",
      sortBy: "publishedAt",
      pageSize: "2",
      page: "1",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Get.offAndToNamed(AppRoutes.LOGIN_SCREEN);
                },
                child: Icon(Icons.logout))
          ],
          title: Text("Dashboard"),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: _selectedIndex.value,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'It',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Cricket',
              ),
            ],
          ),
        ),
        body: Obx(() => isLoading.value == true
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: getNewsListModel.articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                getNewsListModel.articles[index].urlToImage,
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                getNewsListModel.articles[index].title,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                getNewsListModel.articles[index].description,
                                style: TextStyle(fontSize: 12.0),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                getNewsListModel.articles[index].content,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }) //_widgets.elementAt(_selectedIndex.value),
            ));
  }

  void _onItemTapped(int index) {
    // setState(() {
    _selectedIndex.value = index;
    if (_selectedIndex.value == 0) {
      getNewsApiCall(
        q: "IT",
        from: "2022-04-05",
        sortBy: "publishedAt",
        pageSize: "2",
        page: "1",
      );
    } else {
      getNewsApiCall(
        q: "CRICKET",
        from: "2022-04-05",
        sortBy: "publishedAt",
        pageSize: "2",
        page: "1",
      );
    }

    //  });
  }

  void getNewsApiCall({
    required String q,
    required String from,
    required String sortBy,
    required String pageSize,
    required String page,
  }) async {
    isLoading.value = true;
    hasError.value = false;
    try {
      getNewsListModel = await ApiImplementer.getNewapiImplementer(
        q: q,
        from: from,
        sortBy: sortBy,
        pageSize: from,
        page: page,
      );
      isLoading.value = false;
      hasError.value = false;
    } catch (error) {
      isLoading.value = false;
      hasError.value = true;
    }
  }
}
