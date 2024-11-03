import 'dart:io';
import 'package:excel/excel.dart' as EXCEL_FLUTTER;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' as excel;
import '../../../../../../api/restaurant_client/lib/api.dart';

class ExcelEmployeeImporter {
  static Future<List<EmployeeDTO>> readExcelFile(File file) async {
    print(file.path);
    final List<EmployeeDTO> productList = [];
    final bytes = file.readAsBytesSync();
    final excel = EXCEL_FLUTTER.Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      var sheet = excel.tables[table]!;
      for (var rowIndex = 1; rowIndex < sheet.rows.length; rowIndex++) {
        var row = sheet.rows[rowIndex];

        print('Current row: ' + row[7]!.value.toString());
        print('Date row: ' + row[8]!.value.toString());
        print('Date row: ' + row[9]!.value.toString());

        String firstName = row[0]?.value?.toString() ?? '';
        String lastName = row[1]?.value?.toString() ?? '';
        EmployeeDTOGenderEnum? gender = EmployeeDTOGenderEnum.fromJson(row[2]?.value?.toString());
        EmployeeDTOJobDescriptionEnum? jobDescription = EmployeeDTOJobDescriptionEnum.fromJson(row[3]?.value?.toString());
        EmployeeDTORemunerationTypeEnum? remuneration = EmployeeDTORemunerationTypeEnum.fromJson(row[5]?.value?.toString());
        EmployeeDTOContractTypeEnum? contractTypeEnum = EmployeeDTOContractTypeEnum.fromJson(row[4]?.value?.toString());
        double retribution = double.tryParse(row[6]?.value?.toString() ?? '0') ?? 0;

        DateTime startDateInduction = DateTime.now();
        DateTime endDateInduction = DateTime.now();
        DateTime dob = DateTime(1990, 01, 01);

        try{
          startDateInduction = DateFormat("dd/MM/yyyy").parse(row[7]?.value?.toString() ?? '');
        }catch(e){
          String? date = row[7]?.value!.toString();

          Fluttertoast.showToast(
            webShowClose: true,
            timeInSecForIosWeb: 6,
            msg: 'Ho riscontrato un problema con questo dato: ' + date! + '. Non riesco a formattarlo/convertirlo. Configuro un valore di default in modo tale da non invalidare tutte le operazioni',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            fontSize: 12.0,
          );
        }

        try{
          endDateInduction = DateFormat("dd/MM/yyyy").parse(row[8]?.value?.toString() ?? '');

        }catch(e){
          String? date = row[8]?.value!.toString();

          Fluttertoast.showToast(
            webShowClose: true,
            timeInSecForIosWeb: 6,
            msg: 'Ho riscontrato un problema con questo dato: ' + date! + '. Non riesco a formattarlo/convertirlo. Configuro un valore di default in modo tale da non invalidare tutte le operazioni',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            fontSize: 12.0,
          );
        }

        try{
          dob = DateFormat("dd/MM/yyyy").parse(row[9]?.value?.toString() ?? '');
        }catch(e){
          String? date = row[8]?.value!.toString();

          Fluttertoast.showToast(
            webShowClose: true,
            timeInSecForIosWeb: 6,
            msg: 'Ho riscontrato un problema con questo dato: ' + date! + '. Non riesco a formattarlo/convertirlo. Configuro un valore di default in modo tale da non invalidare tutte le operazioni',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            fontSize: 12.0,
          );
        }

        String email = row[10]?.value?.toString() ?? '';

        productList.add(EmployeeDTO(
            firstName: firstName,
            lastName: lastName,
            fired: false,
            visible: true,
            remunerationType: remuneration,
            retribution: retribution,
            gender: gender,
            dob: dob,
            email: email,
            startDateInduction: startDateInduction,
            endDateInduction: endDateInduction,
            phone: '',
            contractType: contractTypeEnum,
            jobDescription: jobDescription

        ));


      }
    }

    print('List generated' + productList.toString());
    return productList;
  }

}


class ExcelFormatEmployeeHelpModal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Excel - Formato File',
            ),
            SizedBox(height: 10.0),
            Text(
              'Il file Excel deve essere formattato con la prima riga'
                  ' contenente i nomi delle colonne e le righe successive contenenti i valori corrispondenti',
              style: TextStyle(fontSize: 16.0),
            ),SizedBox(height: 20.0),
            Text(
              'Formato file:',
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Il file deve avere estensione ',
                  ),
                  TextSpan(
                    text: '.xslt',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.green, // Set border color here
                    width: 0.3, // Set border width here
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Set border radius here
                ),
                child: TextButton(onPressed: (){ExcelProductTemplateExporter.exportProductTemplate();}, child:
                Text('Scarica file esempio (.xslt)',)),
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              'Esempio tabella excel:',
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
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
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Marco', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Rossi', style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOGenderEnum.UOMO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOJobDescriptionEnum.BARMAN.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOContractTypeEnum.DETERMINATO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTORemunerationTypeEnum.MENSILE.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text('2123', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2024', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2064', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/1978', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('pinco@pallino.com', style: TextStyle(fontSize: 12),)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Francesco', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Grassi', style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOGenderEnum.UOMO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOJobDescriptionEnum.LAVAPIATTI.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOContractTypeEnum.DETERMINATO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTORemunerationTypeEnum.ORARIA.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text('23.23', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2024', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2064', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/1990', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('francesco@pallino.com', style: TextStyle(fontSize: 12),)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Giuseppe', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Bastoni', style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOGenderEnum.UOMO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOJobDescriptionEnum.ADDETTO_ALL_ACCOGLIENZA_CLIENTI.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOContractTypeEnum.DETERMINATO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTORemunerationTypeEnum.ORARIA.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text('23.23', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2024', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2064', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/1998', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('giuseppe@pallino.com', style: TextStyle(fontSize: 12),)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Federica', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Martini', style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOGenderEnum.DONNA.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOJobDescriptionEnum.AMMINISTRATORE.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTOContractTypeEnum.INDETERMINATO.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text(EmployeeDTORemunerationTypeEnum.GIORNALIERA.value, style: TextStyle(fontSize: 12),)),
                    DataCell(Text('23.23', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2024', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/2064', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('12/11/1999', style: TextStyle(fontSize: 12),)),
                    DataCell(Text('federica@pallino.com', style: TextStyle(fontSize: 12),)),
                  ]),
                ],
              ),
            ),

            Text(
                'Tipo contratto:'
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: EmployeeDTOContractTypeEnum.values.map((jobDescription) {
                  return Text(
                    ' - ' + jobDescription.toString(),
                    style: TextStyle(fontSize: 12),
                  );
                }).toList(),
              ),
            ),
            Text(
              'Mansione:',
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: EmployeeDTOJobDescriptionEnum.values.map((jobDescription) {
                  return Text(
                    ' - ' + jobDescription.toString(),
                    style: TextStyle(fontSize: 12),
                  );
                }).toList(),
              ),
            ),
            Text(
              'Sesso:',
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: EmployeeDTOGenderEnum.values.map((jobDescription) {
                  return Text(
                    ' - ' + jobDescription.toString(),
                    style: TextStyle(fontSize: 12),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.green, // Set border color here
                    width: 0.3, // Set border width here
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Set border radius here
                ),
                child: TextButton(onPressed: (){
                  ExcelProductTemplateExporter.exportProductTemplate();
                }, child:
                Text('Scarica file esempio (.xslt)',)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class ExcelProductTemplateExporter {
  static Future<void> exportProductTemplate() async {
    final excel.Workbook workbook = excel.Workbook();
    final excel.Worksheet sheet = workbook.worksheets[0];
    sheet.showGridlines = true;
    sheet.enableSheetCalculations();

    // Set column headers
    sheet.getRangeByName('A1').setText('Nome');
    sheet.getRangeByName('B1').setText('Cogome');
    sheet.getRangeByName('C1').setText('Sesso');
    sheet.getRangeByName('D1').setText('Mansione');
    sheet.getRangeByName('E1').setText('Tipo contratto');
    sheet.getRangeByName('F1').setText('Tipo pagamento');
    sheet.getRangeByName('G1').setText('Paga (€)');
    sheet.getRangeByName('H1').setText('Data inizio');
    sheet.getRangeByName('I1').setText('Data fine');
    sheet.getRangeByName('J1').setText('Data Nascita');
    sheet.getRangeByName('K1').setText('Email');

    // Create a list of employees (parametrized data)
    List<Map<String, String>> employees = [
      {
        'nome': 'Adrien',
        'cognome': 'Cecere',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CUOCO.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'adrien@gmail.com'
      },
      {
        'nome': 'Pasquale',
        'cognome': 'Perrigno',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CUOCO.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'adrien@gmail.com'
      },
      {
        'nome': 'Antonio',
        'cognome': 'De Simone',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CUOCO.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'antonio@gmail.com'
      },
      {
        'nome': 'Maria',
        'cognome': 'Semeraro',
        'sesso': EmployeeDTOGenderEnum.DONNA.value,
        'mansione': EmployeeDTOJobDescriptionEnum.LAVAPIATTI.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'maria@gmail.com'
      },
      {
        'nome': 'Palma',
        'cognome': 'Bufano',
        'sesso': EmployeeDTOGenderEnum.DONNA.value,
        'mansione': EmployeeDTOJobDescriptionEnum.LAVAPIATTI.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'palmabufano@gmail.com'
      },
      {
        'nome': 'Nico',
        'cognome': 'Sorge',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.DIRETTORE_SALA_DEHORS.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.INDETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'nico@gmail.com'
      },
      {
        'nome': 'Valeria',
        'cognome': 'Zaccaria',
        'sesso': EmployeeDTOGenderEnum.DONNA.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CAMERIERE.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'valeria@gmail.com'
      },
      {
        'nome': 'Arianna',
        'cognome': 'Gianfrate',
        'sesso': EmployeeDTOGenderEnum.DONNA.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CAMERIERE.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'arianna@gmail.com'
      },
      {
        'nome': 'Federica',
        'cognome': 'Sannicola',
        'sesso': EmployeeDTOGenderEnum.DONNA.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CAMERIERE.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'federica@gmail.com'
      },
      {
        'nome': 'Giovanni',
        'cognome': 'D\'Aversa',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CAMERIERE.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '12/11/2064',
        'data_nascita': '20/10/1990',
        'email': 'giovanni@gmail.com'
      },{
        'nome': 'Valerio',
        'cognome': 'Loconte',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.DIRETTORE_SALA_DEHORS.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '20/10/2024',
        'data_nascita': '20/10/1990',
        'email': 'valerio@gmail.com'
      },
      {
        'nome': 'Adriana',
        'cognome': 'Semeraro',
        'sesso': EmployeeDTOGenderEnum.UOMO.value,
        'mansione': EmployeeDTOJobDescriptionEnum.CAMERIERE.value,
        'tipo_contratto': EmployeeDTOContractTypeEnum.DETERMINATO.value,
        'tipo_pagamento': EmployeeDTORemunerationTypeEnum.MENSILE.value,
        'paga': '0.00',
        'data_inizio': '12/11/2023',
        'data_fine': '20/10/2024',
        'data_nascita': '20/10/1990',
        'email': 'adriana@gmail.com'
      },

    ];

    // Write employee data to the Excel sheet dynamically
    for (int i = 0; i < employees.length; i++) {
      final rowNumber = i + 2;  // Start from row 2 (after headers)
      final employee = employees[i];

      sheet.getRangeByName('A$rowNumber').setText(employee['nome']);
      sheet.getRangeByName('B$rowNumber').setText(employee['cognome']);
      sheet.getRangeByName('C$rowNumber').setText(employee['sesso']);
      sheet.getRangeByName('D$rowNumber').setText(employee['mansione']);
      sheet.getRangeByName('E$rowNumber').setText(employee['tipo_contratto']);
      sheet.getRangeByName('F$rowNumber').setText(employee['tipo_pagamento']);
      sheet.getRangeByName('G$rowNumber').setText(employee['paga']);
      sheet.getRangeByName('H$rowNumber').setText(employee['data_inizio']);
      sheet.getRangeByName('I$rowNumber').setText(employee['data_fine']);
      sheet.getRangeByName('J$rowNumber').setText(employee['data_nascita']);
      sheet.getRangeByName('K$rowNumber').setText(employee['email']);
    }

    // Save the Excel file
    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    // Get the path to save the file
    final String path = (await getApplicationSupportDirectory()).path;
    final String fileName = '$path/TemplateDipendentiExcelFile.xlsx';
    final File file = File(fileName);
    await file.writeAsBytes(bytes, flush: true);

    // Share the file
    await Share.shareFiles([fileName], text: 'Template excel file dipendenti');
  }
}
