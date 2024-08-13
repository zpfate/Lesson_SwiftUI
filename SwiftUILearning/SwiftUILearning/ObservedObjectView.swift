//
//  ObservedObjectView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI


class UserData: ObservableObject {
    @Published var name: String = ""
}

struct ObservedObjectView: View {
    
    /**
     @ObservedObject用于观察引用类型对象的变化，并在对象更改时更新视图.
     它用于管理外部对象的状态，并在该对象发生变化时自动刷新视图。
     
     如果说 @State 是全自动驾驶的话，ObservableObject 就是半自动，它需要一些额外的声明。ObservableObject 协议要求实现类型是 class，它只有一个需要实现的属性：objectWillChange。在数据将要发生改变时，这个属性用来向外进行“广播”，它的订阅者 (一般是 View 相关的逻辑) 在收到通知后，对 View 进行刷新。

     创建ObservableObject后，实际在View里使用时，我们需要将它声明为@ObservedObject。这也是一个属性包装，它负责通过订阅 objectWillChange 这个“广播”，将具体管理数据的 ObservableObject和当前的View关联起来。如果属性定义时加了@Published包装器，就可以省略objectWillChange，系统已经自动帮你实现了objectWillChange，@ObservedObject修饰的必须是遵守ObservableObject协议的class对象，class对象的属性只有被@Published修饰时，属性的值修改时，才能被监听到.
     */
    
    @ObservedObject var user = UserData()
    
    var body: some View {
        
        TextField("Enter your name", text: $user.name).border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/).padding()
        Text("Hello, \(user.name)")
    }
}

#Preview {
    ObservedObjectView()
}
