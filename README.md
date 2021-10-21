# Landmark

 >
    HStack{
        Text("joshua Tree National Park")
        Spacer()
        Text("california")
    }
    .font(.subheadline).foregroundColor(.secondary)
上面这一段代码等于下面这一段的代码
>   
    HStack{
        Text("joshua Tree National Park")
            .font(.subheadline).foregroundColor(.secondary)
        Spacer()
        Text("california")
            .font(.subheadline).foregroundColor(.secondary)
    }


Divider()是分割线
Spacer()是空间填充方法
padding就是内边距，给定一个参考边（左边为 leading），然后距离这个边是多少 具体内容可以看印象笔记

