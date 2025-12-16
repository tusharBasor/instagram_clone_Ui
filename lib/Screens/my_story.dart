import 'dart:async';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Timer? _timer;
  bool islike = false;

  @override
  void initState() {
    super.initState();

    /// PROGRESS BAR CONTROLLER 8sec
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..forward();

    /// AUTO CLOSE AFTER 8sec
    _timer = Timer(const Duration(seconds: 8), () {
      if (mounted) Navigator.pop(context);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [

                  /// SWIPE DOWN
                  GestureDetector(
                    onVerticalDragUpdate: (details) {
                      if (details.primaryDelta! > 10) {
                        Navigator.pop(context);
                      }
                    },

                    /// STORY IMAGE
                    child: Image.asset('assets/images/story.png'),
                  ),

                  /// PROGRESS BAR
                  Positioned(
                    top: 8,
                    left: 8,
                    right: 8,
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, _) {
                        return LinearProgressIndicator(
                          value: _controller.value,
                          backgroundColor: Colors.white30,
                          valueColor: const AlwaysStoppedAnimation(
                            Colors.white,
                          ),
                        );
                      },
                    ),
                  ),

                  /// TOP USER INFO
                  Positioned(
                    top: 30,
                    left: 12,
                    right: 12,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            'assets/images/icons/story_profile_img.png',
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Tushar • 1h',
                          style: TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// BOTTOM MESSAGE BAR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 44,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Send message',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                /// LIKE BUTTON
                InkWell(
                  onTap: () {
                    islike = !islike;
                    setState(() {

                    });
                  },
                  child: Icon( islike ?
                      Icons.favorite : Icons.favorite_border,
                     color: islike ? Colors.red : Colors.white,
                    size: 28,
                  ),
                ),

                const SizedBox(width: 12),

                /// SEND BUTTON
                const Icon(Icons.send, color: Colors.white, size: 26),
              ],
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

