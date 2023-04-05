import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';
import 'package:fpb/home/view/widgets/bottom_nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.box});
  final BoxConstraints box;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final readBloc = context.read<HomeViewBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomNavbarItem(
          selectedIconData: FpbIcons.home_selected,
          unSelectedIconData: FpbIcons.home,
          isSelected: pageIndex == 0,
          box: widget.box,
          key: Key("BNB-home-page-button"),
          onPressed: () {
            setState(() {
              pageIndex = 0;
            });
            readBloc.add(HomeViewEvent.home());
          },
        ),
        BottomNavbarItem(
          selectedIconData: FpbIcons.wallet_selected,
          unSelectedIconData: FpbIcons.wallet,
          isSelected: pageIndex == 1,
          box: widget.box,
          key: Key("BNB-savings-page-button"),
          onPressed: () {
            setState(() {
              pageIndex = 1;
            });
            readBloc.add(HomeViewEvent.savings());
          },
        ),
        BottomNavbarItem(
          selectedIconData: FpbIcons.dollar_icon,
          unSelectedIconData: FpbIcons.dollar_icon,
          isSelected: pageIndex == 2,
          box: widget.box,
          key: Key("BNB-quickCash-page-button"),
          onPressed: () {
            setState(() {
              pageIndex = 2;
            });
            readBloc.add(HomeViewEvent.quickCash());
          },
        ),
        BottomNavbarItem(
          selectedIconData: FpbIcons.graph_selected,
          unSelectedIconData: FpbIcons.graph,
          isSelected: pageIndex == 3,
          box: widget.box,
          key: Key("BNB-budget-page-button"),
          onPressed: () {
            setState(() {
              pageIndex = 3;
            });
            readBloc.add(HomeViewEvent.budget());
          },
        ),
        BottomNavbarItem(
          selectedIconData: Icons.person_outline_sharp,
          unSelectedIconData: Icons.person_outline_sharp,
          isSelected: pageIndex == 4,
          box: widget.box,
          key: Key("BNB-userSearch-page-button"),
          onPressed: () {
            setState(() {
              pageIndex = 4;
            });
            readBloc.add(HomeViewEvent.profile());
          },
        ),
      ],
    );
  }
}
