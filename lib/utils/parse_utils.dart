class ParseUtils {
  dynamic _data;

  ParseUtils(this._data);

  ParseUtils parse(String key) {
    if (_data != null && _data is Map<String, dynamic>) {
      var value = _data?[key];
      if (value != null) {
        return ParseUtils(value);
      }
    }
    return ParseUtils(null);
  }

  bool toBool([bool defaultValue = false]) {
    if (_data != null && _data is bool) {
      return _data;
    }
    return defaultValue;
  }

  bool parseBool([String? key, bool defaultValue = false]) {
    if (key != null) {
      return parse(key).toBool(defaultValue);
    } else {
      return toBool(defaultValue);
    }
  }

  num toNum([num defaultValue = 0]) {
    if (_data != null && _data is num) {
      return _data;
    }
    return defaultValue;
  }

  num parseNum([String? key, num defaultValue = 0]) {
    if (key != null) {
      return parse(key).toNum(defaultValue);
    } else {
      return toNum(defaultValue);
    }
  }

  int toInt([int defaultValue = 0]) {
    if (_data != null && _data is int) {
      return _data;
    }
    return defaultValue;
  }

  int parseInt([String? key, int defaultValue = 0]) {
    if (key != null) {
      return parse(key).toInt(defaultValue);
    } else {
      return toInt(defaultValue);
    }
  }

  double toDouble([double defaultValue = 0.0]) {
    if (_data != null && _data is double) {
      return _data;
    }
    return defaultValue;
  }

  double parseDouble([String? key, double defaultValue = 0.0]) {
    if (key != null) {
      return parse(key).toDouble(defaultValue);
    } else {
      return toDouble(defaultValue);
    }
  }

  String toString([String defaultValue = '']) {
    if (_data != null && _data is String) {
      return _data;
    }
    return defaultValue;
  }

  String parseString([String? key, String defaultValue = '']) {
    if (key != null) {
      return parse(key).toString(defaultValue);
    } else {
      return toString(defaultValue);
    }
  }

  List parseList([String? key]) {
    if (key != null) {
      return parse(key).parseList();
    } else {
      if (_data != null && _data is List) {
        return _data;
      }
      return [];
    }
  }

  int countOfItem() {
    if (_data is List) {
      return _data.count;
    }
    return 0;
  }

  ParseUtils itemAtIndex(int index) {
    if (_data is List) {
      if (_data.count > index) {
        return ParseUtils(_data[index]);
      }
    }
    return ParseUtils(null);
  }
}
