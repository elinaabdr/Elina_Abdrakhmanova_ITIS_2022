
import UIKit

class AcademyAwardsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let stackView = UIStackView()
    var tableView = UITableView()
    var actors: [Actors] = []
    var films: [Films] = []
    
    struct Cells {
        static let customCell = "CustomCell"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Academy Awards"
        actors = fetchData()
        films = fetchData()
        configureTableView()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        if section == 0 {
            label.text = ""
        } else {
            label.text = ""
        }
        stackView.addArrangedSubview(label)
        label.font = .monospacedDigitSystemFont(ofSize: 20, weight: .semibold)
        
        return stackView
    }
    
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        
        tableView.rowHeight = 100
        tableView.pin(to: view)
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: CellIdentifier.actors.rawValue)
        tableView.register(CustomCell.self, forCellReuseIdentifier: CellIdentifier.films.rawValue)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        if section == 0 {
            return actors.count
        } else {
            return films.count
        }
        
    }
    
    
    enum CellIdentifier: String {
        case actors
        case films
    }
 
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell: UITableViewCell
            
            if let dequeueReusableCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.actors.rawValue) {
                cell = dequeueReusableCell
                
            } else {
                cell = UITableViewCell(style: .default, reuseIdentifier: CellIdentifier.actors.rawValue)
            }
            let actors = actors[indexPath.row]
            
            var configuration = UIListContentConfiguration.valueCell()
            configuration.text = actors.actor
            
            if indexPath.row == 1{
                configuration.secondaryText = "Joker"
            }
            if indexPath.row == 3{
                configuration.secondaryText = "Forest Gump"
            }
            
            configuration.image = actors.image
            cell.contentConfiguration = configuration
            
            return cell
            
        } else {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.films.rawValue, for: indexPath) as? CustomCell else{
                fatalError("Could not deque cell of type \(CustomCell.self)")
            }
            
            let film = films[indexPath.row]
            cell.set(films: film)
            return cell
        }
    }
}

extension AcademyAwardsViewController {
    func fetchData() -> [Actors] {
        let actor1 = Actors(image: Images.forestWhitaker, actor: "Forest Whitaker")
        let actor2 = Actors(image: Images.joaquinPhoenix, actor: "Joaquin Phoenix")
        let actor3 = Actors(image: Images.matthewMcConaughey, actor: "Matthew McConaughey")
        let actor4 = Actors(image: Images.tomHanks, actor: "Tom Hanks")
        let actor5 = Actors(image: Images.leonardoDiCaprio, actor: "Leonardo DiCaprio")
        
        return [actor1, actor2, actor3, actor4, actor5]
    }
    
     func fetchData() -> [Films] {
         let film1 = Films(name: "Titanic", releaseDate: "1997", numbOfAwards: "1")
         let film2 = Films(name: "Green Book", releaseDate: "2018", numbOfAwards: "1")
         let film3 = Films(name: "La la lend", releaseDate: "2016", numbOfAwards: "0")
         let film4 = Films(name: "Hidden Figures", releaseDate: "2016", numbOfAwards: "0")
         let film5 = Films(name: "The Revenant", releaseDate: "2015", numbOfAwards: "0")
         let film6 = Films(name: "12 years a Slave", releaseDate: "2013", numbOfAwards: "1")
         let film7 = Films(name: "Slumdog millionaire", releaseDate: "2008", numbOfAwards: "1")
         let film8 = Films(name: "Babel", releaseDate: "2006", numbOfAwards: "0")
         let film9 = Films(name: "A beautiful mind", releaseDate: "2001", numbOfAwards: "1")
         let film10 = Films(name: "Mouilin Rouge!", releaseDate: "2001", numbOfAwards: "0")
        
        return[film1,film2,film3,film4,film5,film6,film7,film8,film9,film10]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let film = films[indexPath.row]
            print("name of film: \(film.name), release date: \(film.releaseDate), award of film: \(film.numbOfAwards)")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
}
