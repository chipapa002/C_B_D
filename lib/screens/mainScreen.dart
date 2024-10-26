import 'package:flutter/material.dart';
import 'package:tradelink_app/const/const.dart';
import 'package:tradelink_app/widgets/catalogue_widget.dart';
import 'package:tradelink_app/widgets/dashboard_widget.dart';
import 'package:tradelink_app/widgets/e-marketingWidget.dart';
import 'package:tradelink_app/widgets/education_widget.dart';
import 'package:tradelink_app/widgets/funding_widget.dart';
import 'package:tradelink_app/widgets/inventory_widget.dart';
import 'package:tradelink_app/widgets/point_of_sale.dart';
import 'package:tradelink_app/widgets/pointofsale.dart';
import 'package:tradelink_app/widgets/report_widget.dart';
import 'package:tradelink_app/widgets/sales_widget.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 27, 32),
        toolbarHeight: 70,
       shape: Border(bottom: BorderSide(color: const Color.fromARGB(60, 0, 0, 0),
       width: 2.5)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset("assets/icons/logo.png",
                  height: 50,
                  width: 50,),
                ),
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tradelink", style: TextStyle(color: Colors.white)),
                    Text("More than a marketplace, a financial partner", style: TextStyle(color: Colors.white,
                    fontSize: 12))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text("About Us",
                style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                SizedBox(width: 16),
                Text("Support",
                style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(width: 16),
                Text("Help",
                style: TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
      
      
      body: SafeArea(
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Drawer(
              backgroundColor: background_color,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 0;
                        });
                      },
                      leading: Icon(Icons.dashboard_rounded),
                      title: Text("Dashboard"),),
                      Divider(),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 1;
                        });
                      },
                      leading: Icon(Icons.shopping_bag),
                      title: Text("Catalogue"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 2;
                        });
                      },
                      leading: Icon(Icons.ads_click),
                      title: Text("e-Marketing"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 3;
                        });
                      },
                      leading: Icon(Icons.monetization_on_sharp),
                      title: Text("Sales"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 4;
                        });
                      },
                      leading: Icon(Icons.inventory_2_sharp),
                      title: Text("Inventory"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 5;
                        });
                      },
                      leading: Icon(Icons.payments_rounded),
                      title: Text("Funding"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 6;
                        });
                      },
                      leading: Icon(Icons.stacked_bar_chart_rounded),
                      title: Text("Report"),),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 7;
                        });
                      },
                      leading: Icon(Icons.school_rounded),
                      title: Text("Education"),),
                      Divider(),
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 8;
                        });
                      },
                      leading: Icon(Icons.point_of_sale_outlined),
                      title: Text("e-Point of sale"),),
                      Divider(),
                     
                      //  Padding(
                      //    padding: const EdgeInsets.only(left: 10),
                      //    child: SwitchListTile(
                      //     activeColor: card_background,
                      //                  value: false,
                      //                  onChanged: (bool value) {},
                      //                ),
                      //  ),
                            
                    ListTile(
                      onTap: (){
                        setState(() {
                          page = 8;
                        });
                      },
                      leading: Icon(Icons.logout_outlined),
                      title: Text("Log Out"),),
                  ],
                ),
              ),
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child:Sidebar()),
          Expanded(
            flex: 11,
            child: 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:  page == 0?DashboardWidget(): page == 1? CatalogueWidget(): page == 2? MarketingWidget(): page ==5?FundingWidget(): page==3?SalesWidget(): page==6?ReportWidget(): page==7?EducationWidget(): page==4?InventoryWidget(): page ==8?POSInterface(): Container(child: Text("No Data"),)
            ),
            ),
        ],),

      ),
    );
  }
}