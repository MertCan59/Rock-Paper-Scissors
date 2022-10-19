import 'dart:io';
import 'dart:math';

enum moves{rock,paper,scissors}
void main(){
  int userWin=0;
  int aiWin=0;

  while(true){
    stdout.write('Welcome to the rock,paper,scissors/quit -(r,p or s/q)');
    final input=stdin.readLineSync();
    
    //user moves
    var userMove;
    
    if(input=='r'){
      userMove=moves.rock;
    }else if(input=='p'){
      userMove=moves.paper;
    }else if(input=='s'){
      userMove=moves.scissors;
    }else if(input=='q'){
      break;
    }else{
      print('Invalid Input');
    }
    
    //ai moves
    final randomNumber=Random().nextInt(3);
    final aiMove=moves.values[randomNumber];

    //showing user and ai moves 
    print('You played: $userMove');
    print('AI played: $aiMove');

    // battle time
    if(userMove==moves.rock && aiMove==moves.scissors 
    ||userMove==moves.scissors &&aiMove==moves.paper
    ||userMove==moves.paper && aiMove==moves.rock){
      print('You won this round');
      userWin++;
      if(userWin==3){
        print('You won the game');
        
      }
    }
    if(aiMove==moves.rock&&userMove==moves.scissors
    ||aiMove==moves.scissors&&userMove==moves.paper
    ||aiMove==moves.paper&&userMove==moves.rock){
      print('You loose this round');
      aiWin++;
      if(aiWin==3){
        print('You loose the game');
        
      }
    }
    if(userMove==aiMove){
      print('Draw');
    }
    if(userWin==3 ||aiWin==3){
      print('Do you want to play again? Press "y" to play again or press "n" to exit');
      final input=stdin.readLineSync();
      if(input=='y'){
        aiWin=0;
        userWin=0;
      }else if(input=='n'){
        break;
      }
    }
    }
  } 
