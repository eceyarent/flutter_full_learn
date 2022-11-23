import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  Future<void> toShare(Uri path) async {
    await launchUrl(path);
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownLoadException();

    return true;
  }

  void smsShare() {}
}

class SMSDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownLoadException();

    print('a');

    return true;
  }

  @override
  Future<void> toShare(Uri path) async {
    await launchUrl(Uri.parse('sms:$path'));
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

class VeliDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    throw UnimplementedError();
  }
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}
