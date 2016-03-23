//: Playground - noun: a place where people can play

import UIKit

var str = "Hello plastic"
//swfit 是一种静态类型化语言，这就是说，swift编译器需要确切地了解你的代码正在处理什么类型的信息，这意味着你不能将字符串传给打算用来处理日期的代码 ，而在 oc中可以。
//利用泛型在编写代码时不需要准确地知道这些信息的类型，数组就是泛型的示例，数组实际上并没有对自己存储的数据进行任何操作，之士将他们存储在一个有序的集合中，事实上数组就是泛型。
//要创建一个泛型类型，可以像通常一样为对象命名，然后在两个<>之间制定任意泛型类型，传统上使用的术语是T但我们完全可以根据自己的意愿使用任何词语
class Tree <T> {
    //T现在可以是任何一种类型
    var value : T
    var children : [Tree <T>] = []
    init (value : T) {
        self.value = value
    }
    func addChild(value : T) -> Tree <T> {
        let newChild = Tree<T>(value: value)
        children.append(newChild)
        return newChild
    }
}
//整数树
let intergerTree = Tree<Int>(value: 5)
intergerTree.addChild(10)
let newInt =  intergerTree.addChild(5)
print(newInt.value)


//字符串树
let stringTree = Tree<String>(value: "tree")
stringTree.addChild("yes")
print(stringTree.value)








