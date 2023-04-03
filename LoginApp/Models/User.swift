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
                name: "Alex",
                surname: "Polochannin",
                description: "Bla-bla-bla"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    var fullname: String {
        "\(name) \(surname)"
    }
    let description: String
    
}
