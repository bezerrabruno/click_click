import 'package:click_click/app/core/theme/app_theme.dart';
import 'package:click_click/app/domain/entities/user_entity.dart';
import 'package:click_click/app/module/home/controllers/home_controller.dart';
import 'package:click_click/app/module/home/stores/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final store = Modular.get<HomeStore>();
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.theme().colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Olá ${store.user.name}'),
      ),
      bottomNavigationBar: Container(
        height: kToolbarHeight,
        width: double.maxFinite,
        color: colors.primary,
      ),
      body: Material(
        child: InkWell(
          onTap: controller.click,
          child: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Level: ${store.user.levelClick}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Observer(
                        builder: (context) {
                          return Text(
                            'Your money: ${store.money}',
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                          );
                        },
                      ),
                      Observer(
                        builder: (context) {
                          return Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                'Money: ${store.money}',
                                style: TextStyle(
                                  fontSize: 64,
                                  color: colors.secondary,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
