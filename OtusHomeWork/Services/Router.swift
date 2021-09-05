//
//  Router.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 05.09.2021.
//

import Combine

final class Router: ObservableObject {

    @Published var selectedTab = 0
    @Published var needToOpen = false

}
