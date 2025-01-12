import 'package:flutter/material.dart';
import 'package:vison/widgets/BorderedContainer.dart';
import 'package:vison/widgets/PlayButton.dart';
import 'package:video_player/video_player.dart';

class HorizontalContainer extends StatelessWidget {
  final Widget leftVideoController;
  final Widget rightVideoController;
  final VideoPlayerController? controllerLeft;
  final VideoPlayerController? controllerRight;
  final PlayButton playButton;
  final bool clickedUp;
  final bool clickedDown;
  final Function() firstContainerTapped;
  final Function() secondContainerTapped;

  const HorizontalContainer({
    Key? key,
    required this.leftVideoController,
    required this.rightVideoController,
    required this.controllerLeft,
    required this.controllerRight,
    required this.firstContainerTapped,
    required this.secondContainerTapped,
    required this.playButton,
    required this.clickedUp,
    required this.clickedDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Align(
              alignment: const Alignment(1, -1),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: BorderedContainer(
                  vertical: false,
                  clicked: clickedUp,
                  child: leftVideoController,
                ),
                onTap: () {
                  firstContainerTapped();
                },
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Align(
              alignment: const Alignment(-1, 1),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: BorderedContainer(
                  vertical: false,
                  clicked: clickedDown,
                  child: rightVideoController,
                ),
                onTap: () {
                  secondContainerTapped();
                },
              ),
            ),
          ],
        ),
        controllerLeft != null && controllerRight != null
            ? Align(alignment: const Alignment(-0.04, 1), child: playButton)
            : const Center()
      ],
    );
  }
}
