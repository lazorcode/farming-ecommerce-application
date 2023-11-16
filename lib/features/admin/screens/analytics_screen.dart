import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/features/account/services/account_services.dart';
import 'package:ecommerce/features/account/widgets/account_button.dart';
import 'package:ecommerce/features/account/widgets/top_buttons.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black12,
                width: 2, // You can adjust the width of the border as needed
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/learnings.png',
                width: 250,
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailViewScreen(
                                newsUrl:
                                    'https://www.youtube.com/results?search_query=farming+technology+in+india')));
                  },
                  child: const Text('Visual Learnings')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailViewScreen(
                                newsUrl:
                                    'https://www.jiva.ag/blog/what-are-the-most-common-problems-and-challenges-that-farmers-face')));
                  },
                  child: const Text('Text Learnings')),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailViewScreen(
                    newsUrl: 'https://kisansuvidha.gov.in/',
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Colors.black, // Black border
                width: 2,
              ),
            ),
            child: Text(
              'Kisan Support',
              style: TextStyle(
                color: GlobalVariables.addressboxcolor, // Dark blue text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          TopButtons(),
          // SizedBox(
          //   height: 45,
          //   child: AccountButton(
          //       text: 'Log Out',
          //       onTap: () => AccountServices().logOut(context)),
          // ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
