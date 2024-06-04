import 'package:flutter/material.dart';
import 'colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              'Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.',
              style: TextStyle(
                color: Colors.orange,
                backgroundColor: Color.fromARGB(255, 249, 230, 202),
              ),
            ),
            SizedBox(height: 16),
            buildBillItem(
              context,
              'Rp450.000',
              'Due date on 16 Feb 2024',
              'Nethome',
              '112345678921',
              'Nethome 100 Mbps',
              isChecked1,
              (bool? value) {
                setState(() {
                  isChecked1 = value ?? false;
                });
              },
            ),
            buildBillItem(
              context,
              'Rp240.000',
              'Due date on 20 Feb 2024',
              'Bizzzcom',
              '123456789012',
              'Bizzzcom 50 Mbps',
              isChecked2,
              (bool? value) {
                setState(() {
                  isChecked2 = value ?? false;
                });
              },
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navigate to Transaction History
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 5, 0, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: const Color.fromARGB(255, 13, 0, 2),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Payment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rp${isChecked1 ? '450.000' : ''}${isChecked2 ? ' + Rp240.000' : ''}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 26, 65, 240),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle pay now
              },
              child: Text('PAY NOW'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBillItem(
    BuildContext context,
    String amount,
    String dueDate,
    String provider,
    String customerId,
    String package,
    bool isChecked,
    Function(bool?)? onChanged,
  ) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(amount,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(dueDate),
                    ],
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                  activeColor: AppColors.primary,
                ),
              ],
            ),
            if (isChecked) ...[
              Divider(),
              Text('Provider: $provider'),
              Text('ID Pelanggan: $customerId'),
              Text('Paket Layanan: $package'),
            ],
          ],
        ),
      ),
    );
  }
}
