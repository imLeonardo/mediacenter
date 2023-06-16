import 'dart:io';

final isAndroid = Platform.isAndroid;
final isIOS = Platform.isIOS;
final isWindows = Platform.isWindows;
final isMacOS = Platform.isMacOS;
final isLinux = Platform.isLinux;
final isFuchsia = Platform.isFuchsia;
final isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;
var isWeb = false;
var isWebDesktop = false;