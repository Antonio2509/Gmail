//
//  TableViewCell.swift
//  Gmail
//
//  Created by Porfirio on 26/07/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var botonSpam: UIButton!
    @IBOutlet weak var botonStar: UIButton!
    @IBAction func buttonStar(_ sender: UIButton) {
        
        sender.tintColor = sender.tintColor == UIColor.yellow ? UIColor.blue : UIColor.yellow

    }
    @IBAction func buttonSpam(_ sender: UIButton) {
        sender.tintColor = sender.tintColor == UIColor.gray ? UIColor.blue : UIColor.gray
    }
    @IBAction func buttonLeido(_ sender: UIButton) {
        
    }
    @IBOutlet weak var emisorLabel: UILabel!
    @IBOutlet weak var correoEmisorLabel: UILabel!
    @IBOutlet weak var asuntoLabel: UILabel!
    @IBOutlet weak var mensajeLabel: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    
    
            
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func setCellData(_ add: Mail){
        
        emisorLabel.text = add.emisor
        correoEmisorLabel.text = add.correoEmisor
        asuntoLabel.text = add.asunto
        mensajeLabel.text = add.mensaje
        horaLabel.text = add.hora
        
        if add.destacado == true{
            botonStar.tintColor = .yellow
        }else{
            botonStar.tintColor = .blue
        }
        
        if add.spam == true{
            botonSpam.tintColor = .gray
        }else{
            botonSpam.tintColor = .blue
        }
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


