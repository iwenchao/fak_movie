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

3. [布局](https://flutterchina.club/tutorials/layout/)
    1. widgets是用于构建UI的类，用于布局和ui元素，通过简单的widget来构建复杂的widget；甚至应用本身就是一个widget
    2. 常见的布局：
        1. 垂直或水平排列的widget 行Row，列 Column；行列都需要子widget
        2. Container
        3. GridView
        4. ListView
        5. Stack
        6. Material Components : Card,ListTile,CheckBox，DropdownButton,IconButton,Switch,Radio,Slider

4. [交互](https://flutterchina.club/tutorials/interactive/)
    1. Stateful vs Stateless widgets
        1. 需要交互的，并且根据交互产生状态变化，则Stateful
        2. widget的state常用来保存widget的数据，一个widget对于一个state，widget更新后会产生新的widget，新的widget重新与原来的state进行绑定
        3. 有状态的Widget，需要两个类 StatefulWidget与State；状态对象包含widget的状态和build方法；当widget状态变化时，状态对象调用setState，告诉框架重绘widget

    2. 状态管理：取决于实际的需求
        1. widget管理自己的状态
        2. 父widget管理子widget的状态
        3. 混搭管理


