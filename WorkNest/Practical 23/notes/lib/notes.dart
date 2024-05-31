import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<String> noteList = [
    "Hello",
  ];

  bool newNote = false;
  bool trash = false;

  @override
  Widget build(BuildContext context) {
    if (!newNote) {
      if (!trash) {
        if (noteList.isEmpty) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Notes",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: [
                PopupMenuButton(
                  color: Colors.amber[50],
                  iconSize: 30,
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {
                          trash = true;
                          setState(() {});
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.delete_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Trash',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.help_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Help',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
              backgroundColor: Colors.amber[100],
            ),
            body: const Center(
              child: Text(
                "No notes yet",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                newNote = true;
                setState(() {});
              },
              tooltip: "Add new note",
              backgroundColor: Colors.amber[100],
              child: const Icon(
                Icons.add,
                size: 40,
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Notes",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: [
                PopupMenuButton(
                  color: Colors.amber[50],
                  iconSize: 30,
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {
                          trash = true;
                          setState(() {});
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.delete_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Trash',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.help_outline_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Help',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
              backgroundColor: Colors.amber[100],
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: noteList.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      extentRatio: 0.2,
                      closeThreshold: 0.5,
                      motion: const DrawerMotion(),
                      children: [
                        SlidableAction(
                          flex: 3,
                          onPressed: (context) {},
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          icon: Icons.delete_outline_outlined,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(64, 255, 236, 179),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "A written note is here",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                newNote = true;
                setState(() {});
              },
              tooltip: "Add new note",
              backgroundColor: Colors.amber[100],
              child: const Icon(
                Icons.add,
                size: 40,
              ),
            ),
          );
        }
      } else {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                trash = false;
                setState(() {});
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
            ),
            title: const Text(
              "Trash",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              PopupMenuButton(
                color: Colors.amber[50],
                iconSize: 30,
                position: PopupMenuPosition.under,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.delete_outline_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Empty Trash',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.restore_page_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'restore all',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            backgroundColor: Colors.amber[100],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                return Slidable(
                  closeOnScroll: true,
                  startActionPane: ActionPane(
                    extentRatio: 0.2,
                    closeThreshold: 0.5,
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        flex: 3,
                        onPressed: (context) {},
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        icon: Icons.restore,
                      ),
                    ],
                  ),
                  endActionPane: ActionPane(
                    extentRatio: 0.2,
                    closeThreshold: 0.5,
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        flex: 3,
                        onPressed: (context) {},
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        icon: Icons.delete_outline_outlined,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(64, 255, 236, 179),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "A written note is here",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(64, 255, 236, 179),
          leading: IconButton(
            onPressed: () {
              newNote = false;
              setState(() {});
            },
            icon: const Icon(Icons.arrow_back_outlined),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.clear_all,
                size: 30,
              ),
              tooltip: "clear all",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.clear,
                size: 30,
              ),
              tooltip: "discard & exit",
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Container(
          color: const Color.fromARGB(64, 255, 236, 179),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                TextFormField(
                  maxLines: 11,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                    hintText: "Note",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                ),
                const Spacer(),
                const Text(
                  "Edited: time/date",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
