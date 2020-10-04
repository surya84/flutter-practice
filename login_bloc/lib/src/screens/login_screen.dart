import 'package:flutter/material.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 200.0)),
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.only(top: 20.0)),
          Row(
            children: [
              loginButton(),
              registerButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailField(bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget loginButton() {
    return FlatButton(
      onPressed: () {},
      color: Colors.blueAccent,
      textColor: Colors.white,
      child: Text('Login'),
    );
  }

  Widget registerButton() {
    return FlatButton(
      onPressed: () {},
      color: Colors.black26,
      textColor: Colors.white,
      child: Text('Register'),
    );
  }
}
