import 'package:flutter/material.dart';
import 'package:myapp/home/home_view.dart';
import 'package:get/get.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class SettingsMenu extends StatefulWidget {
  SettingsMenu({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  State<StatefulWidget> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<SampleItem>(
        icon: const Icon(Icons.more_horiz),
        iconSize: 48,

        initialValue: selectedMenu,
        // Callback that sets the selected popup menu item.
        onSelected: (SampleItem item) {
          setState(
            () {
              selectedMenu = item;
              if (selectedMenu == SampleItem.itemOne) {
                // darkmode
                widget.controller.switchColorMode();
                widget.controller.getLightMode()
                    ? Get.changeTheme(
                        ThemeData(
                            scaffoldBackgroundColor:
                                const Color.fromRGBO(178, 206, 222, 1),
                            appBarTheme: const AppBarTheme(
                              backgroundColor: Color.fromRGBO(178, 206, 222, 1),
                              iconTheme: IconThemeData(color: Colors.black),
                            ),
                            elevatedButtonTheme: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                    255, 91, 31, 97), // 111, 104, 102, 1
                              ),
                            ),
                            primaryColor: Colors.black),
                      )
                    : Get.changeTheme(
                        ThemeData(
                          scaffoldBackgroundColor:
                              const Color.fromARGB(255, 67, 13, 117),
                          appBarTheme: const AppBarTheme(
                            backgroundColor: Color.fromARGB(255, 67, 13, 117),
                          ),
                          elevatedButtonTheme: ElevatedButtonThemeData(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 216, 99, 67),
                            ),
                          ),
                          primaryColor: Colors.white,
                        ),
                      );
              }
              if (selectedMenu == SampleItem.itemTwo) {
                // remove both videos inside the VideoPlayerController
                widget.controller.removeFirstVideo();
                widget.controller.removeSecondVideo();
              }
              if (selectedMenu == SampleItem.itemThree) {
                //safe
              }
            },
          );
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemOne,
            child: widget.controller.getLightMode()
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dark mode"),
                      Icon(Icons.brightness_2, color: Colors.black),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Light mode"),
                      Icon(Icons.sunny, color: Colors.black),
                    ],
                  ),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.itemTwo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Project"),
                Icon(Icons.recycling, color: Colors.black),
              ],
            ),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.itemThree,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Save"),
                Icon(Icons.save, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
