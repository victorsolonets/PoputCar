//
//  LocationPoint.swift
//  App
//
//  Created by admin on 4/29/19.
//

import Foundation
import Vapor
import FluentSQLite

struct LocationPoint: Content, SQLiteModel, Migration {
  var id: Int?
  var name: String
  var latitude: Double
  var longitude: Double
}
