import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/my_story.dart';
import 'package:instagram_clone/app.dart';
import 'package:instagram_clone/data/assets.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});
  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool hasseenstory = false;
  bool isFollowing = false;

  String linkedin = 'https://www.linkedin.com/in/tushar-basor-333a2b344/';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).surface,
      body: CustomScrollView(
        slivers: [
          /// ------------ APP BAR ------------
          SliverAppBar(
            backgroundColor: ColorScheme.of(context).surface,
            surfaceTintColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios_sharp, size: 26),
            title: Text(
              'Tushar',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontSize: 21),
            ),
            elevation: 0,
            floating: true,
            snap: true,
            centerTitle: true,
            actions: [
              Icon(Icons.notifications_none_outlined, size: 26),
              SizedBox(width: 10),
              Icon(Icons.more_horiz_outlined, size: 26),
            ],
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ---------- PROFILE PIC AND FOLLOWERS ----------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            (context),
                            MaterialPageRoute(builder: (context) => Story()),
                          );
                          setState(() {
                            hasseenstory = true;
                          });
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.grey,
                          backgroundImage: AssetImage(
                            hasseenstory
                                ? 'assets/images/story_seened.png'
                                : 'assets/images/story_not_seen.png',
                          ),
                        ),
                      ),
                     const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '18',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            'posts',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '270k',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            'followers',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '118',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            'following',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ),

                /// ------------ BIO ------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tushar',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'Flutter Developer 👨‍💻',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '''
Mobile apps | UI/UX | Logic
Built an Instagram clone 📸
Focused on growth & innovation ''',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),

                /// ------------ CLOSE FRIENDS ------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Image.asset('assets/images/rect3.png'),
                            ),
                            Positioned(
                              right: 20,
                              child: Image.asset('assets/images/Rect2.png'),
                            ),
                            Image.asset('assets/images/Rectangle.png'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodySmall,
                            children: <TextSpan>[
                              TextSpan(text: 'Followed by'),
                              TextSpan(
                                text:
                                    'Joseph_alzari, Beth_Mooney and 16 others friends',
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// ------------ BUTTONS ------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isFollowing
                                ? AppColors.lightGrey
                                : AppColors.blue,
                            foregroundColor: isFollowing
                                ? AppColors.black
                                : AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isFollowing = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                isFollowing ? 'Following' : 'Follow',
                                style: isFollowing
                                    ? Theme.of(
                                        context,
                                      ).textTheme.bodyLarge!.copyWith(
                                        fontSize: 14,
                                        color: AppColors.black,
                                      )
                                    : Theme.of(
                                        context,
                                      ).textTheme.bodyLarge!.copyWith(
                                        fontSize: 14,
                                        color: AppColors.white,
                                      ),
                              ),
                              if (isFollowing) ...[
                                const SizedBox(width: 4),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16),
                                        ),
                                      ),
                                      builder: (context) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              title: const Text('Unfollow'),
                                              onTap: () {
                                                setState(() {
                                                  isFollowing = false;
                                                });
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: const Text('Mute'),
                                              onTap: () {},
                                            ),
                                            ListTile(
                                              title: const Text('Restrict'),
                                              onTap: () {},
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                     const SizedBox(width: 5,),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {},
                          child: Text(
                            'Message',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge!.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {},
                          child: Icon(Icons.person_add_outlined, size: 21),
                        ),
                      ),
                    ],
                  ),
                ),

                /// ------------ HIGHLIGHTS ------------
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    itemCount: highlightsList.length,
                    itemBuilder: (context, index) {
                      final item = highlightsList[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage(item.image),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.titlle,
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 8),

                /// ------------ TABS ------------
                SizedBox(
                  height: 30,
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Image.asset('assets/images/tabs/grid.png'),
                        Image.asset('assets/images/tabs/reels.png'),
                        Image.asset('assets/images/tabs/collab.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// ------------ POSTS ------------
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return RepaintBoundary(
                  child: Image.asset(
                    Posts().arrposts[index],
                    fit: BoxFit.cover,
                    cacheWidth: 150,
                    cacheHeight: 150,
                  ),
                );
              },
              childCount: Posts().arrposts.length,
              addRepaintBoundaries: true,
            ),
          ),
        ],
      ),

      /// ------------ BOTTOM NAV BAR ------------
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        elevation: 4,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined,color: AppColors.black),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.search, color: AppColors.black,),
          ),
          BottomNavigationBarItem(
            label: 'Reels',
              icon: Image.asset('assets/images/icons/reels.png')
          ),
          BottomNavigationBarItem(
            label: 'Like',
            icon: Icon(Icons.favorite_border, color: AppColors.black,)
            // icon: Image.asset('assets/images/bottom_nav_bar/fav.png'),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image.asset('assets/images/rect3.png'),
          ),
        ],
      ),
    );
  }
}
