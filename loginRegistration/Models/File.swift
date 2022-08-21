//
//  File.swift
//  loginRegistration
//
//  Created by Anton Akhmedzyanov on 20.08.2022.
//
struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Anton",
             password: "12345",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let profesion: String
    let bio: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Anton",
               surname: "Akhmedzyanov",
               company: "Urbanyst",
               profesion: "Retail Network Manager",
               bio: """
               I am 33 years old. I live in Moscow region. In my free time like to go to gym and like to stydy swift language. Also I like to travel. 
""",
               photo: "its me")
    }
    
    
}
