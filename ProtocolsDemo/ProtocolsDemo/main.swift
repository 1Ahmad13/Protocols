// Solution : protocols

protocol canFly{
    func fly()
}

class Bird{
    var isFemale = true
    
    func layEggs(){
        if isFemale{
            print("The bird makes a new bird in a shell")
        }
    }
}


class Eagle: Bird, canFly {
    func fly() {
        print("The eagle glides in the air using air currents.")
    }
    func soar(){
        print("The eagle flaps its wings and lifts off into the sky. ")
    }
}


class penguin: Bird{
    func swim(){
        print("The penguin paddles through the water.")
    }
}

struct Airplane: canFly{
        func fly(){
            print("The plane uses its engine to lift off into the sky.")
        }
}
struct FlyingMuseum{
    func flyingDemo(flyingObject: canFly){
        flyingObject.fly()
    }
}

let museum = FlyingMuseum()
let myEagle = Eagle()
let myPenguin = penguin()
let myPlane = Airplane()


myEagle.fly()

myPlane.fly()

museum.flyingDemo(flyingObject: myEagle)

museum.flyingDemo(flyingObject: myPlane)
