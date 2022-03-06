// Copyright (c) 2022, Shelby VandenHoek
// https://shelbyvandenhoek.xyz
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:osc/osc.dart';

void sendMessage({
  required InternetAddress destination,
  required int port,
  required String command,
}) {
  final arguments = <Object>[];

  final message = OSCMessage(command, arguments: arguments);
  if (kDebugMode) {
    print(message.toString());
  }
  RawDatagramSocket.bind(InternetAddress.anyIPv4, 0).then((socket) {
    final bytes = message.toBytes();
    socket.send(bytes, destination, port);
  });
}
