import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game_cubit/Cubit/AppCubit.dart';
import 'package:xo_game_cubit/XO%20game%20screen.dart';

import 'State/AppState.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return (MaterialApp(
  home:Navigatorhome()
  ));
  }

}
/// this class for navigator error
class Navigatorhome extends StatelessWidget {
  var player1controller = TextEditingController();
  var player2controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('XO GAME', style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold
        ),)),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/pic2.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                      else
                        return null;
                    },
                    controller: player1controller,
                    decoration: InputDecoration(
                        labelText: 'player 1',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Container(
                  child: TextFormField(
                    controller: player2controller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'player 2',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40,),
              Container(
                width: 310,
                decoration: BoxDecoration(
                    color: Colors.teal
                ),
                child: TextButton(onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            xoScreen(
                                player1controller.text, player2controller.text)));
                  }
                }
                    , child: Text(
                      'play', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

}