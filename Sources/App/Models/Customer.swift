//
//  Customers.swift
//  App
//
//  Created by admin on 4/29/19.
//

import Foundation
import Vapor
import FluentSQLite

struct Customer: Content, SQLiteModel, Migration {
  var id: Int?
  var firstName: String?
  var lastName: String?
  var nickName: String
}
