import 'package:process_plugin/mixin/process_mixin.dart';
import 'package:process_run/which.dart' as pw;

abstract class RunProcess with ProcessMixin {
  ShellOptions? _options;
  String command;

  Shell? _shell;

  Shell get shell => _shell ??= initShell(_options);

  RunProcess(this.command, {ShellOptions? options}) {
    _options = options;
  }

  Shell initShell(ShellOptions? options);

  String? get whichSync => pw.whichSync(command);

  Future<String?> get which => pw.which(command);
}
