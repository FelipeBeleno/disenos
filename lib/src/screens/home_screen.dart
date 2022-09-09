import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_botom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Background(),

          //Home body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // titulos
          PageTitle(),

          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
