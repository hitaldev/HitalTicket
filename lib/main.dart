import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(HitalTicket());
}
class HitalTicket extends StatefulWidget {
  const HitalTicket({Key? key}) : super(key: key);
  @override
  _HitalTicketState createState() => _HitalTicketState();
}
class _HitalTicketState extends State<HitalTicket> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Theme(
        data: ThemeData(fontFamily: "YekanBakh"),
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF101010),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text("HITALDEV",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w900,
                            fontSize: 12
                        ),),
                        Spacer(),
                        Text("خرید بلیط",style: TextStyle(
                          color: Color(0xFFE3B73B),fontWeight: FontWeight.w900,
                          fontSize: 17
                        ),),
                        SizedBox(width: 5,),
                        Image.asset("assets/images/microphone.png",width: 30,),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                          "assets/images/base.jpg",width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("محل سن",style: TextStyle(
                                color: Color(0xFFE3B73B),fontWeight: FontWeight.w900,
                                fontSize: 17
                            ),),
                            SizedBox(height: 10,),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GridView.builder(
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                        ),
                                        itemCount: 24,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(right: 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.vertical(top:
                                                  Radius.circular(10)),
                                                  color: index%3 ==0 ? Colors.white : Color(0xFF3BA59A)
                                              ),
                                              child: Center(
                                                  child: Text((index + 1).toString(),style: TextStyle(
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                              ),
                                            ),
                                          );
                                        }
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Expanded(
                                    child: GridView.builder(
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                        ),
                                        itemCount: 24,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(right: 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.vertical(top:
                                                  Radius.circular(10)),
                                                  color: index%3 ==0 ? Color(0xFFE3B73B) : Color(0xFF3BA59A)
                                              ),
                                              child: Center(
                                                  child: Text((index + 1).toString(),style: TextStyle(
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                              ),
                                            ),
                                          );
                                        }
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 150,
                              height: 45,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              color: Color(0xFFE3B73B),
                              child: Text("خرید بلیط",style: TextStyle(
                                fontWeight: FontWeight.w900,fontSize: 16
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
