//
//  ViewController.swift
//  FavoritesRoulette
//
//  Created by Admin on 15.10.2026.
//

import UIKit
struct Favorite {
    let title: String
    let description: String
    let imageName: String
}
class ViewController: UIViewController {
    let movies: [Favorite] = [
        Favorite(title: "Interstellar", description: "A journey through space to save humanity.", imageName: "interstellar"),
        Favorite(title: "Titanic", description: "A love story aboard a famous ship.", imageName: "titanic"),
        Favorite(title: "Avatar", description: "An adventure on the planet Pandora.", imageName: "avatar"),
        Favorite(title: "Inception", description: "A team enters people's dreams.", imageName: "inception"),
        Favorite(title: "The Matrix", description: "A hacker discovers a hidden reality.", imageName: "matrix"),
        Favorite(title: "Harry Potter", description: "A young wizard discovers his destiny.", imageName: "harrypotter"),
        Favorite(title: "The Dark Knight", description: "Batman faces the Joker.", imageName: "darkknight"),
        Favorite(title: "Forrest Gump", description: "An extraordinary life journey.", imageName: "forrestgump"),
        Favorite(title: "The Shawshank Redemption", description: "A story of hope and friendship.", imageName: "shawshank"),
        Favorite(title: "Gladiator", description: "A Roman general fights for justice.", imageName: "gladiator")
    ]
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func spinButtonTapped(_ sender: UIButton) {
        if let randomMovie = movies.randomElement() {
            movieLabel.text = randomMovie.title
            movieImageView.image = UIImage(named: randomMovie.imageName)
            movieDescriptionLabel.text = randomMovie.description
        }
    }
}
