import UIKit
import PanModal


class a: UIViewController, PanModalPresentable {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        


        let titleContainer = UIView()
        titleContainer.backgroundColor = UIColor(red: 1, green: 0.8, blue: 0.15, alpha: 1)
        view.addSubview(titleContainer)
        titleContainer.translatesAutoresizingMaskIntoConstraints = false
        titleContainer.heightAnchor.constraint(equalToConstant: 75).isActive = true
        titleContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        titleContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
     
        let titleLabel = UILabel()
        titleLabel.text = "Tags & Details"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        titleContainer.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: titleContainer.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: titleContainer.centerYAnchor).isActive = true
        
        
        
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 298, height: 29)
        label.textColor = UIColor(red: 0.23, green: 0.23, blue: 0.24, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.text = "Add tags"
        
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.widthAnchor.constraint(equalToConstant: 298).isActive = true
        label.heightAnchor.constraint(equalToConstant: 29).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17).isActive = true
        label.topAnchor.constraint(equalTo: titleContainer.bottomAnchor, constant: 20).isActive = true
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 0, y: 0, width: 246, height: 15)
        label2.textColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
//        label2.font.withSize(13)
        label2.font = UIFont.systemFont(ofSize: 12, weight: .regular)

        label2.text = "So it will be more helpful to your friends"
        view.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
//        label2.widthAnchor.constraint(equalToConstant: 246).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 29).isActive = true
        label2.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 5).isActive = true
        label2.topAnchor.constraint(equalTo: titleContainer.bottomAnchor, constant: 20).isActive = true
        
        
        
        
        let stackView = UIStackView()
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        stackView.topAnchor.constraint(equalTo: titleContainer.bottomAnchor,constant: 10).isActive = true
        stackView.alignment = .bottom
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(label2)

        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var panScrollable: UIScrollView? {
        return nil
    }
//    var shortFormHeight: PanModalHeight {
//        return .contentHeight(45)
//    }
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(40)
    }
    var shortFormHeight: PanModalHeight {
        if hasLoaded {
            return .contentHeight(200)
        }
        return .maxHeight
    }
    
}
