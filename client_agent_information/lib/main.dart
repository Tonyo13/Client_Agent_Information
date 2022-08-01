import 'package:flutter/material.dart';  
import 'package:dropdown_button2/dropdown_button2.dart';
  
void main() {  
  
  runApp(MemorialLotClientAgentInformationApp());  
}  
  class MemorialLotClientAgentInformationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memorial Lot Client & Agent Information',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    
    );
  }
}
class ClientAgentInformation extends StatefulWidget {
  
  
  
  @override  

  clientagent createState() => clientagent();  
  
}  
  class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client & Agent Information App'),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 70, left: 70, right: 70),  
          
            child: Column(  
              children: <Widget>[ 
     
       Padding(padding: EdgeInsets.only(bottom: 20)),
    
        Padding(padding: EdgeInsets.only(bottom: 20)),

      
      Padding(padding: EdgeInsets.only(bottom: 100)),
        Align(  
                  
                  alignment: Alignment.center,
            child: Container(
              
              margin: const EdgeInsets.all(5),
              height: 40,
              width: 240,
              child: ElevatedButton(
                onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClientAgentInformation()));},
                child: const Text('Enter'),
              
                
              ),

              
            ), 

        
                ),
              ],
            ),
      ),
    );
  }
}



class clientagent extends State<ClientAgentInformation> {  
  final List<String> items = [
  'Male',
  'Female',
  'Other',
];
String? selectedValue;

  @override  
  Widget build(BuildContext context) {  
   
    
    return Scaffold(  
     
        appBar: AppBar(  
             
          title: Text('Client & Agent Information App'), 
        ),  
         backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.only(top: 10, left: 70, right: 70),  
          
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(5), 
                  
                  child: SizedBox( 
                    height: 40,
                    child: TextField( 
                    
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'First Name',  
                      hintText: 'Enter the First Name',
                      fillColor: Colors.white,
                      filled: true, 
                       
                    ), 
                    ), 
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(5),  
                  child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                      style: TextStyle(fontWeight: FontWeight.bold),
                  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Middle Name',  
                      hintText: 'Enter the Middle Name', 
                       fillColor: Colors.white,
                      filled: true, 
                    ),  
                  ),  
                  )
                ), 
                Padding(  
                  padding: EdgeInsets.all(5),  
                  child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                     style: TextStyle(fontWeight: FontWeight.bold),
                   
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Last Name',  
                      hintText: 'Enter the Last Name',
                        fillColor: Colors.white,
                      filled: true,   
                    ),  
                  ),  
                  )
                ), 
                 Padding(  
                  padding: EdgeInsets.all(5),  
                child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                     style: TextStyle(fontWeight: FontWeight.bold),
                   
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Birthdate',  
                      hintText: 'MM/DD/YYYY',
                        fillColor: Colors.white,
                      filled: true,   
                    ),  
                  ),  
                )
                ),
                 Padding(  
                  padding: EdgeInsets.all(5), 
              child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                     style: TextStyle(fontWeight: FontWeight.bold),
                  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Address',  
                      hintText: 'Enter the Address',  
                        fillColor: Colors.white,
                      filled: true, 
                    ),  
                  ),  
              )
                ),
                Padding(  
                  padding: EdgeInsets.all(5),  
                child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                     style: TextStyle(fontWeight: FontWeight.bold),
                   
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Contact Number',  
                      hintText: 'Enter the Contact Number',
                        fillColor: Colors.white,
                      filled: true,   
                    ),  
                  ),  
                )
                ),
                 Padding(  
                  padding: EdgeInsets.all(5),  
                child: SizedBox( 
                    height: 40,
                  child: TextField(  
                   
                     style: TextStyle(fontWeight: FontWeight.bold),
                   
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Email Address',  
                      hintText: 'Enter the Email Address',
                        fillColor: Colors.white,
                      filled: true,   
                    ),  
                  ),  
                )
                ),
               
               Padding(padding: EdgeInsets.all(5)),

        Container(    
        decoration: BoxDecoration(color: Colors.white, ),
   child: DropdownButton2(
    
    isExpanded: true,
    alignment: Alignment.centerLeft,
      style: TextStyle(fontWeight: FontWeight.bold),
 
          hint: Text(
            'Gender',
            
            style: TextStyle(
              fontSize: 14,
              color: Theme
                      .of(context)
                      .hintColor,
            
            ),
          ),
         
          items: items
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    
                    child: Text(
                      
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      color: Colors.black
                        
                    
                      ),
                    ),
                  ))
                  .toList(),
       
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: 40,
          buttonWidth: 140,
                         
          itemHeight: 40,
   ),
        ),
      
                Align(  
                  
                  alignment: Alignment.center,
            child: Container(
              
              margin: const EdgeInsets.all(5),
              height: 40,
              width: 140,
              child: ElevatedButton(
            
                onPressed: () {
                       
                  showDialog(
                    context: context, builder: (context) => AlertDialog(
                      title: Text('Client\'s Information Successfully Saved!', textAlign: TextAlign.center,),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed:  () => Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  FirstPage()))
              
              
                        ),
                      ],
                    ),
                    ); 
                   
                },
                child: const Text('Save as Client'),
                
                
              ),
            ), 
                ), 


                Align(  
                  
                  alignment: Alignment.center,
            child: Container(
             
              margin: const EdgeInsets.all(5),
              height: 40,
              width: 140,
              child: ElevatedButton(
                 onPressed: () {
                       
                  showDialog(
                    context: context, builder: (context) => AlertDialog(
                      title: Text('Agent\'s Information Successfully Saved!', textAlign: TextAlign.center,),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed:  () => Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  FirstPage()))
              
              
                        ),
                      ],
                    ),
                    ); 
                   
                },
                child: const Text('Save as Agent'),
                
                
              ),
            ), 
                ) 
              ],  
            
            ) 
           
        ),
        
    );  
  
  }  
}  