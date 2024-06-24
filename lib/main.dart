import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _weight = 50; // ค่าเริ่มต้นของน้ำหนัก
  double _height = 170; // ค่าเริ่มต้นของความสูง
  String _major = 'Comsci'; // ค่าเริ่มต้นของ Major
  String _language = 'Thai'; // ค่าเริ่มต้นของ Language
  bool _agreedToTerms = false; // ตัวแปรเก็บสถานะการเช็ค Agree Terms

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 50), // เพิ่ม padding ด้านบน
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/comsci.png',), // ใส่รูปภาพโลโก้ในโฟลเดอร์ assets
              ),
            ),
            SizedBox(height: 20), // เพิ่มระยะห่างระหว่างข้อความ
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle register button tap
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่างข้อความ REGISTER กับ NAME
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ NAME กับกล่องข้อความ
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่างข้อความ REGISTER กับ NAME
                    Text(
                      'Username',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ NAME กับกล่องข้อความ
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่างข้อความ REGISTER กับ NAME
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ NAME กับกล่องข้อความ
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่างข้อความ REGISTER กับ NAME
                    Text(
                      'Weight',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ NAME กับกล่องข้อความ
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_weight.toInt()} kg',
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: Slider(
                            value: _weight,
                            min: 1,
                            max: 200,
                            divisions: 199,
                            label: _weight.toInt().toString(),
                            onChanged: (value) {
                              setState(() {
                                _weight = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่าง Weight กับ Height
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ Height กับ Slider
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_height.toInt()} cm',
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: Slider(
                            value: _height,
                            min: 1,
                            max: 250,
                            divisions: 249,
                            label: _height.toInt().toString(),
                            onChanged: (value) {
                              setState(() {
                                _height = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่าง Height กับ Major
                    Text(
                      'Major',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ Major กับ RadioButtons
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _major = 'Comsci';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _major == 'Comsci' ? const Color.fromARGB(255, 114, 191, 255) : Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'Comsci',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _major = 'IT';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _major == 'IT' ? const Color.fromARGB(255, 248, 174, 64) : Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'IT',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่าง Major กับ Language
                    Text(
                      'Language',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // เปลี่ยนเป็นตัวหนา
                    ),
                    SizedBox(height: 5), // เพิ่มระยะห่างระหว่างข้อความ Language กับ RadioButtons
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RadioListTile<String>(
                          title: Text('Thai'),
                          value: 'Thai',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('English'),
                          value: 'English',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Chinese'),
                          value: 'Chinese',
                          groupValue: _language,
                          onChanged: (value) {
                            setState(() {
                              _language = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 15), // เพิ่มระยะห่างระหว่าง Language กับ Agree Terms
                    Row(
                      children: [
                        Checkbox(
                          value: _agreedToTerms,
                          onChanged: (value) {
                            setState(() {
                              _agreedToTerms = value!;
                            });
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _agreedToTerms = !_agreedToTerms;
                            });
                          },
                          child: Text(
                            'Agree Condition Terms',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // เพิ่มระยะห่างระหว่าง Agree Terms กับปุ่ม Register
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle register button tap
                        },
                        child: Text('REGISTER',style: TextStyle(fontSize: 20),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // เพิ่มระยะห่าง
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
