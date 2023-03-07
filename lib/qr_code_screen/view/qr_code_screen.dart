import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/read_qrcode_data.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/qr_code_screen/view/widget/qr_tabbar_view_widget.dart';
import 'package:fpb/qr_code_screen/view/widget/tabbar_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'FlutterPlazaQR');
  bool scanning = false;
  QRViewController? controller;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Scaffold(
          appBar: CustomAppBar(
            showArrow: true,
            titleChildWidget: Text(''),
            actionChildWidget: [],
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: QrTabBarViewWidget(
                    tabController: tabController,
                    box: box,
                    qrKey: qrKey,
                    onCodeCreated: (QRViewController) {
                      scanning ? _doNothing : readQrcodeData;
                    },
                  ),
                ),
                Container(
                  width: box.maxWidth * 0.95,
                  child: Column(
                    children: [
                      TabbarWidget(
                        box: box,
                        tabController: tabController,
                        onTap: (_) {
                          setState(() {
                            tabController.index = _;
                          });
                        },
                      ).card(
                        color: theme.cardColor,
                        margin: EdgeInsets.symmetric(
                          vertical: box.maxHeight * 0.008,
                        ),
                        radius: box.maxWidth * 0.02,
                        height: box.maxHeight * 0.07,
                      ),
                      VerticalSpacingWidget(
                        box: box,
                        height: box.maxHeight * 0.02,
                      ),
                      SizedBox(
                        width: box.maxWidth,
                        child: GestureDetector(
                          onTap: () => context.router.navigateBack(),
                          child: Text(
                            "Cancel",
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      VerticalSpacingWidget(
                        box: box,
                        height: box.maxHeight * 0.1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _doNothing(QRViewController controller) {
    print('stopped');
  }
}
