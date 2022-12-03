//
//  Services.swift
//  ContactList
//
//  Created by Артём on 01.12.2022.
//

import Foundation


class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "Арнольд", "Гера","Алиса",
        "Аня", "Маша", "Амира",
        "Гефест", "Константин", "Виктор",
        "Афина"
    ]
    
    var subnames = [
        "Минаев", "Озаринов", "Клеопатрова", "Зайчикова",
        "Гамбург", "Рюрик", "Вибунов",
        "Гвоздиков", "Теплицин", "Князева"
    ]
    
    var emails = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    var phones = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072", "825654134", "645898473",
        "432349845", "459477625"
    ]
    
    private init() {}
    
}
