import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({
    super.key,
    required this.isSelected,
    required this.box,
    required this.selectedIconData,
    required this.unSelectedIconData,
    required this.onPressed,
  });

  final bool isSelected;
  final BoxConstraints box;
  final IconData selectedIconData;
  final IconData unSelectedIconData;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return IconButton(
      enableFeedback: false,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: AnimatedSwitcher(
        duration: Duration(milliseconds: 150),
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        child: Column(
          key: isSelected
              ? Key("BottomNavbarItem-Selected")
              : Key("BottomNavbarItem-UnSelected"),
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: box.maxHeight * 0.0332,
              height: box.maxHeight * 0.0332,
              decoration: isSelected
                  ? BoxDecoration(
                      color: colors.secondary.withOpacity(0.5),
                      border: Border.all(
                        color: colors.secondary,
                      ),
                    )
                  : BoxDecoration(
                      border: Border.all(
                        color: colors.secondary,
                      ),
                    ),
              child: isSelected
                  ? Icon(
                      selectedIconData,
                      color: colors.secondary,
                    )
                  : Icon(
                      selectedIconData,
                      // color: colors.secondary,
                    ),
            ),
            // SizedBox(
            //   width: box.maxHeight * 0.0332,
            //   height: box.maxHeight * 0.0332,
            //   child: isSelected
            //       ? Icon(
            //           selectedIconData,
            //           color: colors.secondary,
            //         )
            //       : Icon(
            //           selectedIconData,
            //           // color: colors.secondary,
            //         ),
            // ),
            SizedBox(
              height: box.maxHeight * 0.008,
            ),
            Container(
              height: box.maxHeight * 0.005,
              width: box.maxHeight * 0.005,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: isSelected ? colors.secondary : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
