import 'package:flutter/material.dart';

class DashBoardDetail extends StatelessWidget {
  DashBoardDetail({Key? key}) : super(key: key);

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDashboardButton("Daily quests"),
        _buildDashboardReviewCard(),
        _buildDashboardButton("Popular items"),

      ],
    );
  }

  Widget _buildDashboardButton(String title) {
    return Container(
      height: 68,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.redAccent),
          ),
          Spacer(),
          Icon(
            Icons.next_plan,
            size: 40,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardReviewCard() {
    return Container(
      color: Colors.black12,
      height: 152,
      width: double.infinity,
      child: SizedBox(
            width: double.infinity,
            child: PageView.builder(
                itemCount: 10,
                controller: PageController(viewportFraction: 0.8),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 1,
                    child: reviewCard(
                        "Review ${i + 1} snacks of\n     guilty pleasure"),
                  );
                }),
          ),
    );
  }

  Card reviewCard(String review) {
    return Card(
      margin: EdgeInsets.all(9),
      color: Color(0xFFFFF9C4),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          review,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
