import 'package:card_swiper/card_swiper.dart';
import 'package:emadd_project/const.dart';
import 'package:emadd_project/views/widgets/fotter.dart';
import 'package:emadd_project/views/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HoemPage extends StatefulWidget {
  const HoemPage({Key? key}) : super(key: key);

  @override
  State<HoemPage> createState() => _HoemPageState();
}

class _HoemPageState extends State<HoemPage> {
  double headerHieght = 70;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          headerHieght = 0;
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          headerHieght = 70;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        child: Stack(
          children: [
            // background Image container
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/image7.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // WebSmoothScroll(
            //   controller: _scrollController,
            //   child:
            SingleChildScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              controller: _scrollController,
              child: Column(
                children: [
                  Container(
                    height: size.height,
                    color: Colors.white,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          'images/image$index.jpg',
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 7,
                      pagination: const SwiperPagination(),
                      control: const SwiperControl(),
                      autoplay: true,
                      loop: true,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 600,
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width / 15,
                        ),
                        Image.asset('images/image11.jpg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('images/image10.jpg'),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // SizedBox(
                            //   height: 90,
                            // ),
                            Text(
                              'المشروع من البداية للنهاية علينا\nنقوم بتسليم المشروع كامل.',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                '$appName هي شركة تصميم وتنفيذ للأثاث المنزلي ومقرها الزاوية الحمراء بالقاهرة'),
                            Text(
                                'متخصصون في تقديم التصميمات الرائعة والمختلفة'),
                            Text(
                                'نقوم بتنفيذ المشروعات للعديد من الشركات والمؤسسات الكبري'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                'نحن نساعد العلامات التجارية والشركات على\n النمو والتميز في السوق من خلال تحديد المساحة.'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 450,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  Container(
                    color: Colors.white,
                    height: 600,
                  ),
                  const Fotter(),
                ],
              ),
            ),
            // ),
            Header(
              hieght: headerHieght,
            ),
          ],
        ),
      ),

      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: const Text(
      //     "SIXINSH",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      // body: Scrollbar(
      //   thickness: 10,
      //   interactive: true,
      //   child: NestedScrollView(
      //       headerSliverBuilder: (context, innerBoxIsScrolled) {
      //         return <Widget>[
      //           // const SliverAppBar(
      //           //   backgroundColor: Colors.transparent,
      //           //   elevation: 0,
      //           //   floating: true,
      //           //   pinned: false,
      //           //   snap: true,
      //           //   title: Text(
      //           //     "SIXINSH",
      //           //     style: TextStyle(color: Colors.black),
      //           //   ),
      //           // ),
      //         ];
      //       },
      //       body: SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             CarouselSlider(
      //               options: CarouselOptions(
      //                 height: size.height,
      //                 autoPlay: true,
      //                 autoPlayInterval: const Duration(seconds: 5),
      //                 enableInfiniteScroll: true,
      //                 viewportFraction: 1,
      //               ),
      //               items: [1, 2, 3, 4, 5].map((i) {
      //                 return Builder(
      //                   builder: (BuildContext context) {
      //                     return Container(
      //                         width: MediaQuery.of(context).size.width,
      //                         margin:
      //                             const EdgeInsets.symmetric(horizontal: 5.0),
      //                         decoration:
      //                             const BoxDecoration(color: Colors.amber),
      //                         child: Center(
      //                           child: Text(
      //                             'text $i',
      //                             style: const TextStyle(fontSize: 16.0),
      //                           ),
      //                         ));
      //                   },
      //                 );
      //               }).toList(),
      //             ),
      //             ListView.builder(
      //                 shrinkWrap: true,
      //                 itemCount: 50,
      //                 itemBuilder: (context, i) => ListTile(
      //                       title: Text('index of $i'),
      //                     )),
      //           ],
      //         ),
      //       )),
      // )

      // CustomScrollView(
      //   slivers: [
      //     const SliverAppBar(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       title: Text(
      //         "SIXINSH",
      //         style: TextStyle(color: Colors.black),
      //       ),
      //       pinned: true,
      //       floating: true,
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         // The builder function returns a ListTile with a title that
      //         // displays the index of the current item.
      //         (context, index) => ListTile(title: Text('Item #$index')),
      //         // Builds 1000 ListTiles
      //         childCount: 50,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
