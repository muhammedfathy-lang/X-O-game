import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game_cubit/State/AppState.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(initialState());
String winerName='';
  static AppCubit get(context)=>BlocProvider.of(context);
List<String> text=['','','',
                   '','','',
                   '','','',];
  int  playCounter=0;
  int result1=0;
  int result2=0;

  void changetext(int ButtonPosition){
    if(text[ButtonPosition].isNotEmpty){
      return ;
    }
    if(playCounter%2==0){
      text[ButtonPosition]='X';
    }
    else {
      text[ButtonPosition]='O';
    }
    playCounter++;
    if(playCounter>=4){
      chickWiner('X');
      chickWiner('O');
    }
    if(playCounter==10){
      reset();
    }
    print('counter in change $playCounter');
    emit(changeButtonState());
    }
  void chickWiner(String sign){
    if(text[0]==sign&&text[1]==sign&&text[2]==sign){
      won();
    }
    else if(text[3]==sign&&text[4]==sign&&text[5]==sign){
      won();
    }
    else if(text[6]==sign&&text[7]==sign&&text[8]==sign){
      won();
    }
    else if(text[0]==sign&&text[3]==sign&&text[6]==sign){
      won();
    }
    else if(text[1]==sign&&text[4]==sign&&text[7]==sign){
      won();
    }
    else if(text[2]==sign&&text[5]==sign&&text[8]==sign){
      won();
    }
    else if(text[0]==sign&&text[4]==sign&&text[8]==sign){
      won();
    }
    else if(text[2]==sign&&text[4]==sign&&text[6]==sign){
      won();
    }
  }
 void won(){
    if(playCounter%2==0)
    { winerName='player1'; }
    else
      { winerName='player2'; }
    resultofwiner();
    reset();
  }
  void resultofwiner(){
    if(winerName=='player1')
    {
      result1++;
    }
    else if(winerName=='player2')
    {
      result2++;
    }
  }
  void reset(){
    text=['','','',
      '','','',
      '','','',];
    emit(resetlState());
    playCounter=0;
    print('counter in reset$playCounter');
    return;
  }
  }

