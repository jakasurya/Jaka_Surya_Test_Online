import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mockva_rest/app/modules/history/history_controller.dart';
import '../../app/core/config/formatted.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'History',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: (Get.width + Get.height) * 0.018),
            ),
          ),
          body: ListView.builder(
              itemCount: controller.historyList.length,
              itemBuilder: ((context, index) {
                var data = controller.historyList[index];
                return ItemListHistory(
                    date: data.transactionTimestamp.toString(),
                    amount: data.amount,
                    ref: data.clientRef,
                    destination: data.accountDstId);
              })),
        );
      },
    );
  }
}

class ItemListHistory extends StatelessWidget {
  const ItemListHistory({
    Key? key,
    required this.date,
    required this.amount,
    required this.ref,
    required this.destination,
  }) : super(key: key);

  final String date;
  final double amount;
  final String ref;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.06, vertical: Get.height * 0.03),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustomHistory(
                value: 'Date : ${setDate.format(DateTime.parse(date))}'),
            TextCustomHistory(value: 'Amount : ${setCurrency.format(amount)}'),
            TextCustomHistory(value: 'Ref : $ref'),
            TextCustomHistory(value: 'Destination : $destination'),
            SizedBox(height: Get.height * 0.01),
            Divider(thickness: Get.height * 0.002, color: Colors.lightBlue)
          ],
        ),
      ),
    );
  }
}

class TextCustomHistory extends StatelessWidget {
  const TextCustomHistory({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        fontSize: (Get.height + Get.width) * 0.016,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
