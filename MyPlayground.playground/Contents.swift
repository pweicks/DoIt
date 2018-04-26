class Person {
    var name = ""
    var age = 0
    
    func info() {
        print("This person's name is \(name) and they are \(age) years old.")
    }
}

var person1 = Person()
person1.info()
person1.name = "Parker"
person1.age = 24

var person2 = Person()

person2.name = "Nick"
person2.age = 27

person1.info()
person2.info()
