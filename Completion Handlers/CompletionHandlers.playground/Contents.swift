import Cocoa

// this how callbacks work in swift
// if our createUser method accepted a function as one of the parameters
// we can call that function once the time consuming process has finished
// if we don't add the "Void" return type to the completion parameter, the compiler will assume that we are sending a tuple

class Firebase {
    func createUser (username : String, password : String, completion: (Bool, Int) -> Void){
        
        // does something time consuming (may block UI)
        sleep(5)
        
        let isSucces = true
        let userId = 123
        completion(isSucces,userId)
        
    }
}

class MyApp {
    
    func registerButtonPressed () {
        print("button pressed !")
        let firebase = Firebase()
        firebase.createUser(username: "Abdulsalam", password: "Mansour") {
            (isSuccess, userId) in
            
            print("registration is successful: \(isSuccess)")
            print("userId is \(userId)")
        }
    }
    
}

let myApp = MyApp()
myApp.registerButtonPressed()
