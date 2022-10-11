import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/interface/screens/home/left/left_page.dart';
import 'package:pokedex/interface/screens/home/right/right_page.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 600;
          return isSmall
              ? PageView(
                  children: const [
                    LeftHome(),
                    RighHome(),
                  ],
                )
              : SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 500 * 2),
                      child: Center(
                        child: Row(
                          children: const [
                            Expanded(
                              child: LeftHome(),
                            ),
                            Expanded(
                              child: RighHome(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
