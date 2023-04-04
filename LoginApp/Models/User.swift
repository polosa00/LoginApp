//
//  User.swift
//  LoginApp
//
//  Created by Александр Полочанин on 3.04.23.
//

struct User {
    let user: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            user: "Alexey",
            password: "1111",
            person: Person(
                name: "Sasha",
                surname: "Polochanin",
                personData: Data(
                    nikName: "Alex",
                    image: "Alex_POL_John",
                    instagram: "alex.polochanin",
                    location: "Minsk",
                    description: "Bla-bla-bla"
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    let personData: Data
   
}

struct Data {
    let nikName: String
    let image: String
    let instagram: String
    let location: String
   
    let description: String
    
}
