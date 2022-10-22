

import UIKit

class CustomCell: UITableViewCell {

    var actorsImage = UIImageView()
    var actorsNameLabel = UILabel()
    var stackView = UIStackView()
    
    var filmName = UILabel()
    var filmRelease = UILabel()
    var filmAwards = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(actorsImage)
        addSubview(actorsNameLabel)
        
        addSubview(filmName)
        addSubview(filmRelease)
        addSubview(filmAwards)
        
        configureActorsImageView()
        configureActorsNameLabel()
        setImageConstraints()
        setLabelConstraints()
        
        
        setFilmNameConstraints()
        setFilmReleaseConstraints()
        setFilmAwardsConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureActorsImageView() {
        actorsImage.clipsToBounds = true
    }
    
    func configureActorsNameLabel() {
        actorsNameLabel.numberOfLines = 0
        actorsNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    
    func setImageConstraints() {
        actorsImage.translatesAutoresizingMaskIntoConstraints = false
        actorsImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        actorsImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        actorsImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        actorsImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setLabelConstraints() {
        actorsNameLabel.translatesAutoresizingMaskIntoConstraints = false
        actorsNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        actorsNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 110).isActive = true
        actorsNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setFilmNameConstraints() {
        filmName.translatesAutoresizingMaskIntoConstraints = false
        filmName.topAnchor.constraint(equalTo: topAnchor).isActive = true
        filmName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        filmName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    
    func setFilmReleaseConstraints() {
        filmRelease.translatesAutoresizingMaskIntoConstraints = false
        filmRelease.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        filmRelease.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        filmRelease.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    func setFilmAwardsConstraints() {
        filmAwards.translatesAutoresizingMaskIntoConstraints = false
        filmAwards.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        filmAwards.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        filmAwards.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    
    func set(actors: Actors) {
        actorsImage.image = actors.image
        actorsNameLabel.text = actors.actor
    }
    
    func set(films: Films) {
        filmName.text = films.name
        filmRelease.text = films.releaseDate
        filmAwards.text = films.numbOfAwards
    }
}
