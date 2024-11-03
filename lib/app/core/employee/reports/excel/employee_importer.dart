import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/employee/reports/excel/service/import_excel_employee_service.dart';
import 'package:ventipro/app/core/employee/reports/state_manager/employee_state_manager.dart';

import '../../../../../api/restaurant_client/lib/api.dart';

class EmployeeImporterFromExcel extends StatefulWidget {
  const EmployeeImporterFromExcel({super.key});

  @override
  State<EmployeeImporterFromExcel> createState() => _EmployeeImporterFromExcelState();
}

class _EmployeeImporterFromExcelState extends State<EmployeeImporterFromExcel> {
  List<EmployeeDTO> employeeDTOList = []; // Global variable to hold products
  List<bool> selected = []; // List to track selected rows
  bool selectAll = true; // Track the state of the general checkbox

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      try{
        employeeDTOList = await ExcelEmployeeImporter.readExcelFile(file); // Store products in the global variable

        print(employeeDTOList);
      }catch(e){
        print('ERRORE: ' + e.toString());
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

      employeeDTOList.sort((a, b) => a.firstName!.compareTo(b.firstName!)); // Sort by name in ascending order
      selected = List<bool>.filled(employeeDTOList.length, true); // Initialize selected list with all true
      setState(() {}); // Trigger a rebuild to show the table
    } else {
      // User canceled the picker
      print('No file selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return Scaffold(
          floatingActionButton: employeeDTOList.isEmpty ? null
              : FloatingActionButton(backgroundColor: Colors.green,
              onPressed: () async {
                List<EmployeeDTO> selectedEmployee = [];
                for (int i = 0; i < employeeDTOList.length; i++) {
                  if (selected[i]) {
                    selectedEmployee.add(employeeDTOList[i]);
                  }
                }

                String branchCode = Provider.of<EmployeeStateManager>(context, listen: false).branchCode;
                String branchName = Provider.of<EmployeeStateManager>(context, listen: false).branchName;
                selectedEmployee.forEach((employee) async {

                  employee.branchCode = branchCode;
                  await Provider.of<EmployeeStateManager>(context, listen: false).restaurantControllerApi
                      .createEmployee(branchCode, employee);
                });

                Fluttertoast.showToast(
                  webShowClose: true,
                  timeInSecForIosWeb: 6,
                  msg: 'Lista dipendenti importata correttamente in ' + branchName,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 12.0,
                );

                await Provider.of<EmployeeStateManager>(context, listen: false).retrieveCurrentEmployee();
                Navigator.of(context).pop();

              },
              child: Icon(Icons.save_alt, color: Colors.white,)),
          appBar: AppBar(
            title: Column(
              children: [
                Text('Importa dipendenti da excel'),
              ],
            ),
            actions: [
              IconButton(onPressed: (){
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return ExcelFormatEmployeeHelpModal();
                  },
                );
              }, icon: Icon(Icons.info_outline)),
              IconButton(onPressed: _pickFile, icon: Icon(Icons.file_download, color: Colors.green,)),
            ],
          ),
          body: employeeDTOList.isEmpty
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/lottie/excel.json'),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set border color here
                      width: 0.3, // Set border width here
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Set border radius here
                  ),
                  child: TextButton(onPressed: _pickFile, child:
                  Text('Importa file Dipendenti (.xslt)')),
                )
              ],
            ),
          )
              : SingleChildScrollView(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 20, // Adjust column spacing to ensure column width
                columns: [
                  DataColumn(label: Text('Nome')),
                  DataColumn(label: Text('Cogome')),
                  DataColumn(label: Text('Sesso')),
                  DataColumn(label: Text('Mansione')),
                  DataColumn(label: Text('Tipo contratto')),
                  DataColumn(label: Text('Tipo pagamento')),
                  DataColumn(label: Text('Paga (€)')),
                  DataColumn(label: Text('Data inizio')),
                  DataColumn(label: Text('Data fine')),
                  DataColumn(label: Text('Data Nascita')),
                  DataColumn(label: Text('Email')),
                ],
                rows: List<DataRow>.generate(
                  employeeDTOList.length,
                      (index) {
                    final employee = employeeDTOList[index];
                    return DataRow(
                      selected: selected[index],
                      onSelectChanged: (bool? value) {
                        setState(() {
                          selected[index] = value ?? false;
                          if (!selected.contains(false)) {
                            selectAll = true;
                          } else if (!selected.contains(true)) {
                            selectAll = false;
                          }
                        });
                      },
                      cells: [

                        DataCell(Text(employee.firstName!)),
                        DataCell(Text(employee.lastName!)),
                        DataCell(Text(employee.gender!.value)),
                        DataCell(Text(employee.jobDescription!.value)),
                        DataCell(Text(employee.remunerationType!.value)),
                        DataCell(Text(employee.contractType!.value)),
                        DataCell(Text(employee.retribution!.toStringAsFixed(2))),
                        DataCell(Text(DateFormat('dd/MM/yyyy').format(employee.startDateInduction!))),
                        DataCell(Text(DateFormat('dd/MM/yyyy').format(employee.endDateInduction!))),
                        DataCell(Text(DateFormat('dd/MM/yyyy').format(employee.dob!))),
                        DataCell(Text(employee.email!)),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
