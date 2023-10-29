//
//  GallaryViewController.swift
//  Roomie
//
//  Created by MacBook27 on 29/10/23.
//

import UIKit

struct GallaryImages {
    var images: String
    var labels: String
}

class GallaryViewController: UIViewController {

    static let identifier = "GallaryViewController"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    var ShowGallaryData = [
        GallaryImages(images: "Gallary1", labels: "Furnish your life with style & comfort"),
        GallaryImages(images: "Gallary2", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary3", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary4", labels: "Make Room for Better Living"),
        GallaryImages(images: "Gallary5", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary6", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary7", labels: "Make Room for Better Living"),
        GallaryImages(images: "Gallary8", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary9", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary10", labels: "Furnish your life with style & comfort"),
        
        GallaryImages(images: "Gallary1", labels: "Furnish your life with style & comfort"),
        GallaryImages(images: "Gallary2", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary3", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary4", labels: "Make Room for Better Living"),
        GallaryImages(images: "Gallary5", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary6", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary7", labels: "Make Room for Better Living"),
        GallaryImages(images: "Gallary8", labels: "Create your dream home with us"),
        GallaryImages(images: "Gallary9", labels: "Where comfort meets design"),
        GallaryImages(images: "Gallary10", labels: "Furnish your life with style & comfort")
    ]
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: GallaryTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: GallaryTableViewCell.identifier)
    }
}

extension GallaryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ShowGallaryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GallaryTableViewCell.identifier) as! GallaryTableViewCell
        cell.setData(data: ShowGallaryData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
