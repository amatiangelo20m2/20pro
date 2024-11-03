import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' as excel;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:ventipro/global/style.dart';

class ExcelReportExporter {

  static Future<void> exportToExcel(List<EmployeeReportSummaryDTO>? reports, String branchName, DateTimeRange timeRange) async {
    // Initialize workbook and get first worksheet
    final excel.Workbook workbook = excel.Workbook();
    final excel.Worksheet sheet = workbook.worksheets[0];
    sheet.showGridlines = true;

    // Add headers to the Excel sheet
    List<String> headers = [
      'Nome',
      'Cognome',
      'Mansione',
      'Ore Lavorate',
      'Servizi Pranzo',
      'Servizi Cena',
      'Malattia',
      'Ferie',
      'Libero',
      'Note',
    ];

    // Adding header row
    for (int i = 0; i < headers.length; i++) {
      sheet.getRangeByIndex(1, i + 1).setText(headers[i]);
    }

    // Adjust column widths
    sheet.getRangeByIndex(1, 1).columnWidth = 20; // For 'Nome'
    sheet.getRangeByIndex(1, 2).columnWidth = 20; // For 'Cognome'
    sheet.getRangeByIndex(1, 3).columnWidth = 30; // For 'Mansione'
    sheet.getRangeByIndex(1, 4).columnWidth = 15; // For 'Ore Lavorate'
    sheet.getRangeByIndex(1, 5).columnWidth = 20; // For 'Servizi Pranzo'
    sheet.getRangeByIndex(1, 6).columnWidth = 20; // For 'Servizi Cena'
    sheet.getRangeByIndex(1, 7).columnWidth = 20; // For 'Malattia'
    sheet.getRangeByIndex(1, 8).columnWidth = 20; // For 'Ferie'
    sheet.getRangeByIndex(1, 9).columnWidth = 20; // For 'Ferie'
    // sheet.getRangeByIndex(1, 9).columnWidth = 20; // For 'Note'

    // Populate the sheet with data
    for (int i = 0; i < reports!.length; i++) {
      final report = reports[i];

      sheet.getRangeByIndex(i + 2, 1).setText(report.firstName ?? '');
      sheet.getRangeByIndex(i + 2, 2).setText(report.lastName ?? '');
      sheet.getRangeByIndex(i + 2, 3).setText(report.jobDescription!.value! ?? '');
      sheet.getRangeByIndex(i + 2, 4).setNumber(report.totalWorkedHours?.toDouble() ?? 0);
      sheet.getRangeByIndex(i + 2, 5).setNumber(report.lunchCount?.toDouble() ?? 0);
      sheet.getRangeByIndex(i + 2, 6).setNumber(report.dinnerCount?.toDouble() ?? 0);
      sheet.getRangeByIndex(i + 2, 7).setNumber(report.totalIllnessDays?.toDouble() ?? 0);
      sheet.getRangeByIndex(i + 2, 8).setNumber(report.totalHolidays?.toDouble() ?? 0);
      sheet.getRangeByIndex(i + 2, 9).setNumber(report.totalRestDays?.toDouble() ?? 0);
      // sheet.getRangeByIndex(i + 2, 9).setText(report.note ?? '');
    }

    // Save the Excel file
    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    // Get the path to save the file
    final String path = (await getApplicationSupportDirectory()).path;
    final String fileNamePartial = 'Report_${branchName.replaceAll(' ', '_')}_${italianDateFormat.format(timeRange.start)}_${italianDateFormat.format(timeRange.end)}';
    final String fileName = '$path/$fileNamePartial.xlsx';

    // Write the file to the system
    final File file = File(fileName);
    await file.writeAsBytes(bytes, flush: true);

    // Share the file
    await Share.shareFiles([fileName], text: '$branchName ${italianDateFormat.format(timeRange.start)} - ${italianDateFormat.format(timeRange.end)}');
  }
}
