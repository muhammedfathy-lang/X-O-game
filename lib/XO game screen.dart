import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game_cubit/Cubit/AppCubit.dart';
import 'package:xo_game_cubit/State/AppState.dart';

import 'component/default button.dart';

class xoScreen extends StatelessWidget {
late String name1;
late String name2;
xoScreen(this.name1,this.name2){
}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AppCubit(),
      child: BlocConsumer<AppCubit,AppState>(
          listener: (BuildContext context, Object? state) {
          },
        builder: (BuildContext context, state) {
            var cubit=AppCubit.get(context);
            return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  Expanded(flex: 1,
                    child: Container(
                      alignment:AlignmentDirectional.center ,
                      decoration: BoxDecoration(
                          color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Text('${name2} : ${cubit.result1}',style: TextStyle(
                             fontSize: 20,
                           ),),
                           SizedBox(height: 15,),
                           Container(
                             padding: EdgeInsets.all(15),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8),
                                 color: Color.fromARGB(159, 191, 41, 22)
                             ),
                             child: Text('O',style: TextStyle(
                                 fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold
                             ),),
                           ),
                         ],),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              width: 1,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text('${name1} : ${cubit.result2}',style: TextStyle(
                            fontSize: 20,
                          ),),
                            SizedBox(height: 15,),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                  color: Color.fromARGB(228, 14, 62, 7)
                              ),
                              child: Text('x',style: TextStyle(
                                  fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold
                              ),),
                            ),
                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              button(cubit.text[0],0,cubit.changetext),
                              button(cubit.text[1],1,cubit.changetext),
                              button(cubit.text[2],2,cubit.changetext),
                            ],),
                        ),
                        Expanded(
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              button(cubit.text[3],3,cubit.changetext),
                              button(cubit.text[4],4,cubit.changetext),
                              button(cubit.text[5],5,cubit.changetext),
                            ],),
                        ),
                        Expanded(
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              button(cubit.text[6],6,cubit.changetext),
                              button(cubit.text[7],7,cubit.changetext),
                              button(cubit.text[8],8,cubit.changetext),
                            ],),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            );
        }

      ),
    );
  }
}
