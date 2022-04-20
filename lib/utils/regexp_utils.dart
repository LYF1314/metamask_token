///正则表达式
class RegExpUtils {
  RegExpUtils._();

  /// 时长正则
  static RegExp duration = RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$');

  /// 颜色正则
  static RegExp color = RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$');
}
