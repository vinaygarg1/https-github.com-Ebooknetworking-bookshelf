//
//  FirstViewController.swift
//  bs
//
//  Created by John on 26/08/18.
//  Copyright © 2018 ebooknetworking. All rights reserved.
//

import UIKit
struct Book: Decodable {
    let asin: String?
    let nm: String?
    let au: String?
    let imageUrl: String?
    
    
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("11");
     
    
    
    
     URLSession.shared.dataTask(with: URL(string: "https://ebooknetworking.net/ios/fav.php")!) { data, response, error in
        
    
    
    guard let data = data else { return }
    
    
    do {
    //                let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
    //                print(websiteDescription.name, websiteDescription.description)
    
    let courses = try JSONDecoder().decode([Book].self, from: data)
    print(courses)
    
    
    
    } catch let jsonErr {
    print("Error serializing json:", jsonErr)
    }
    
    
    
    }.resume()
    
    //        let myCourse = Course(id: 1, name: "my course", link: "some link", imageUrl: "some image url")
    //        print(myCourse)
}

}


