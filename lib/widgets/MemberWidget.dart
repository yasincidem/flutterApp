import 'package:flutter/material.dart';
import '../states/MemberState.dart';

class MemberWidget extends StatefulWidget {
  final String member;

  MemberWidget(this.member)  {
    if (member == null) {
      throw new ArgumentError("member of MemberWidget cannot be null. "
          "Received: '$member'");
    }
  }

  @override
  createState() => MemberState(member);
}