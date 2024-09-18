import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  // Daftar gambar slide
  final List<String> slideImages = [
    'https://images2.minutemediacdn.com/image/upload/c_crop,w_2250,h_1265,x_0,y_0/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/images/voltaxMediaLibrary/mmsport/video_games/01j2v4npc070eteq7e5j.jpg',
    'https://i0.wp.com/www.lapakgaming.com/blog/id-id/wp-content/uploads/2024/07/Honkai-Star-Rail-2.4-character-and-Light-cone-banner.webp?fit=1200%2C675&ssl=1',
    'https://cdn.mmoculture.com/mmo-images/2021/06/Honkai-crossover-Genshin-Keyart-EN-1024x578-1.jpg',
  ];

  // Daftar URL gambar icon game
  final List<String> gameImages = [
    'https://static.wikia.nocookie.net/gensin-impact/images/8/80/Genshin_Impact.png/revision/latest?cb=20240331104358',
    'https://play-lh.googleusercontent.com/cM6aszB0SawZNoAIPvtvy4xsfeFi5iXVBhZB57o-EGPWqE4pbyIUlKJzmdkH8hytuuQ',
    'https://play-lh.googleusercontent.com/s25QKqsO28Lde77NOHzdMf4F7m8jakOsfOm98M3fJ9oOpTa-DhGirIjoBGE2x_ddzg',
    'https://play-lh.googleusercontent.com/DEkjrvPufl6TG4Gxq4m8goCSLYiE1bLNOTnlKrJbHDOAWZT40qG3oyALMZJ2BPHJoe8',
  ];

  // Daftar nama game
  final List<String> gameNames = [
    'GENSHIN IMPACT',
    'HONKAI STAR RAIL',
    'HONKAI IMPACT 3',
    'ZENLESS ZONE ZERO',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < slideImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            itemCount: slideImages.length,
            itemBuilder: (context, index) {
              return Image.network(
                slideImages[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 4,
            padding: const EdgeInsets.all(10),
            children: List.generate(gameNames.length, (index) {
              return Card(
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                        gameImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        gameNames[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
