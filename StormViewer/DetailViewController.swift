//
//  DetailViewController.swift
//  StormViewer
//
//  Created by IACD-022 on 2022/05/02.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: (name: String, indexPos: Int, arraySize: Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad.name)
            title = "Picture \(imageToLoad.indexPos) of \(imageToLoad.arraySize)"
        }
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
