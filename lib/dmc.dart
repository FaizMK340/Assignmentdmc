import 'package:flutter/material.dart';

class Dmc extends StatefulWidget {
  const Dmc({super.key});

  @override
  State<Dmc> createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  var formkey = GlobalKey<FormState>();
  var eng, phy, math, sci, isl;
  var totalMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Text('DMC'),
        ),
        body: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'English Marks',
                        labelText: 'English',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      validator: (value) {
      
                        if (value!.isEmpty) {
                          return 'Please Enter the Marks';
                        } else {
                          eng = int.parse(value);
                        }
                        if(eng> 100){
                          return 'Please Enter the Numbe between 1 to 100';
                        }
      
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Physics Marks',
                        labelText: 'Physics',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter the Marks';
                        } else {
                          phy = int.parse(value);
                        }
                        if(phy> 100){
                          return 'Please Enter the Numbe between 1 to 100';
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Math Marks',
                        labelText: 'Math',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter the Marks';
                        } else {
                          math = int.parse(value);
                        }
                        if(math> 100){
                          return 'Please Enter the Numbe between 1 to 100';
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Science Marks',
                        labelText: 'Science',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter the Marks';
                        } else {
                          sci = int.parse(value);
                        }
                        if(sci> 100){
                          return 'Please Enter the Numbe between 1 to 100';
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Islamiat Marks',
                        labelText: 'Islamiat',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter the Marks';
                        } else {
                          isl = int.parse(value);
                        }
                        if(isl> 100){
                          return 'Please Enter the Numbe between 1 to 100';
                        }
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              formkey.currentState!.reset();
                             setState(() {
                               totalMarks = '';
                               percentage = '';
                               grade = '';
                             });

                            },


                            child: Text(
                              'Clear',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                int tot = eng + phy + math + sci + isl;
                                double per = tot * 100 / 500;
                                if (per >= 80) {
                                  grade = 'Grade A';
                                } else if (per >= 70) {
                                  grade = 'Grade B';
                                } else if (per >= 60) {
                                  grade = ' Grade C';
                                }else if (per >= 40) {
                                  grade = ' Grade D';
                                }
                                else if (per >= 30) {
                                  grade = ' Grade E';
                                }
                                else {
                                  'Failed';
                                }
      
                                setState(() {
                                  totalMarks = tot.toString();
                                  percentage = per.toString();
                                });
                              }
                            },
                            child: Text(
                              'Calculate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text('Total Marks:  $totalMarks',style: TextStyle(fontSize: 20.0),),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Percentage: $percentage',style: TextStyle(fontSize: 20.0),),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Grade: $grade',style: TextStyle(fontSize: 20.0),),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
