import 'package:flutter/material.dart';
import 'package:login_flutter/src/bloc/login_bloc.dart';
export 'package:login_flutter/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget{

  final loginBloc = LoginBloc();

  Provider({Key key, Widget child})
    : super(key:key, child: child);


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of ( BuildContext context ){
   return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }


/*


Stream<bool> get formValidStream => 
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true );

      
Stream<bool> get formValidStream =>
       Rx.combineLatest2(emailStream, passwStream, (e, p) => true);


*/

}