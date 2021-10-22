# swiftUI的基础教程
Divider()是分割线
Spacer()是空间填充方法
padding就是内边距，给定一个参考边（左边为 leading），然后距离这个边是多少 具体内容可以看印象笔记
```
HStack{
        Text("joshua Tree National Park")
        Spacer()
        Text("california")
    }
    .font(.subheadline).foregroundColor(.secondary)
```
上面这一段代码等于下面这一段的代码
``` 
    HStack{
        Text("joshua Tree National Park")
            .font(.subheadline).foregroundColor(.secondary)
        Spacer()
        Text("california")
            .font(.subheadline).foregroundColor(.secondary)
    }
```


**VStack(alignment: .leading)** 这个大的框架中需要设定内容的倚靠方式


**@resultBuilder struct ViewBuilder**
>You typically use ViewBuilder as a parameter attribute for child view-producing closure parameters, allowing those closures to provide multiple child views. For example, the following contextMenu function accepts a closure that produces one or more views via the view builder.

```
func contextMenu<MenuItems: View>(
        @ViewBuilder menuItems: () -> MenuItems
    ) -> some View
```
Clients of this function can use multiple-statement closures to provide several child views, as shown in the following example:
```
myView.contextMenu {
    Text("Cut")
    Text("Copy")
    Text("Paste")
    if isSymbol {
        Text("Jump to Definition")
    }
}
```

Map(coordinateRegion: $region).onAppear{setRegion(coordinate)}

map.onAppear是一个方法，不使用里面的参数，直接调用设置方法，证明 在struct中，不可以给私有的静态变量直接赋值
    var coordinate:CLLocationCoordinate2D
    @State private var region =  MKCoordinateRegion()
    var body: some View
    {
        Map(coordinateRegion: $region).onAppear{setRegion(coordinate)}
        
    }
