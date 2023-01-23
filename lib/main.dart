import 'package:flutter/material.dart';

void main() {
  runApp(const Gridvbuilder());
}

class Gridvbuilder extends StatefulWidget {
  const Gridvbuilder({Key? key}) : super(key: key);

  @override
  State<Gridvbuilder> createState() => _GridvbuilderState();
}

class _GridvbuilderState extends State<Gridvbuilder> {
  List s =['Container1','Container2',
    'Container3', 'Container4',
    'Container5', 'Container6',
    'Container7', 'Container8',
    'Container9', 'Container10',
    'Container11', 'Container12'];
  List p=[Icons.home,Icons.mail_sharp,
    Icons.alarm,Icons.account_balance_wallet,
    Icons.backup,Icons.book,
    Icons.camera_alt_rounded,Icons.person,
    Icons.print_sharp,Icons.phone,
    Icons.speaker_notes,Icons.music_note];
  List v=['Home','Email','Alarm',
    'Wallet','Backup','Book',
    'Camera','Person','Print',
    'Phone','Notes','music'];
  List h=[Colors.cyan,Colors.greenAccent,Colors.purple,
    Colors.pinkAccent,Colors.deepOrange,Colors.limeAccent,
    Colors.purpleAccent,Colors.yellowAccent,Colors.red,
    Colors.blue,Colors.deepOrangeAccent,Colors.yellowAccent];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
          title: Center(
            child: Text('Grid viewbuilder',
              style: TextStyle(
                fontSize: 30,
                  fontWeight: FontWeight.w600,
                color: Colors.lightBlue
              ),
            ),
          ),
          leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        ),
        body: GridView.builder(shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemCount:s.length ,
          itemBuilder: (context, index) {
            return Container(
                height: 40,
                color: h[index],
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(p[index],size: 100,),
                      Text(v[index],style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                      ),

                    ]
                )
            );

          },),

      ),
    );
  }
}
