//
//  RoomDetailViewController.swift
//  StudyRoomRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import Foundation
import UIKit

class RoomDetailViewController: UIViewController {
    var buildingname = ""
    var room: StudySpace?

    @IBOutlet weak var reviewContainer: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var chairsLabel: UILabel!
    @IBOutlet weak var tablesLabel: UILabel!
    @IBOutlet weak var outletsLabel: UILabel!

    @IBOutlet weak var fiveStarLabel: UILabel!
    @IBOutlet weak var fiveStarProgress: UIProgressView!
    @IBOutlet weak var fourStarLabel: UILabel!
    @IBOutlet weak var fourStarProgress: UIProgressView!
    @IBOutlet weak var threeStarLabel: UILabel!
    @IBOutlet weak var threeStarProgress: UIProgressView!
    @IBOutlet weak var twoStarLabel: UILabel!
    @IBOutlet weak var twoStarProgress: UIProgressView!
    @IBOutlet weak var oneStarLabel: UILabel!
    @IBOutlet weak var oneStarProgress: UIProgressView!
    
    @IBOutlet weak var oneStarImage: UIImageView!
    @IBOutlet weak var twoStarImage: UIImageView!
    @IBOutlet weak var fourStarImage: UIImageView!
    @IBOutlet weak var threeStarImage: UIImageView!
    @IBOutlet weak var fiveImage: UIImageView!
    @IBOutlet weak var totalReviewsLabel: UILabel!
    @IBOutlet weak var averageReviewsLabel: UILabel!
    
    @IBOutlet weak var showReviewsButton: UIButton!
    
    @IBOutlet weak var roomImageView: UIImageView!

    // Image navigation
    private var currentImageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRoomDetails()
        updateImageView()
    }


    private func setupRoomDetails() {
        if let room = room {
            nameLabel.text = room.name
            descriptionLabel.text = room.description
            chairsLabel.text = "Chairs: \(room.numChairs)"
            tablesLabel.text = "Tables: \(room.numTables)"
            outletsLabel.text = "Outlets: \(room.numOutlets)"
            reviewContainer.layer.borderWidth = 1.0
            reviewContainer.layer.borderColor = UIColor.black.cgColor
            reviewContainer.layer.cornerRadius = 8.0
            reviewContainer.layer.masksToBounds = true
            let totalReviews = room.reviews.count
            if totalReviews > 0 {
                var totalRating = 0
                for review in room.reviews {
                    totalRating += Int(review.rating)
                }
                let averageReview = (Double(totalRating) / Double(totalReviews))
                totalReviewsLabel.text = String(totalReviews) + " reviews"
                averageReviewsLabel.text = String(format: "%.02f", averageReview)
                if Double(1) <= averageReview {
                    oneStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 0.5 <= averageReview {
                    oneStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(2) <= averageReview {
                    twoStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 1.5 <= averageReview {
                    twoStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(3) <= averageReview {
                    threeStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 2.5 <= averageReview {
                    threeStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(4) <= averageReview {
                    fourStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 3.5 <= averageReview {
                    fourStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(5) <= averageReview {
                    fiveImage.image = UIImage(systemName: "star.fill")
                }
                else if 4.5 <= averageReview {
                    fiveImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
    
                let oneStarPercentage: Float = Float(room.reviews.filter({ $0.rating == 1 }).count)/Float(totalReviews)
                oneStarProgress.progress = oneStarPercentage
                let twoStarPercentage: Float = Float(room.reviews.filter({ $0.rating == 2 }).count)/Float(totalReviews)
                twoStarProgress.progress = twoStarPercentage
                let threeStarPercentage: Float = Float(room.reviews.filter({ $0.rating == 3 }).count)/Float(totalReviews)
                threeStarProgress.progress = threeStarPercentage
                let fourStarPercentage: Float = Float(room.reviews.filter({ $0.rating == 4 }).count)/Float(totalReviews)
                fourStarProgress.progress = fourStarPercentage
                let fiveStarPercentage: Float = Float(room.reviews.filter({ $0.rating == 5 }).count)/Float(totalReviews)
                fiveStarProgress.progress = fiveStarPercentage
                oneStarLabel.text = "1 Star: " + String(room.reviews.filter({ $0.rating == 1 }).count)
                twoStarLabel.text = "2 Star: " + String(room.reviews.filter({ $0.rating == 2 }).count)
                threeStarLabel.text = "3 Star: " + String(room.reviews.filter({ $0.rating == 3 }).count)
                fourStarLabel.text = "4 Star: " + String(room.reviews.filter({ $0.rating == 4 }).count)
                fiveStarLabel.text = "5 Star: " + String(room.reviews.filter({ $0.rating == 5 }).count)
            }
        }
    }

    private func updateImageView() {
        if let room = room, !room.images.isEmpty {
            let imageString = room.images[currentImageIndex].base64Image
            roomImageView.image = UIImage.fromBase64(imageString)
        } else {
            roomImageView.image = UIImage(named: "NoImage")
        }
    }

    @IBAction func previousImage(_ sender: UIButton) {
        if let room = room, !room.images.isEmpty {
            currentImageIndex = (currentImageIndex - 1 + room.images.count) % room.images.count
            updateImageView()
        }
    }

    @IBAction func nextImage(_ sender: UIButton) {
        if let room = room, !room.images.isEmpty {
            currentImageIndex = (currentImageIndex + 1) % room.images.count
            updateImageView()
        }
    }
    
    @IBAction func uploadImageButtonTapped(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self

        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)

        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            } else {
                print("Camera not available")
            }
        }))

        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))

        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(actionSheet, animated: true, completion: nil)
    }
    
    private func fetchUpdatedImagesForRoom() {
        guard let room = room else { return }

        let updatedImages = SQLiteStructure.shared.getImages(SQLiteStructure.shared.getRoomID(room.name))
        self.room?.images = updatedImages

        updateImageView()
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRoomReviews",
           let destinationVC = segue.destination as? ReviewsViewController,
           let room = room {
            destinationVC.reviewsArray = room.reviews
        }
        if segue.identifier == "addRoomReview" {
            if let destinationVC = segue.destination as? addReviewsViewController {
                print("Performing segue with room: \(room)")
                destinationVC.roomname = room!.name
            }
        }
    }
}

extension UIImage {
    static func fromBase64(_ base64String: String) -> UIImage? {
        guard let imageData = Data(base64Encoded: base64String, options: .ignoreUnknownCharacters) else {
            return nil
        }
        return UIImage(data: imageData)
    }
}

extension RoomDetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let room = room, let selectedImage = info[.originalImage] as? UIImage else {
            picker.dismiss(animated: true, completion: nil)
            return
        }

        let base64String = convertImageToBase64String(img: selectedImage)
        
//        print("base64string: ", base64String)

        if let _ = SQLiteStructure.shared.insertImage(base64Image: base64String, room: SQLiteStructure.shared.getRoomID(room.name)) {
            
            fetchUpdatedImagesForRoom()
            
        } else {
            
            //handle errrors
            
        }

        picker.dismiss(animated: true, completion: nil)
    }

    private func convertImageToBase64String(img: UIImage) -> String {
        return img.jpegData(compressionQuality: 1.0)?.base64EncodedString() ?? ""
    }
}

