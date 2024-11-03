import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/employee/reports/state_manager/employee_state_manager.dart';

import '../../../../../api/restaurant_client/lib/api.dart';
import '../../../../../state_manager/restaurant_state_manager.dart';

class CreateUpdateEmployeeScreen extends StatefulWidget {
  final EmployeeDTO employee;
  final bool isEmployeeUpdate;

  const CreateUpdateEmployeeScreen({super.key, required this.employee, required this.isEmployeeUpdate});

  @override
  _CreateUpdateEmployeeScreenState createState() => _CreateUpdateEmployeeScreenState();
}

class _CreateUpdateEmployeeScreenState extends State<CreateUpdateEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _dobController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _costReferenceController;
  late TextEditingController _startDateController;
  late TextEditingController _endDateController;

  int _employeeId = 0;
  DateTime? _dob;
  DateTime? _startDate;
  DateTime? _endDate;

  // ENUM FIELDS
  EmployeeDTOJobDescriptionEnum? _jobDescription;
  EmployeeDTOGenderEnum? _gender = EmployeeDTOGenderEnum.UOMO;
  EmployeeDTOContractTypeEnum? _contractType = EmployeeDTOContractTypeEnum.DETERMINATO;
  EmployeeDTORemunerationTypeEnum? _remuneration = EmployeeDTORemunerationTypeEnum.MENSILE;

  @override
  void initState() {
    super.initState();

    if (widget.isEmployeeUpdate) {
      _employeeId = widget.employee.employeeId!;
      _dob = widget.employee.dob;
      _endDate = widget.employee.endDateInduction;
      _startDate = widget.employee.startDateInduction;

      _firstNameController = TextEditingController(text: widget.employee.firstName);
      _lastNameController = TextEditingController(text: widget.employee.lastName);
      _dobController = TextEditingController(text: _dob != null ? _dob!.toLocal().toString().split(' ')[0] : '');
      _emailController = TextEditingController(text: widget.employee.email);
      _phoneController = TextEditingController(text: widget.employee.phone);
      _startDateController = TextEditingController(text: _startDate != null ? _startDate!.toLocal().toString().split(' ')[0] : '');
      _endDateController = TextEditingController(text: _endDate != null ? _endDate!.toLocal().toString().split(' ')[0] : '');
      _jobDescription = widget.employee.jobDescription;
      _gender = widget.employee.gender;
      _contractType = widget.employee.contractType;
      _costReferenceController = TextEditingController(text: widget.employee.retribution!.toStringAsFixed(2).replaceAll('.00', ''));
    } else {
      _firstNameController = TextEditingController();
      _lastNameController = TextEditingController();
      _dobController = TextEditingController();
      _emailController = TextEditingController();
      _phoneController = TextEditingController();
      _costReferenceController = TextEditingController();
      _endDateController = TextEditingController();
      _startDateController = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeStateManager>(
      builder: (BuildContext context, EmployeeStateManager employeeStateManager, Widget? child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor:  Colors.blueGrey,
            onPressed: _submitForm,
            label: Text('Salva dipendente'),
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.isEmployeeUpdate ? 'Aggiorna Dipendente' : 'Crea Dipendente'),
                Text(employeeStateManager.branchName),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField(_firstNameController, 'Nome', 'Inserisci un nome'),
                    _buildTextField(_lastNameController, 'Cognome', 'Inserisci un cognome'),

                    // Gender Dropdown
                    _buildDropdownField<EmployeeDTOGenderEnum>(
                      'Sesso',
                      _gender,
                      EmployeeDTOGenderEnum.values,
                          (value) => setState(() => _gender = value),
                      'Seleziona un genere',
                    ),

                    // Date of Birth Picker
                    _buildDatePickerField(_dobController, 'Data di Nascita', _dob, (pickedDate) {
                      setState(() {
                        _dob = pickedDate;
                        _dobController.text = _dob!.toLocal().toString().split(' ')[0];
                      });
                    }),

                    _buildTextField(_emailController, 'Email', null, TextInputType.emailAddress),
                    _buildTextField(_phoneController, 'Telefono', null, TextInputType.phone),

                    // Job Description Dropdown
                    _buildDropdownField<EmployeeDTOJobDescriptionEnum>(
                      'Posizione',
                      _jobDescription,
                      EmployeeDTOJobDescriptionEnum.values,
                          (value) => setState(() => _jobDescription = value),
                      'Inserisci la posizione',
                    ),

                    // Contract Type Dropdown
                    _buildDropdownField<EmployeeDTOContractTypeEnum>(
                      'Tipo di Contratto',
                      _contractType,
                      EmployeeDTOContractTypeEnum.values,
                          (value) => setState(() => _contractType = value),
                    ),

                    // Hire Date Picker
                    _buildDatePickerField(_startDateController, 'Data di Assunzione', _startDate, (pickedDate) {
                      setState(() {
                        _startDate = pickedDate;
                        _startDateController.text = _startDate!.toLocal().toString().split(' ')[0];
                      });
                    }),

                    // End Date Picker (Optional)
                    if (_contractType == EmployeeDTOContractTypeEnum.DETERMINATO)
                      _buildDatePickerField(_endDateController, 'Data di Fine Contratto', _endDate, (pickedDate) {
                        setState(() {
                          _endDate = pickedDate;
                          _endDateController.text = _endDate!.toLocal().toString().split(' ')[0];
                        });
                      }),

                    _buildTextField(_costReferenceController, 'Paga (€)', 'Inserisci la paga', TextInputType.numberWithOptions(decimal: true, signed: true)),

                    // Remuneration Dropdown
                    _buildDropdownField<EmployeeDTORemunerationTypeEnum>(
                      'Retribuzione',
                      _remuneration,
                      EmployeeDTORemunerationTypeEnum.values,
                          (value) => setState(() => _remuneration = value),
                    ),

                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, String? validationMessage, [TextInputType inputType = TextInputType.text]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(labelText: label),
        validator: (value) {
          if (validationMessage != null && (value == null || value.isEmpty)) {
            return validationMessage;
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDatePickerField(TextEditingController controller, String label, DateTime? selectedDate, Function(DateTime) onDateSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: selectedDate ?? DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2100),
          );
          if (pickedDate != null) {
            onDateSelected(pickedDate);
          }
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Seleziona la $label';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDropdownField<T>(String label, T? value, List<T> items, Function(T?) onChanged, [String? validationMessage]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<T>(
        decoration: InputDecoration(labelText: label),
        value: value,
        items: items.map((T item) {
          return DropdownMenuItem<T>(value: item, child: Text(item.toString().split('.').last));
        }).toList(),
        onChanged: onChanged,
        validator: (val) {
          if (validationMessage != null && (val == null || val.toString().isEmpty)) {
            return validationMessage;
          }
          return null;
        },
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (widget.isEmployeeUpdate) {
        _updateEmployee();
      } else {
        _createEmployee();
      }
    }
  }

  // API Call to create a new employee
  void _createEmployee() async {
    try {
      String branchCode = Provider.of<EmployeeStateManager>(context, listen: false).branchCode;

      var newEmployee = EmployeeDTO(
          employeeId: _employeeId,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          dob: _dob,
          email: _emailController.text,
          phone: _phoneController.text,
          endDateInduction: _endDate,
          remunerationType: _remuneration,
          retribution: double.parse(_costReferenceController.text),
          startDateInduction: _startDate,
          jobDescription: _jobDescription!,
          gender: _gender!,
          contractType: _contractType!,
          visible: true,
          fired: false,
          branchCode: branchCode
      );

      await Provider.of<EmployeeStateManager>(context, listen: false).restaurantControllerApi
          .createEmployee(branchCode, newEmployee);

      await Provider.of<EmployeeStateManager>(context, listen: false).retrieveCurrentEmployee();
      Fluttertoast.showToast(msg: 'Dipendente creato con successo!');
      Navigator.pop(context);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Errore nella creazione del dipendente!');
    }
  }

  // API Call to update an existing employee
  void _updateEmployee() async {

    String branchCode = Provider.of<EmployeeStateManager>(context, listen: false).branchCode;

    try {
      var updatedEmployee = EmployeeDTO(
          employeeId: _employeeId,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          dob: _dob,
          email: _emailController.text,
          phone: _phoneController.text,
          endDateInduction: _endDate,
          remunerationType: _remuneration,
          retribution: double.parse(_costReferenceController.text),
          startDateInduction: _startDate,
          jobDescription: _jobDescription!,
          gender: _gender!,
          contractType: _contractType!,
          visible: true,
          fired: false,
          branchCode: branchCode
      );

      await Provider.of<EmployeeStateManager>(context, listen: false).restaurantControllerApi.updateEmployee(branchCode, updatedEmployee);
      Fluttertoast.showToast(msg: 'Dipendente aggiornato con successo!');
      await Provider.of<EmployeeStateManager>(context, listen: false).retrieveCurrentEmployee();
      Navigator.pop(context);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Errore nell\'aggiornamento del dipendente!');
    }
  }
}