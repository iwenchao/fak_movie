# fak_movie

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
[Flutter中文网](https://flutterchina.club/widgets-intro/)

1. Widget与State的关系
    widget即为视图，state即为数据，视图相关的状态管理
    1. widget生命周期
        ```
        调用build创建一个新的widget实例，插入视图tree中；然后会继续调用widget的createState为该视图绑定state；

        当widget以及父级重建时，父级将会创建一个新的widget实例，但是与之已绑定的state不会重建，而是会将新的widget
        绑定到已有的state（其中的widget属性）

        didUpdateWidget：state的widget属性发生变更的回调函数


        在StatefulWidget调用createState之后，框架将新的状态对象插入树中，然后调用状态对象的initState。
        子类化State可以重写initState，以完成仅需要执行一次的工作。 例如，您可以重写initState以配置动画或订阅platform services。
        initState的实现中需要调用super.initState。

        当一个状态对象不再需要时，框架调用状态对象的dispose。 您可以覆盖该dispose方法来执行清理工作。
        例如，您可以覆盖dispose取消定时器或取消订阅platform services。 dispose典型的实现是直接调用super.dispose。

        ```

2. key
    1. key在构建相同类型的widget的多个实例时很有用，比如 列表

3. 布局


