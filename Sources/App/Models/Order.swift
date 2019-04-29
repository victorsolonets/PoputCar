//
//  Order.swift
//  App
//
//  Created by admin on 4/29/19.
//

import Foundation
import Vapor
import FluentSQLite

struct Order: Content, SQLiteModel, Migration {
  var id: Int?
  var driverId: Int
  var placesCount: Int
  var price: Int
  var description: String?
  var customersIds: [Int]?
  var roadStart: LocationPoint?
  var roadEnd: LocationPoint?
  var date: Date
}
