//
//  User.swift
//  HWLogin
//
//  Created by 1234 on 18.02.2023.
//

struct UserInfo {
    let user: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let age: String
    let education: String
    let hobby: String
}

let gleb = UserInfo(
    user: "12",
    password: "123",
    person: Person(
        name: "Глеб Гунин",
        age: "30",
        education: "Психологическое и экономическое",
        hobby: "Путешествия, сноуборд, оружие, автомобили"
    )
)

