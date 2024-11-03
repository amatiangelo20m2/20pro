import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/employee/reports/state_manager/employee_state_manager.dart';
import 'package:ventipro/global/style.dart';
import '../../../../api/restaurant_client/lib/api.dart';
import '../../../../state_manager/restaurant_state_manager.dart';
import 'employee_create_update/employee_screen.dart';
import 'excel/excel_report_exporter.dart';

class ReportEmployeePresence extends StatefulWidget {
  const ReportEmployeePresence({super.key});

  @override
  State<ReportEmployeePresence> createState() => _ReportEmployeePresenceState();
}

class _ReportEmployeePresenceState extends State<ReportEmployeePresence> {

  DateTime _selectedDate = DateTime.now();

  DateTimeRange? selectedDateRange;
  @override
  void initState() {

    final now = DateTime.now();
    selectedDateRange = DateTimeRange(
      start: DateTime(now.year, now.month, 1),
      end: DateTime(now.year, now.month + 1, 0),
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _pickDateRange(BuildContext context, EmployeeStateManager employeeStateManager) async {
    final picked = await showDateRangePicker(
      confirmText: 'Scarica Report',
      saveText: 'Scarica Report',
      context: context,
      initialDateRange: selectedDateRange,
      firstDate: DateTime(2024),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.green,
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDateRange) {
      setState(() {
        selectedDateRange = picked;
      });
    }

    print('Download report for ' + selectedDateRange!.start.toString() + ' - ' + selectedDateRange!.end.toString());




    List<EmployeeReportSummaryDTO>? listReports = await employeeStateManager
        .restaurantControllerApi
        .retrieveReports(
      employeeStateManager.branchCode!,
      DateTime.utc(selectedDateRange!.start.subtract(Duration(days: 1))!.year,
          selectedDateRange!.start.subtract(Duration(days: 1))!.month,
          selectedDateRange!.start.subtract(Duration(days: 1)).day),
      DateTime.utc(selectedDateRange!.end.add(Duration(days: 1)).year,
          selectedDateRange!.end.add(Duration(days: 1))!.month,
          selectedDateRange!.end.add(Duration(days: 1))!.day),
    );

    print('Report list: ' + listReports.toString());

    await ExcelReportExporter.exportToExcel(listReports, employeeStateManager.branchName!, selectedDateRange!);

  }

  List<EmployeePresenceReportDTO>? employeeReportList = List.from([], growable: true);

  void _onDaySelected(DateTime day) {

    setState(() {
      _selectedDate = day;
    });

    Fluttertoast.showToast(
      webShowClose: true,
      timeInSecForIosWeb: 6,
      msg: 'Presenze data $_selectedDate',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: globalBlue,
      textColor: Colors.white,
      fontSize: 12.0,
    );
  }




  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(

      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return Scaffold(

          appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(icon: Icon(CupertinoIcons.nosign, color: Colors.green,), onPressed: () {
              _pickDateRange(context, employeeStateManager);
            },),
            actions: [
              IconButton(onPressed: () {
                Navigator.of(context).pushNamed(EmployeeScreen.routeName);
              }, icon: Icon(CupertinoIcons.person_2, color: Colors.blueGrey,),),
              IconButton(onPressed: (){
                _selectDate(context, _selectedDate);
                // _pickDateRange(context);
              }, icon: Icon(CupertinoIcons.calendar, color:  Colors.blueGrey)),
            ],
          ),
          backgroundColor: Colors.white,
          body: RefreshIndicator(
            edgeOffset: 150,
            backgroundColor: Colors.white,
            color:  Colors.blueGrey,
            onRefresh: () async {
              refresh();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        _selectedDate = _selectedDate.subtract(Duration(days: 1));
                      });

                    }, icon: Icon(Icons.arrow_back, size: 25)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _selectedDate.toIso8601String(),
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 1/43),
                      ),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        _selectedDate = _selectedDate.add(Duration(days: 1));
                      });
                    }, icon: Icon(Icons.arrow_forward, size: 25,)),
                  ],
                ),

                FutureBuilder<List<EmployeePresenceReportDTO>?>(

                  future: employeeStateManager.restaurantControllerApi.getReportsByBranchCodeAndDate(employeeStateManager.branchCode, _selectedDate),

                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return const Padding(
                        padding: EdgeInsets.all(58.0),
                        child: Center(
                            child: SpinKitSpinningLines(color:  Colors.blueGrey,

                            )
                        ),
                      );
                    }else if(snapshot.connectionState == ConnectionState.done){

                      employeeReportList = snapshot.data;

                      List<EmployeeDTO> currentEmployeeList = [];

                      employeeStateManager.currentEmployeeList!.forEach((employee) {
                        if(employee.visible!){

                          if(employee.endDateInduction == null){
                            if(employee.startDateInduction!.isBefore(_selectedDate)){
                              currentEmployeeList.add(employee);
                            }
                          }else{
                            if(employee.startDateInduction!.isBefore(_selectedDate)
                                && employee.endDateInduction!.isAfter(_selectedDate.subtract(Duration(days: 1)))){
                              currentEmployeeList.add(employee);
                            }
                          }

                        }

                      });


                      return Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 150),
                          itemCount: currentEmployeeList.length,
                          itemBuilder: (BuildContext context, int index) {

                            EmployeeDTO currentEmployeeDTO = currentEmployeeList[index];

                            EmployeePresenceReportDTO? employeePresence = EmployeePresenceReportDTO(reportId: 0,
                                employee: currentEmployeeDTO,
                                presentAtLunch: false,
                                presentAtDinner: false,
                                holiday: false,
                                illness: false,
                                rest: false,
                                workedHours: 0,
                                date: DateTime.utc(_selectedDate.year, _selectedDate.month, _selectedDate.day));

                            if(employeeReportList!.where((element)
                            => element.employee!.employeeId == currentEmployeeDTO.employeeId).isNotEmpty){
                              employeePresence = employeeReportList!.where((element) => element.employee!.employeeId == currentEmployeeDTO.employeeId).first;
                            }

                            return EmployeePresenceWidget(
                              currentEmployeeDTO: currentEmployeeDTO,
                              employeePresence: employeePresence,
                              refresh: refresh,
                              choosedDate: _selectedDate,
                            );
                          },
                        ),
                      );
                    }else{
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },

    );
  }

  Future<DateTime> _selectDate(BuildContext context,
      DateTime currentDate) async {
    final DateTime? picked = await showDatePicker(
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(// Header background color
            hintColor:  Colors.blueGrey, // Header text color
            colorScheme: ColorScheme.light(
              primary:  Colors.blueGrey, // selection color
              onSurface: Colors.black, // body text color
            ),
            dialogBackgroundColor: Colors.white, // Background color
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: currentDate,
      firstDate: DateTime.now().subtract(Duration(days: 200)),
      lastDate: DateTime(2100),
      locale: const Locale('it', 'IT'),
    );
    if (picked != null) {
      final DateTime selectedDate = DateTime(picked.year, picked.month, picked.day, 10);
      setState(() {
        _selectedDate = selectedDate;
        _onDaySelected(_selectedDate);
      });
      return selectedDate;
    } else {
      return DateTime.now();
    }
  }

  void refresh() {
    setState(() {
      _selectedDate = _selectedDate;
    });
  }
}

class EmployeePresenceWidget extends StatefulWidget {
  const EmployeePresenceWidget({
    super.key,
    required this.currentEmployeeDTO,
    required this.employeePresence,
    required this.refresh,
    required this.choosedDate,
  });

  final EmployeeDTO currentEmployeeDTO;
  final Function refresh;
  final EmployeePresenceReportDTO? employeePresence;
  final DateTime choosedDate;

  @override
  State<EmployeePresenceWidget> createState() => _EmployeePresenceWidgetState();
}

class _EmployeePresenceWidgetState extends State<EmployeePresenceWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(widget.currentEmployeeDTO.lastName! + ' ' + widget.currentEmployeeDTO.firstName!, style: TextStyle(fontSize: 15),),
                          Text('(' + widget.currentEmployeeDTO.employeeId!.toString() + ')', style: TextStyle(fontSize: 6),),
                        ],
                      ),
                      Text(widget.currentEmployeeDTO.jobDescription!.value!.replaceAll('_', ' '), style: TextStyle(fontSize: 9),),
                      Text('Assunto dal: ${italianDateFormat.format(widget.currentEmployeeDTO.startDateInduction!)}',
                        style: TextStyle(fontSize: 9, color: Colors.grey.shade500),),
                      if(widget.currentEmployeeDTO.endDateInduction != null) Text('Assunto fino al: ${italianDateFormat.format(widget.currentEmployeeDTO.endDateInduction!)}',
                        style: TextStyle(fontSize: 9, color: Colors.grey.shade500),),

                    ],
                  ),

                  if(widget.employeePresence!.note != null && widget.employeePresence!.note!.isNotEmpty) Row(
                    children: [
                      Text(widget.employeePresence!.note!, style: TextStyle(fontSize: 8, color: Colors.red, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),

              widget.currentEmployeeDTO.remunerationType! != EmployeeDTORemunerationTypeEnum.ORARIA ? Row(
                children: [
                  GestureDetector(
                    onTap:() async {
                      if(widget.employeePresence!.illness! || widget.employeePresence!.holiday! || widget.employeePresence!.rest!){

                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'L\'utente non può essere presente se risulta essere in ferie o in malattia',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }else{
                        setState(() {
                          widget.employeePresence!.presentAtLunch = !widget.employeePresence!.presentAtLunch!;
                          widget.employeePresence!.branchCode = employeeStateManager.branchCode;
                        });
                        await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence!]);
                      }

                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: widget.employeePresence!.presentAtLunch! ? Colors.green : Colors.white,
                        color: widget.employeePresence!.presentAtLunch! ? Colors.green.shade200 : Colors.white,
                        elevation: widget.employeePresence!.presentAtLunch! ? 1 : 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('PRANZO', style: TextStyle(fontSize: widget.employeePresence!.presentAtLunch! ? 9 : 7, color: widget.employeePresence!.presentAtLunch! ? Colors.white :  Colors.blueGrey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if(widget.employeePresence!.illness! || widget.employeePresence!.holiday!){

                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'L\'utente non può essere presente se risulta essere in ferie o in malattia',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }else{
                        setState(() {
                          widget.employeePresence!.presentAtDinner = !widget.employeePresence!.presentAtDinner!;
                          widget.employeePresence!.branchCode = employeeStateManager.branchCode;
                        });

                        await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence!]);
                      }

                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: widget.employeePresence!.presentAtDinner! ? Colors.blue : Colors.white,
                        color: widget.employeePresence!.presentAtDinner! ? Colors.blue.shade200 : Colors.white,
                        elevation: widget.employeePresence!.presentAtDinner! ? 1 : 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('CENA', style: TextStyle(fontSize: widget.employeePresence!.presentAtDinner! ? 9 : 7, color: widget.employeePresence!.presentAtDinner! ? Colors.white :  Colors.blueGrey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:() async {
                      if(widget.employeePresence!.presentAtDinner!
                          || widget.employeePresence!.presentAtLunch!
                          || widget.employeePresence!.illness!
                          || widget.employeePresence!.rest!){

                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'L\'utente non può essere in ferie se risulta essere presente o in malattia',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }else{
                        setState(() {
                          widget.employeePresence!.holiday = !widget.employeePresence!.holiday!;
                          widget.employeePresence!.branchCode = employeeStateManager.branchCode;
                        });
                        await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence!]);
                      }

                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: widget.employeePresence!.holiday! ? Colors.orangeAccent.shade200 : Colors.white,
                        color: widget.employeePresence!.holiday! ? Colors.orangeAccent.shade200 : Colors.white,
                        elevation: widget.employeePresence!.holiday! ? 1 : 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('FERIE', style: TextStyle(fontSize: widget.employeePresence!.holiday! ? 9 : 7, color: widget.employeePresence!.holiday! ? Colors.white :  Colors.blueGrey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:() async {
                      if(widget.employeePresence!.presentAtDinner!
                          || widget.employeePresence!.presentAtLunch!
                          || widget.employeePresence!.holiday!
                          || widget.employeePresence!.rest!){

                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'L\'utente non può essere in malattia se risulta essere presente o in ferie',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }else{
                        setState(() {
                          widget.employeePresence!.illness = !widget.employeePresence!.illness!;
                          widget.employeePresence!.branchCode = employeeStateManager.branchCode;
                        });
                        await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence!]);
                      }
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: widget.employeePresence!.illness! ? Colors.redAccent : Colors.white,
                        color: widget.employeePresence!.illness! ? Colors.redAccent.shade200 : Colors.white,
                        elevation: widget.employeePresence!.illness! ? 1 : 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('MALATTIA', style: TextStyle(fontSize: 7, color: widget.employeePresence!.illness! ? Colors.white :  Colors.blueGrey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:() async {
                      if(widget.employeePresence!.presentAtDinner! || widget.employeePresence!.presentAtLunch! || widget.employeePresence!.holiday!){

                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'L\'utente non può essere libero se risulta essere presente o in ferie',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }else{
                        setState(() {
                          widget.employeePresence!.rest = !widget.employeePresence!.rest!;
                          widget.employeePresence!.branchCode = employeeStateManager.branchCode;
                        });
                        await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence!]);
                      }
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: widget.employeePresence!.rest! ? Colors.purpleAccent : Colors.white,
                        color: widget.employeePresence!.rest! ? Colors.purpleAccent.shade200 : Colors.white,
                        elevation: widget.employeePresence!.rest! ? 1 : 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('LIBERO', style: TextStyle(fontSize: 7, color: widget.employeePresence!.rest! ? Colors.white :  Colors.blueGrey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return NoteDialog(
                              widget.employeePresence!,
                              widget.refresh,
                              widget.choosedDate);
                        },
                      );
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1/14,
                      width: MediaQuery.of(context).size.height * 1/14,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        borderOnForeground: true,
                        surfaceTintColor: Colors.white,
                        color: Colors.white,
                        elevation: 5,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('NOTE', style: TextStyle(fontSize: 7)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ) : GestureDetector(
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return IncrementCounterDialog(
                          widget.employeePresence!,
                          widget.refresh,
                          widget.choosedDate);
                    },
                  );
                },
                child: SizedBox(
                  height: 60,
                  width: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10),
                    ),
                    borderOnForeground: true,
                    surfaceTintColor: Colors.white,
                    color: Colors.white,
                    elevation: widget.employeePresence!.workedHours! > 0 ! ? 10 : 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('ORE LAVORATE',
                                textAlign: TextAlign.center,
                                style:  TextStyle(color: widget.employeePresence!.workedHours! > 0 ?  Colors.blueGrey : Colors.grey, fontSize: 7),),
                              Text('${widget.employeePresence!.workedHours!}',
                                textAlign: TextAlign.center,
                                style:  TextStyle(color: widget.employeePresence!.workedHours! > 0 ?  Colors.blueGrey : Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class IncrementCounterDialog extends StatefulWidget {
  IncrementCounterDialog(this.employeePresence, this.refresh, this.chosedDate);

  final Function refresh;
  final EmployeePresenceReportDTO employeePresence;
  final DateTime chosedDate;

  @override
  _IncrementCounterDialogState createState() => _IncrementCounterDialogState();
}

class _IncrementCounterDialogState extends State<IncrementCounterDialog> {

  int _counter = 0;
  @override
  void initState() {
    if(widget.employeePresence.workedHours! > 0){
      _counter = widget.employeePresence.workedHours!;
    }
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text(
            'Ore lavorate di ${widget.employeePresence.employee!.firstName!} ${widget.employeePresence.employee!.lastName!}\n${widget.employeePresence.employee!.jobDescription!.value.replaceAll('_',' ')}',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Ore Lavorate: $_counter',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Decrement button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: _counter > 0
                        ? () {
                      setState(() {
                        _counter--;
                      });
                    }
                        : null, // Disable button if counter is 0
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '$_counter',
                    ),
                  ),
                  // Increment button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    widget.employeePresence.workedHours = _counter;
                    widget.employeePresence.branchCode = employeeStateManager.branchCode;
                    widget.employeePresence.date = widget.chosedDate;
                  });

                  print(widget.employeePresence);

                  await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence]);
                  Navigator.of(context).pop();
                  widget.refresh();
                },

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue.shade200),
                ),
                child: Text(
                  'SALVA',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class NoteDialog extends StatefulWidget {
  NoteDialog(this.employeePresence, this.refresh, this.chosedDate);

  final Function refresh;
  final EmployeePresenceReportDTO employeePresence;
  final DateTime chosedDate;

  @override
  _NoteDialogState createState() => _NoteDialogState();
}

class _NoteDialogState extends State<NoteDialog> {
  // Controller to manage the input text
  TextEditingController _noteController = TextEditingController();

  @override
  void initState() {
    if (widget.employeePresence.note != null) {
      _noteController.text = widget.employeePresence.note!;
    }
    super.initState();
  }

  @override
  void dispose() {
    // Dispose of the controller when done to avoid memory leaks
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text(
            'Note per ${widget.employeePresence.employee!.firstName!} ${widget.employeePresence.employee!.lastName!}\n${widget.employeePresence.employee!.jobDescription!.value.replaceAll('_', ' ')}',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Text Field for notes input
              TextField(
                controller: _noteController,
                decoration: InputDecoration(
                  labelText: 'Inserisci Nota',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  // Update the employee presence with the input note
                  setState(() {
                    widget.employeePresence.note = _noteController.text;
                    widget.employeePresence.branchCode = employeeStateManager.branchCode;
                    widget.employeePresence.date = widget.chosedDate;
                  });

                  print(widget.employeePresence);

                  // Save the updated employee presence
                  await employeeStateManager.restaurantControllerApi.createReports([widget.employeePresence]);
                  Navigator.of(context).pop();
                  widget.refresh();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue.shade200),
                ),
                child: Text(
                  'SALVA',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
