import 'package:cashkit/screens/splash/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrintScreen extends StatefulWidget {
  const FingerPrintScreen({super.key});

  @override
  State<FingerPrintScreen> createState() => _FingerPrintScreenState();
}

class _FingerPrintScreenState extends State<FingerPrintScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool _isSuccessed = false;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason: 'Please Put Your Finger',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }
    if (authenticated){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LogoScreen(),));
      // Here Put Where we should Push!!!!
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 30),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Current State: $_authorized\n'),
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: _authenticateWithBiometrics,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(_isAuthenticating ? 'Cancel' : 'Get In'),
                          const Icon(Icons.fingerprint),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
