//
//  User.swift
//  LoginApp
//
//  Created by Elena Sharipova on 04.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Alexey",
            password: ")",
            person: Person(
                name: "Elena",
                surname: "Sharipova",
                photo: "ElenasPhoto",
                company: "Self-employed",
                department: "Development",
                position: "Web developer",
                description: "I’ve always been someone who has both a creative and a logical side (literature and math were my favourite subjects at school). It was interesting for me to create flyers and leaflets in photoshop and illustrator at my previous jobs. I also liked watching interactive maps in 2GIS with information entered by me into the database. When I discovered software development, I realised it would be the perfect fit 🔥. I could use my creative skills to design 🖼 and my knowledge to code 👩‍💻. I enjoy bringing ideas to life in apps 💻. In my spare time I enjoy travelling ✈️, reading, playing video games and learning something new. For last three years I've visited eight countries 🗺."
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let company: String
    let department: String
    let position: String
    let description: String
}
