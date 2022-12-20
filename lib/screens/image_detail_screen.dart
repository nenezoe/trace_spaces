import 'package:flutter/material.dart';

import '../widgets/bottom_sheet_widget.dart';


class ImageDetailScreen extends StatelessWidget {
  static const routeName = '/image-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/bbackground.png'),

          InkWell(
            onTap: ()
            { showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                  );
                }
            );},
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xff245EF2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff245EF2))
              ),
              child: Center(child: Text('Show Detail',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white
                ),)),
            ),
          ),

        ],
      ),
      // bottomSheet: BottomSheetWidget(),
    );
  }


}
