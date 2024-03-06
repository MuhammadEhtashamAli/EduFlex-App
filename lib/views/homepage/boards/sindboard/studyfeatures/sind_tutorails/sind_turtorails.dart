import 'package:eduflex/widget/categorycontaineer.dart';
import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SindTortails extends StatefulWidget {
  const SindTortails({Key? key}) : super(key: key);

  @override
  State<SindTortails> createState() => _SindTortailsState();
}

class _SindTortailsState extends State<SindTortails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            CustomHeaderStack(
              title: 'Tutorials',
              subTitle: 'Important Topic Videos',
            ),
            SizedBox(
              height: 20,
            ),
            // SingleChildScrollView
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 1',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 2',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 3',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 4',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 5',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 6',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 7',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                      CustomCategoryContainer(
                        imagePath: 'images/yt.png',
                        categoryName: 'Tutorials 8',
                        onTap: () {
                          _navigateToVideo(
                              'https://youtu.be/LJ40IUun52I?si=HxIRVCg0qopxyYaR');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToVideo(String videoIdOrUrl) {
    String videoUrl;
    if (videoIdOrUrl.startsWith('http')) {
      // If the input is a URL
      videoUrl = videoIdOrUrl;
    } else {
      // If the input is a video ID
      videoUrl = 'https://www.youtube.com/watch?v=$videoIdOrUrl';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
            flags: YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          ),
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
