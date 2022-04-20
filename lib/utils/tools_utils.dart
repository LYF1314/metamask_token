String favoriteCountToText(int count) {
  if (count <= 0) {
    return '0';
  }
  if (count < 1000) {
    return '$count';
  }
  if (count < 10000) {
    var showCount = count / 1000;
    return formatNum(showCount, 1) + 'k';
  }
  if (count < 1000000) {
    var showCount = count / 10000;
    return formatNum(showCount, 1) + 'w';
  }
  if (count < 100000000) {
    var showCount = count / 1000000;
    return formatNum(showCount, 1) + 'm';
  }
  var showCount = count / 100000000;
  return formatNum(showCount, 1) + 'y';
}

String formatNum(double num, int postion) {
  if ((num.toString().length - num.toString().lastIndexOf(".") - 1) < postion) {
    //小数点后有几位小数
    return num.toStringAsFixed(postion)
        .substring(0, num.toString().lastIndexOf(".") + postion + 1)
        .toString();
  } else {
    return num.toString()
        .substring(0, num.toString().lastIndexOf(".") + postion + 1)
        .toString();
  }
}

String doubleToTimeStr(double seconds) {
  if (seconds < 3600) {
    var minute = '${(seconds / 60).toInt().toString().padLeft(2, '0')}';
    var second = '${(seconds % 60).toInt().toString().padLeft(2, '0')}';
    return '$minute:$second';
  } else {
    var hour = '${(seconds / 3600).toInt().toString().padLeft(2, '0')}';
    var minute =
        '${((seconds % 3600) / 60).toInt().toString().padLeft(2, '0')}';
    var second = '${(seconds % 60).toInt().toString().padLeft(2, '0')}';
    return '$hour:$minute:$second';
  }
  return "00:00";
}
