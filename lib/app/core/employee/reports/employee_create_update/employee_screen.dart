import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:ventipro/app/core/employee/reports/employee_create_update/create_update_employee_screen.dart';
import 'package:ventipro/global/style.dart';

import '../excel/employee_importer.dart';
import '../report_employee_presence.dart';
import '../state_manager/employee_state_manager.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  static final String routeName = 'employee_screen';

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: _buildEmployeeList(employeeStateManager),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.white,),
                Text('Crea Dipendente', style: TextStyle(fontSize: 5),)
              ],
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateUpdateEmployeeScreen(employee: EmployeeDTO(employeeId: 0), isEmployeeUpdate: false, )));
            },
          ),
          appBar: AppBar(
            actions: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmployeeImporterFromExcel(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/svg/excel.svg',
                    height: 23,
                  ),
                ),
              ),
            ],
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: () {
              //TODO da sistemare
              //Navigator.of(context).pushNamed(ReportEmployeePresence.routeName);

            }, icon: Icon(Icons.arrow_back),),
            title: Text('Lista Dipendenti ' + employeeStateManager.branchName, style: TextStyle(fontSize: 12),),
          ),
        );
      },
    );
  }

  _buildEmployeeList(EmployeeStateManager employeeStateManager) {

    return RefreshIndicator(
      onRefresh: () async {
        employeeStateManager.retrieveCurrentEmployee();
      },
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 140),
        itemCount: employeeStateManager.currentEmployeeList!.length!,
        itemBuilder: (BuildContext context, int index) {

          EmployeeDTO? employeeDTO = employeeStateManager.currentEmployeeList![index];
          return ListTile(
            tileColor: index.isEven ? Colors.white : Colors.grey.shade100,
            leading: IconButton(onPressed: () async {
              try{

                await employeeStateManager.turnIsVisibleValueToEmployee(employeeDTO);

                Fluttertoast.showToast(
                  webShowClose: true,
                  timeInSecForIosWeb: 6,
                  msg: 'Visibilità modificata per ' + employeeDTO.firstName! + ' ' + employeeDTO.lastName!,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 12.0,
                );

              }catch(e){

                Fluttertoast.showToast(
                  webShowClose: true,
                  timeInSecForIosWeb: 6,
                  msg: e.toString(),
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 12.0,
                );
              }
            },
                icon: Icon(employeeDTO.visible! ? CupertinoIcons.eye_slash : CupertinoIcons.eye), color: employeeDTO.visible! ? Colors.grey : Colors.green),
            trailing: IconButton(onPressed: () {

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateUpdateEmployeeScreen(employee: employeeDTO, isEmployeeUpdate: true, )));


            }, icon: Icon(CupertinoIcons.pen),),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('${employeeDTO.lastName!} ${employeeDTO.firstName!}', style: const TextStyle(fontSize: 13),),
                    Text('(id: ${employeeDTO.employeeId!})', style: const TextStyle(fontSize: 5),),
                  ],
                ),
                Text(employeeDTO.jobDescription!.value.replaceAll('_', ' '), style: const TextStyle(fontSize: 8),),
                Text('Assunto dal: ${italianDateFormat.format(employeeDTO.startDateInduction!)}',
                    style: TextStyle(fontSize: 12)),
                if(employeeDTO.endDateInduction != null) Text('Data fine rapporto: ${italianDateFormat.format(employeeDTO.endDateInduction!)}',
                    style: TextStyle(fontSize: 12, color: Colors.pink)),
              ],
            ),

          );
        },
      ),
    );
  }
}
