//
//  TaskList.swift
//  RealmApp
//
//  Created by Alexey Efimov on 08.10.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import Foundation
import RealmSwift

class TaskList: Object { // модель списка задач, подписать под Object
    @Persisted var name = "" // название
    // persisted - значит нужны в базе данных.
    @Persisted var date = Date() // для сортировки
    @Persisted var tasks = List<Task>() // обозначаем список
}

class Task: Object { // основная модель
    @Persisted var name = "" // задача
    @Persisted var note = "" // заметка
    @Persisted var date = Date() // для возможности сортировки по дате
    // Тип Data() - начальное значение, текущая дата.
    @Persisted var isComplete = false // в какую секцию задачу, если True, то она выполнена.
}
