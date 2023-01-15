import 'package:flutter_test/flutter_test.dart';
import 'package:process_plugin/adb_process.dart';

import 'package:process_plugin/process_plugin.dart';
import 'package:process_run/shell.dart';

void main() {

  test('process',()async{
    var adb = AdbProcess(options: ShellOptions(throwOnError: false));
    var version = await adb.version();
    print('version stderr: ${version.stderr}');
    print('version stdout: ${version.stdout}');
    print('version exitCode: ${version.exitCode}');
    print('version pid: ${version.pid}');
    print('version errLines: ${version.errLines}');
    print('version errText: ${version.errText}');
    print('version outLines: ${version.outLines}');
    print('version outText: ${version.outText}');
  });

  // test('adds one to input values', () {
  //   final calculator = Calculator();
  //   expect(calculator.addOne(2), 3);
  //   expect(calculator.addOne(-7), -6);
  //   expect(calculator.addOne(0), 1);
  // });
}
