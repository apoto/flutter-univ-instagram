import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  FeedPage({super.key});

  final images = [
    'https://www.sapporo.travel/sp/sapporo-ramen/images/mainv.jpg',
    'https://livedoor.blogimg.jp/cordial8317-gourmet/imgs/6/9/69509807.jpg',
    'https://mall.premium-water.net/img/goods/L/KWK-007_0d46f33720c843c18b67bd9cd4922e39.jpg',
    'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/01/a0001697/img/basic/a0001697_main.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('フィード'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://i.pinimg.com/474x/f9/5c/55/f95c5525bea42df3611512e92a190c6a.jpg',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Instagram',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                size: 14,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          Text(
                            'サンディエゴ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      i,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 28,
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 28,
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.send_outlined,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.bookmark_border,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '「いいね！」704,899件',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
