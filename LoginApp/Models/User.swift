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
                    aboutMe:
"""
Родился в Республике Беларусь. Мне 32 года. С детства привлекает информатика. Но решил сменить профессию только сейчас. Уверен, что этот тернистый путь будет осилен!
""",
                    thanks:
"""
Хочется выразить слова благодарности школе SwiftBook, особенно Алексею!!! С таким наставником любой путь будет осилен 🧗🏻‍♂️🏁!!
"""
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
    let aboutMe: String
    let thanks: String
}
