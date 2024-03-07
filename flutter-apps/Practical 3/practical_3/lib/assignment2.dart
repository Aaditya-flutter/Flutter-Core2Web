import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {

  bool _isPost1liked = false;
  bool _isPost2liked = false;
  bool _isPost3liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),

      // body: ListView(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child: Image.network(
      //             "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
      //             width: double.infinity,
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.send,
      //                 )),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child: Image.network(
      //             "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
      //             width: double.infinity,
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.send,
      //                 )),
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           color: Colors.amber,
      //           child: Image.network(
      //             "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
      //             width: double.infinity,
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.favorite_outline_outlined,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.comment_outlined,
      //               ),
      //             ),
      //             IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.send,
      //                 )),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ), // List view is by default scrollable

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost1liked = ! _isPost1liked;
                        });
                      },
                      icon: _isPost1liked 
                      ? const Icon(
                        color: Colors.red,
                        Icons.favorite_outlined,
                      )
                      : const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost2liked = ! _isPost2liked;
                        });
                      },
                      icon: _isPost2liked 
                      ? const Icon(
                        color: Colors.red,
                        Icons.favorite_outlined,
                      )
                      : const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost3liked = ! _isPost3liked;
                        });
                      },
                      icon: _isPost3liked 
                      ? const Icon(
                        color: Colors.red,
                        Icons.favorite_outlined,
                      )
                      : const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
