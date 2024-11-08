import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:ventipro/app/core/customer/customer_state_manager.dart';

class CustomerScreen extends StatefulWidget {

  static const String routeName = 'customer_screen';

  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clienti'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              placeholder: 'Ricerca clienti...',
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: Consumer<CustomerStateManager>(
              builder: (BuildContext context, CustomerStateManager value, Widget? child) {
                final List<CustomerDTO> customers = value.currentCustomersList!;

                // Filter and group customers by the first letter of their last name
                Map<String, List<CustomerDTO>> groupedCustomers = {};
                for (var customer in customers) {
                  if (customer.lastName != null &&
                      (customer.lastName!.toLowerCase().contains(searchQuery.toLowerCase()) ||
                          customer.firstName?.toLowerCase().contains(searchQuery.toLowerCase()) == true)) {
                    String firstLetter = customer.lastName![0].toUpperCase();
                    groupedCustomers.putIfAbsent(firstLetter, () => []).add(customer);
                  }
                }

                // Sort the groups alphabetically
                List<String> sortedKeys = groupedCustomers.keys.toList()..sort();


                return ListView.builder(
                  itemCount: sortedKeys.length,
                  itemBuilder: (context, index) {
                    String key = sortedKeys[index];
                    List<CustomerDTO> customers = groupedCustomers[key]!..sort((a, b) => a.lastName!.compareTo(b.lastName!));

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Display the first letter as a section header
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            key,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Display each customer under the letter group
                        ...customers.map((customer) {
                          return ListTile(
                            title: Text('${customer.firstName} ${customer.lastName}'),
                            subtitle: Text(customer.email ?? ''),
                            trailing: Text(customer.phone ?? ''),
                          );
                        }),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}