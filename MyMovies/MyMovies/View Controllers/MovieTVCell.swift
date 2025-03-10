//
//  MovieTVCell.swift
//  MyMovies
//
//  Created by John Pitts on 6/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import CoreData

class MovieTVCell: UITableViewCell {

    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let title = movieTitleLabel.text else { return }
        let movie = Movie(title: title)
        movieController.put(movie: movie)

        // commenting this out below bc I thinkit already gets done inside "put"
//        do {
//            let moc = CoreDataStack.shared.mainContext
//            try moc.save()
//        } catch {
//            NSLog("Error saving movie to CoreData mainContext: \(error)")
//        }
    }
    
//    private func updateViews() {
//        guard let movie = movieRepresentation else { return }
//
//        movieTitleLabel.text = movie.title
//
//    }
    
    //var movie: Movie?
    
    var movieController = MovieController()  // i'm not sure this is the right thing to do, but sure seems like it

//    var movieRepresentation: MovieRepresentation?

    @IBOutlet weak var movieTitleLabel: UILabel!
}
