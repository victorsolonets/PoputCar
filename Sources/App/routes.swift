import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
  router.get { req -> Future<View> in
    return LocationPoint.query(on: req).all().flatMap(to: View.self) {
      locations in
      return try req.view().render("wellcome", ["locations":locations])
    }
  }
  
  router.post(LocationPoint.self, at: "addLocation") {req, locationPoint -> Future<Response> in
    return locationPoint.save(on: req).map(to: Response.self) { location in
      return req.redirect(to: "/")
    }
  }
  
  router.get("locations") {req -> Future<[LocationPoint]> in
    return LocationPoint.query(on: req).sort(\.name).all()
  }
  
  router.post(Order.self, at: "order") { req, order -> Future<Order> in
    return order.save(on: req)
  }
}

