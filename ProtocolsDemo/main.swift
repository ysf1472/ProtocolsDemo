protocol canFly {
    func fly()
}
//create a defualt value for the fly protocol so that you do not need to call them all the time from structs or classes
extension canFly{
    func fly(){
        print("")
    }
}
class Bird  {
    var isFemale = true
    func layEgg() {
        if isFemale{
            print("The bird makes a new bird in a shell.")
        }
    }
   
}
class Eagle : Bird , canFly {
    // eagle should work fine Since we have a default code (extention) for protocol
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the sky.")
//    }
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}
class Penguin : Bird {
    func swim(){
        print("The penguin can paddles through the water.")
    }
}
class Engine{
    func accelerate(){
        print("Engine starts to warm up!")
    }
}
class Plane :Engine ,canFly{
    func fly(){
        print("Engine starts to warm up! to fly ")
    }
}
struct Incest : canFly{
    func fly() {
        print("A Bug can fly as well!")
    }
    
}
struct flyingMuseum{
    func flyingDemo(flyingObject : canFly){
        flyingObject.fly()
    }
}
let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()
let penguin = Penguin()
penguin.swim()
let myplane = Plane()
myplane.fly()
myplane.accelerate()
let bugs = Incest()
bugs.fly()
let museum = flyingMuseum()
museum.flyingDemo(flyingObject: bugs)
