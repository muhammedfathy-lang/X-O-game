import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game_cubit/Cubit/AppCubit.dart';
import 'package:xo_game_cubit/State/AppState.dart';
//
// class buildButton extends StatelessWidget {
//   String text;
//   int Buttonposition;
// Function onpressButton;
// buildButton(this.text,this.Buttonposition,this.onpressButton);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit,AppState>(
//         listener: (BuildContext context, state) {},
//         builder: (BuildContext context, Object? state) {
//          return  button(text,onpressButton());
//         });
//   }
// }

class button extends StatelessWidget {
String text;
int buttonPosition;
Function OnPressbutton;
//VoidCallback onclick;
button(this.text,this.buttonPosition,this.OnPressbutton);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                color: Colors.orangeAccent
            ),
            child: TextButton(
                onPressed: ()=>{
                  OnPressbutton(buttonPosition)},
                child: Text('$text', textAlign: TextAlign.center, style: TextStyle(
                color: Colors.black,
                fontSize: 60,
                fontWeight: FontWeight.bold
            ),)
            ),
          ),
        ));
  }
}

