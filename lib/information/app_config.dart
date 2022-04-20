
class AppConfig {
  //一个静态私有变量
  static final AppConfig _instance = new AppConfig._internal();
  //工厂构造方法
  late factory AppConfig() {
    return _instance;
  }

  //实际构造,被私有化,避免被外部访问
  AppConfig._internal() {
    //构造时要做的事
    appName = "MyApp";

  }

  //其它业务逻辑
  String? appName;

}