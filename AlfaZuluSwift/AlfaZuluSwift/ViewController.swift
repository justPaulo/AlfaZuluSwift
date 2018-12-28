//
//  ViewController.swift
//  AlfaZuluSwift
//
//  Created by Paulo on 23/12/2018.
//  Copyright © 2018 Paulo A. Nascimento. All rights reserved.
//

import Cocoa

class ViewController: NSViewController
{
    @IBOutlet weak var inputTextField: NSTextField!
    @IBOutlet weak var infoTextLabel: NSTextField!
    @IBOutlet weak var outputTextField: NSTextField!
    @IBOutlet weak var visualFXfield: NSVisualEffectView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override var representedObject: Any?
    {
        didSet {}
    }
    
    @IBAction func buttonTextFill(_ sender: Any)
    {
        inputTextField.stringValue="abcdefghijklmnopqrstuvwxyz 0123456789 áàã éèê íì óòõ úù"
    }
    
    @IBAction func buttonConverterClicked(_ sender: Any)
    {
        var concatenador=""
        let umaStr = inputTextField.stringValue
        
        if (umaStr.count == 0 )                  // an empty string therefore...
        {
            let alert = NSAlert()
            
            alert.messageText = "You haven't typed in any text!"
            alert.informativeText = "You can \"populate\" the field with the near by button."
            alert.alertStyle = .warning
            alert.runModal()
            
            return
        }
        
        
        inputTextField.stringValue=umaStr.uppercased()
        
        for letra in umaStr.uppercased()
        {
            switch letra                                // https://en.wikipedia.org/wiki/NATO_phonetic_alphabet
            {
                case "A", "Ã", "Á", "À": concatenador+="\(letra) \tlike Alfa\t\t\t•-\n"
                case "B": concatenador+="\(letra) \tlike Bravo\t\t-•••\n"
                case "C": concatenador+="\(letra) \tlike Charlie\t\t-•-•\n"
                case "D": concatenador+="\(letra) \tlike Delta\t\t\t-••\n"
                case "E", "É", "È", "Ê": concatenador+="\(letra) \tlike Echo\t\t\t•\n"
                case "F": concatenador+="\(letra) \tlike Foxtrot\t\t••-•\n"
                case "G": concatenador+="\(letra) \tlike Golf\t\t\t--•\n"
                case "H": concatenador+="\(letra) \tlike Hotel\t\t••••\n"
                case "I", "Ì", "Í": concatenador+="\(letra) \tlike India\t\t\t••\n"
                case "J": concatenador+="\(letra) \tlike Juliett\t\t•---\n"
                case "K": concatenador+="\(letra) \tlike Kilo\t\t\t-•-\n"
                case "L": concatenador+="\(letra) \tlike Lima\t\t\t•-••\n"
                case "M": concatenador+="\(letra) \tlike Mike\t\t\t--\n"
                case "N": concatenador+="\(letra) \tlike November\t-•\n"
                case "O", "Õ", "Ó", "Ò": concatenador+="\(letra) \tlike Oscar\t\t---\n"
                case "P": concatenador+="\(letra) \tlike Papa\t\t\t•---•\n"
                case "Q": concatenador+="\(letra) \tlike Quebec\t\t--•-\n"
                case "R": concatenador+="\(letra) \tlike Romeo\t\t•-•\n"
                case "S": concatenador+="\(letra) \tlike Sierra\t\t•••\n"
                case "T": concatenador+="\(letra) \tlike Tango\t\t-\n"
                case "U", "Ù", "Ú": concatenador+="\(letra) \tlike Uniform\t\t••-\n"
                case "V": concatenador+="\(letra) \tlike Victor\t\t•••-\n"
                case "W": concatenador+="\(letra) \tlike Whiskey\t\t•--\n"
                case "X": concatenador+="\(letra) \tlike X-ray\t\t-••-\n"
                case "Y": concatenador+="\(letra) \tlike Yankee\t\t-•--\n"
                case "Z": concatenador+="\(letra) \tlike Zulu\t\t\t--••\n"
                case " ": concatenador+="\n"
                default: concatenador+=""
            }
            
            if (letra >= "0"  && letra <= "9")
            {
                concatenador+="\(letra)"
                switch letra
                {
                    case "0": concatenador+=" \tlike Zero\t\t\t-----\n"
                    case "1": concatenador+=" \tlike One\t\t\t•----\n"
                    case "2": concatenador+=" \tlike Two\t\t\t••---\n"
                    case "3": concatenador+=" \tlike Three\t\t•••--\n"
                    case "4": concatenador+=" \tlike Four\t\t\t••••-\n"
                    case "5": concatenador+=" \tlike Five\t\t\t•••••\n"
                    case "6": concatenador+=" \tlike Six\t\t\t-••••\n"
                    case "7": concatenador+=" \tlike Seven\t\t--•••\n"
                    case "8": concatenador+=" \tlike Eight\t\t\t---••\n"
                    case "9": concatenador+=" \tlike Nine\t\t\t----•\n"
                    default: concatenador+=""
                }
            }
        }
        
        outputTextField.stringValue=concatenador
        infoTextLabel.textColor=NSColor.systemBlue
        infoTextLabel.stringValue = "\(umaStr.count) rows (below text is selectable and window resizable)"
        
    }
}
