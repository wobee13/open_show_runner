// Copyright (c) 2022, Shelby VandenHoek
// https://shelbyvandenhoek.xyz
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'osc_state.dart';

class OscCubit extends Cubit<OscState> {
  OscCubit() : super(OscInitial());
}
