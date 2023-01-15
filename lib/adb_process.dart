import 'dart:io';

import 'package:process_plugin/base/run_process.dart';
import 'package:process_plugin/mixin/process_mixin.dart';

class AdbProcess extends RunProcess {
  AdbProcess({super.options}) : super('adb');

  @override
  Shell initShell(options) => Shell(options: options);

  Future<ProcessResult> version({void Function(Process process)? onProcess}) {
    return shell.runExecutableArguments(command, ['version'],
        onProcess: onProcess);
  }
}
