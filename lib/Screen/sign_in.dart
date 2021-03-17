import 'package:cardgame/Screen/register.dart';
import 'package:cardgame/shared/constants.dart';
import 'package:cardgame/shared/loading.dart';
import 'package:cardgame/src/generated/lobby.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'card.dart';
import 'lobbylist.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String result;
  // Tao cong goi grpc service
  LobbyClient client = LobbyClient(ClientChannel("192.168.112.99",
      port: 5001,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));
  Future callLogin() async {
    var response = await client.logIn(new LogIn_Request());
    result = response.returnCode.toString();
  }

  //text field state
  String _email = "";
  String _password = "";
  String _error = '';
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).primaryColor,
              appBar: AppBar(
                actions: [
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      icon: Icon(Icons.person),
                      label: Text('Đăng kí'))
                ],
                backgroundColor: Colors.green[400],
                elevation: 0.0,
                title: Text(
                  'Đăng nhập vào Game',
                  style: TextStyle(fontFamily: 'Yellowtail'),
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/greensc.jpg'),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.all(14.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        validator: (val) =>
                            val.isEmpty ? 'Nhập Email của bạn' : null,
                        onChanged: (val) {
                          setState(() => _email = val);
                        },
                        decoration: textInputDecoration.copyWith(
                            icon: Icon(
                              Icons.alternate_email,
                              color: Colors.red,
                            ),
                            labelText: 'Email',
                            hintText: 'tendangnhap@email.com'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            TextFormField(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              validator: (val) => val.length < 6
                                  ? 'Nhập password của bạn dài hơn 6 kí tự'
                                  : null,
                              obscureText: !_showPass,
                              onChanged: (val) {
                                setState(() => _password = val);
                              },
                              decoration: textInputDecoration.copyWith(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.red,
                                  ),
                                  labelText: 'Password',
                                  hintText: 'Nhập mật khẩu'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: onTapShowPassword,
                                  child: Text(
                                    _showPass ? "Ẩn" : "Hiện",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            )
                          ]),
                      Spacer(),
                      RaisedButton(
                        color: Colors.red,
                        child: Text(
                          "Đăng Nhập",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            //setState(() => loading = true);
                            await callLogin();
                            if (result == '200') {
                              print('Returncode = $result cho phép login');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LobbyList()));
                            } else {
                              setState(() {
                                _error = 'Đăng nhập thất bại';
                                loading = false;
                              });
                            }
                          }
                        },
                        // onPressed: () async {
                        //   if (_formKey.currentState.validate()) {
                        //     setState(() => loading = true);
                        //     dynamic result =
                        //         await _auth.signin(_email, _password);
                        //     if (result == null) {
                        //       setState(() {
                        //         _error = 'Đăng nhập thất bại';
                        //         loading = false;
                        //       });
                        //     }
                        //   }
                        // }
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        _error,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //TODO
                            },
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(),
                                  color: Colors.red),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              //TODO
                            },
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(),
                                  color: Colors.red),
                              child: Icon(
                                Icons.chat,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }

  void onTapShowPassword() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
