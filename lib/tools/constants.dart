import 'package:flutter/material.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/model/country.dart';
import 'package:reewer/tools/assets.dart';

class Constants {
  static List<Country> countries(BuildContext context) => [
        Country('israel', S.of(context).israel, Assets.israelFlag),
        Country('england', S.of(context).england, Assets.englandFlag),
        Country('france', S.of(context).france, Assets.franceFlag),
        Country('germany', S.of(context).germany, Assets.germanyFlag),
      ];
}
