/// 本地文件路径
class PathUtils {
  PathUtils._();

  static String image(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.png';
    final path = 'assets/images/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String imageWithPath(String name, String filePath) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.png';
    final path = 'assets/images/$filePath/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String imageGif(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.gif';
    final path = 'assets/images/gif/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String emoji(String name, {bool needPath = false}) {
    if (name.trim() == ""){
      return name.trim();
    }
    final path = 'assets/emoji/';
    if (needPath) return path;
    final extension = '.png';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String json(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.json';
    final path = 'assets/jsons/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String video(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.mp4';
    final path = 'assets/videos/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String videoFijk(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.mp4';
    final path = 'asset:///assets/videos/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }

  static String audio(String name) {
    if (name.trim() == ""){
      return name.trim();
    }
    final extension = '.mp3';
    final path = 'assets/audios/';
    final splits = name.split('.');
    if (splits.length == 1) {
      name = '$name$extension';
    }
    if (name.contains(path)) {
      return name;
    }
    return '$path$name';
  }
}
