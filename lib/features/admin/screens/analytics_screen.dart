import 'package:ecommerce/features/account/services/account_services.dart';
import 'package:ecommerce/features/account/widgets/account_button.dart';
import 'package:ecommerce/features/admin/screens/detailview.dart';
import 'package:ecommerce/features/admin/services/admin_services.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final AdminServices adminServices = AdminServices();
  // int? totalSales;
  // List<Sales>? earnings;

  // @override
  // void initState() {
  //   super.initState();
  //   getEarnings();
  // }

  // getEarnings() async {
  //   var earningData = await adminServices.getEarnings(context);
  //   totalSales = earningData['totalEarnings'];
  //   earnings = earningData['sales'];
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // return earnings == null || totalSales == null
    //     ? const Loader()
    //     : Column(
    //         children: [
    //           Text(
    //             '\$$totalSales',
    //             style: const TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 250,
    //             child: BarChart(
    //                   seriesList: [
    //                   charts.Series(
    //                     id: 'Sales',
    //                     data: earnings!,
    //                     domainFn: (Sales sales, _) => sales.label,
    //                     measureFn: (Sales sales, _) => sales.earning,
    //                   ),
    //                 ]
    //                 ),
    //           ),
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              // 'assets/images/icon.png',
              'assets/images/learnings.png',
              width: 270,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailViewScreen(
                              newsUrl: 'https://www.youtube.com/')));
                },
                child: const Text('Start Learning')),
          ),
          const Spacer(),
          SizedBox(
            height: 45,
            child: AccountButton(
                text: 'Log Out',
                onTap: () => AccountServices().logOut(context)),
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
