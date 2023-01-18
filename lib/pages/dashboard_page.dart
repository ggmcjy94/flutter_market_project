

import 'package:flutter/material.dart';
import 'package:flutter_market_project/components/dashboard_detail.dart';
import 'package:flutter_market_project/components/dashboard_header.dart';


class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildDashboardAppBar(),
      body: SingleChildScrollView(
        child: Column(
            children: [
              DashBoardHeader(),
              DashBoardDetail(),
            ],
          ),
      ),
    );
  }

  AppBar _buildDashboardAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 0,


    );
  }
}
