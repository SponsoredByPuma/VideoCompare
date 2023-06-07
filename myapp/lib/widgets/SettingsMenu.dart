import 'package:flutter/material.dart';
import 'package:myapp/home/home_view.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemFour }

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({
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
                widget.controller.removeFirstVideo();
                widget.controller.removeSecondVideo();
              }
              if (selectedMenu == SampleItem.itemThree) {
                //safe
              }
              if (selectedMenu == SampleItem.itemFour) {
                if (AppLocalizations.of(context)?.localeName == 'en') {
                  selectedMenu = SampleItem.itemFour;
                  Get.updateLocale(const Locale('de', 'DE'));
                } else {
                  Get.updateLocale(const Locale('en', 'US'));
                }
              }
            },
          );
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemOne,
            child: widget.controller.getLightMode()
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)?.darkModeText ?? ''),
                      const Icon(Icons.brightness_2, color: Colors.black),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)?.lightModeText ?? ''),
                      const Icon(Icons.sunny, color: Colors.black),
                    ],
                  ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemTwo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)?.newProjectButtonText ?? ''),
                const Icon(Icons.recycling, color: Colors.black),
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemThree,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)?.saveProjectButtonText ?? ''),
                const Icon(Icons.save, color: Colors.black),
              ],
            ),
          ),
          PopupMenuItem<SampleItem>(
            value: SampleItem.itemFour,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)?.languageSwitchButton ?? ''),
                const Icon(Icons.language, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
