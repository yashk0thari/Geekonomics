//
//  HomeViewController.swift
//  TheEconomicsProject
//
//  Created by Valley on 12/12/19.
//  Copyright © 2019 Valley. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Content Handler Variables
    var contentNum = 0
    let content : [Int] = [4, 6, 5, 3, 5, 10, 7, 6, 25]
    
    // Instance Outlets
    @IBOutlet weak var ChangeNameTextFieldView: UITextField!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var HTPButtonView: UIButton!
    @IBOutlet weak var ProgressButtonView: UIButton!
    @IBOutlet weak var FeebackButtonView: UIButton!
    @IBOutlet weak var LogoutButtonView: UIButton!
    @IBOutlet weak var SettingsView: UIView!
    @IBOutlet weak var StoryButtonView: UIButton!
    @IBOutlet weak var BookButtonView: UIButton!
    @IBOutlet weak var DialogueLabelView: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    @IBOutlet weak var OptionsView: UIView!
    @IBOutlet weak var ImageView: UIView!
    @IBOutlet weak var Option1ButtonView: UIButton!
    @IBOutlet weak var Option2ButtonView: UIButton!
    @IBOutlet weak var Option3ButtonView: UIButton!
    @IBOutlet weak var Option4ButtonView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Background Info
        let uiImage = UIImage(named: "back")
        let backgroundColor = UIColor(patternImage: uiImage!)
        self.view.backgroundColor = backgroundColor
        
        // Aesthetical Adjustments
        HTPButtonView.layer.cornerRadius = 5
        ProgressButtonView.layer.cornerRadius = 5
        FeebackButtonView.layer.cornerRadius = 5
        LogoutButtonView.layer.cornerRadius = 5
        DefinitionTextView.layer.cornerRadius = 5
        
        // Initally
        SettingsView.isHidden = true
        DefinitionTextView.isHidden = true
        OptionsView.isHidden = true
        ImageView.isHidden = true
        DialogueLabelView.isHidden = true
        
        // DialougeView
        DialogueLabelView.textColor = UIColor.white
        
        // DialogueRenderer
        DialogueLabelView.text = content(num: 0, level: level)
    }
    
    // Content Function
    func content(num : Int, level : Int) -> String {
        
        switch level {
            
        case 1:
            switch num {
            // Level #1
            case 0: return "Person X wants to set up their business of producing and selling furniture"
            case 1: return "Primary Sector: this sector functions by obtaining materials from nature and converting it into raw materials."
            case 2: return "Secondary Sector: this sector uses the raw materials to manufacture goods or services."
            case 3: return "Tertiary sector: this is the retail sector, responsible for selling the good or service."
                
            case 4:
                OptionsView.isHidden = false
                return "Tertiary sector: this is the retail sector, responsible for selling the good or service."
                
            // Multiple Choice #1
            default: return "Error Loading Content"
            }
        
        case 2:
            switch num {
            // Level #2
            case 0: return "In order to begin trading, person X needs to begin production. What factors of production will they use?"
            case 1: return "Factors of Production: There are 4 factors which are used together to produce a given good or a service. They are Land, Labour, Capital, and Enterprise."
            case 2: return "Land is all natural resources, eg. wood"
            case 3: return "Labour is human resources, eg. workers"
            case 4: return "Capital is manmade resources, eg. machinery"
            case 5: return "Enterprise is the risk-taking ability and the ability to combine the other three factors of production to produce goods or services"
                
            case 6:
                OptionsView.isHidden = false
                return "Enterprise is the risk-taking ability and the ability to combine the other three factors of production to produce goods or services"
                
            // Multiple Choice #2
                
            default: return "Error Loading Content"
            }
        
        case 3:
            switch num {
            // Level #3
            case 0: return "Profit = selling price - cost price"
            case 1: return "There is an ‘economic problem’ which is known as scarcity. Wants are unlimited but the resources are limited."
            case 2: return "For example, Person x has $20. They can either buy a book worth $20 or shoes worth $20, but they cannot buy both as they only have $20."
            case 3: return "Therefore, they must make a choice, and the option they don’t choose becomes the Opportunity Cost."
            case 4: return "If Person X chooses the books over the shoes, shoes will be the opportunity cost because it is the next best alternative."
            case 5: return "Since you have only limited money due to scarcity, you can either produce chairs or tables. Which option is a better one for your furniture business?"
                
            // Calculation #1 - Table will be displayed on main screen in a non-tabular form if possible
                
            default: return "Error Loading Content"
            }
            
        case 4:
            switch num {
            // Level #4
            case 0: return "In order to be environmentally friendly/sustainable, you decide to install solar panels to power your furniture factories/production facilities."
            case 1: return "There are two main types of goods: Economic and Free goods. Economic goods have a price assigned to them. Thus, they have an Opportunity Cost. Every manufactured good is an economic good; for example, clothes, candy, shoes, pencils, and etc. Free goods are gifts of nature that you don’t have to pay for. For example, air, forests, etc."
            case 2: return " Every manufactured good is an economic good; for example, clothes, candy, shoes, pencils, and etc. Free goods are gifts of nature that you don’t have to pay for. For example, air, forests, etc."
            case 3: return "In the case of solar panels, which good can be considered as a free or economic good?"
                
            // Multiple Choice #3
                
            default: return "Error Loading Content"
            }
            
        case 5:
            switch num {
            // Level #5
            case 0: return "Demand- the willingness and ability to buy a given good or service."
            case 1: return "For example, Charlie wants to buy a laptop worth $500, meaning he is willing. However, he does not have $500, therefore he is NOT  able to buy the good."
            case 2: return "If income rises, the demand for a normal good tends to rise. If the good is an inferior good, its demand will fall as income rises. Tastes and preferences are likings of people."
            case 3: return "For example, if someone likes ice creams, it is likely that they will demand ice creams. A persuasive advertising campaign will encourage people to buy the given good. Related goods are of two types: complementary goods and substitute goods."
            case 4: return "Complementary goods are those goods that are used together. For example, bread and butter. Substitute goods are goods that can be used in place of each other. For example, Coca-cola and Pepsi."
            case 5: return "Your furniture company _______, is facing competition from another furniture company ‘AB Furnishings’ as they have just launched cheaper, and better quality sofas. What type of good is ‘AB Furnishings’ table and what effect will it have on your demand?"
                
            // Fill In the Blanks #1
                
            default: return "Error Loading Content"
            }
            
        case 6:
            switch num {
            // Level #6
            case 0: return "Supply is the willingness and ability to sell a good or service."
            case 1: return "Factors affecting supply are supply shocks, taxes, subsidies, technology, and cost of factors of production. Supply shocks are unexpected events that affect the supply of a good or s service."
            case 2: return "For example, due to a war or a hurricane, chocolate cannot be exported by the Ivory Coast in Africa. Taxes in terms of supply are corporate taxes. Corporate taxes are aimed at a firm’s profits; a certain percentage of the firm’s profits are taken by the government."
            case 3: return "For example, if the percentage of tax/ tax rate is increased, suppliers will supply less as a greater proportion of their profits will be taken by the government."
            case 4: return "Subsidies are payments made by the government to producers to encourage the production of certain beneficial goods. For example, governments often provide subsidies to private firms providing education or healthcare since both services are beneficial to society."
            case 5: return "Advancements in Technology increase the supply of a given good by improving efficiency. For example, before the printing press was introduced, all books were handwritten."
            case 6: return "Thus, the production of books was a time-consuming and expensive process. With the printing press, however, the supply rose as efficiency increased. As studied earlier, factors of production are land, labour, capital, and enterprise."
            case 7: return "The price of these factors determines the cost of producing the good. Therefore, if the price of the factors of production rises, the cost of production rises. Hence, making it expensive for the producer to produce and vice-versa."
            case 8: return "Due to a hurricane in the city where your production facility is located, the supply of chairs has fallen because labour is not available. Is the cause of the fall in supply due to a fall in willingness or ability?"
            case 9: return "Due to an increase in the corporate tax (a tax levied on firms), you are supplying fewer sofas because the incentive to sell sofas has fallen as you must pay a larger proportion of your profit to the government."
            case 10: return "Has the supply fallen due to a fall in willingness or ability?"
                
            default: return "Error Loading Content"
            }
            
            case 7:
            switch num {
            // Level #7
            case 0: return "Demand curve and functions- The concept of demand as we previously learnt follows a trend for most goods (normal goods). This can better be understood by representing the trend using a demand function."
            case 1: return "A demand function is simply an equation that can be used to plot the demand curve. It is denoted as Quantity Demanded= A-bp."
            case 2: return "You do not have to know the function of each component as this level as it is a higher-level economics topic."
                
            // Table #2
            // Graph #1
                
            case 3: return "The downward-facing line represents demand. The y-axis represents the price, and the x-axis represents the quantity demanded."
            case 4: return "I used the information in the table and inputted the values into the linear demand function (equation) to find the quantity demanded."
            case 5: return "As can be noted, the information from the table has been converted into a demand curve."
            case 6: return "Supply curve and functions- Just like demand, supply too follows a trend which can also be represented using a supply function."
            case 7: return "A supply function is simply an equation that can be used to plot the supply curve. It is denoted as Quantity supplied=C+dP."
                
            // Table #3
                
            default: return "Error Loading Content"
            }
            
        case 8:
        switch num {
        // Level #8
        case 0: return "Equilibrium- equilibrium is the level where the quantity demanded equals quantity supplied."
        case 1: return "It is the price and quantity at which the suppliers are willing and able to sell a given good or a service, and where the quantity and price at which the consumers are willing and able to buy the good."
        case 2: return "There is no shortage or surplus at this level."
            
        // Graph #2
            
        case 3: return "Qe- Equilibrium Quantity, Pe- Equilibrium price"
        case 4: return "The point where the demand and supply curve are intersecting represents equilibrium."
        case 5: return "Equilibrium is achieved when the quantity demanded is equal to the quantity of supply. Therefore, to find equilibrium price, we have to simply equate the linear demand and supply functions. That is, Qs=Qd"
        case 6: return "If the quantity demanded by the masses can be defined by this linear demand function Qt= 8-5P and the quantity supplied can be defined by linear supply function Qs= 2+3P, find the value of the equilibrium price."
            
        // Calculation #2
            
        default: return "Error Loading Content"
        }
            
        case 9:
        switch num {
        // Level #9
        case 0: return "Price Elasticity of demand- PED is the  degree by which demand changes. It is the responsiveness of demand to a change in price. There are four kinds of elasticities."
        case 1: return "Price elastic- a change in price causes a more than proportionate change in demand."
        case 2: return "Price inelastic- a change in price causes a less than proportionate change in demand. For example- cigarettes is price inelastic because it is an addictive good."
        case 3: return "A change in its price will not change its demand significantly because it is an addictive good. Thus it is not easy for consumers to change their spending patterns."
        case 4: return "Perfectly price elastic- this is a situation where a change in price causes an infinite change in demand. It is a hypothetical situation in economics."
        case 5: return "Perfectly price inelastic- this is a situation when a change causes no change in demand. It is also a hypothetical situation."
        case 6: return "Unit elasticity- when the change in price results in an equal change in demand."
        case 7: return "Factors that affect elasticity:"
        case 8: return "Addictive goods- For example- cigarettes is price inelastic because it is an addictive good. A change in its price will not change its demand significantly because it is an addictive good."
        case 9: return "Thus it is not easy for consumers to change their spending patterns."
        case 10: return "Time period- in the long term, the demand of all goods tends to become elastic as one can find substitutes"
        case 11: return "Luxury or necessity- if a good is a necessity like water or food, its demand tends to be inelastic as a change in price will not cause a drastic change in demand as these goods are essential for living."
        case 12: return "However, the demand of luxury goods will be more sensitive to price change."
        
        // Series of MCQs
            
        case 13: return "Price Elasticity of supply- The responsiveness of supply to a change in price. There are four kinds of elasticity:"
        case 14: return "Price elastic- the change in price causes a more than proportionate change in supply. For example, an increase in price will cause a much greater increase in supply."
        case 15: return "Price inelasticity- the change in price causes a less than proportionate change in supply."
        case 16: return "Perfectly inelastic supply- a change in price causes no change in supply."
        case 17: return "Perfectly elastic supply- change in price causes an infinite change in supply."
        case 18: return "Unit elasticity- a change in price causes equal change in supply."
        case 19: return "Factors affecting elasticity of supply:"
        case 20: return "Mobility of resources- if the good is occupationally mobile and geographically mobile then the elasticity of supply will be high. Occupational mobility is a resource (Factors of Production)  which is capable of changing use."
        case 21: return "For example, a piece of land can be used for the growth of of wheat or a building could be built on it. Thus its use can be changed. The geographical mobility is the ability to move the resource from one place to another."
        case 22: return "For example, a piece of machinery can be used at one factory and then can be transported to another."
        case 23: return "Time period- in the short run, supply is inelastic because it is difficult to find substitutes for a given good or service. However, in the long run, supply becomes elastic."
        case 24: return "Spare capacity- the availability of stock allows producers to change supply easily if demand rises."
        case 25: return "One of the lamps that your company takes a lot of time to produce because materials have to be sourced from several countries overseas. What is the PES of this good?"
            
        // MCQ
            
        default: return "Error Loading Content"
        }
            
        default: "Mega-Error"
        }
        
        return ""
    }
    
    // Forward Button View
    @IBAction func ForwardButtonAction(_ sender: UIButton) {
        
        DialogueLabelView.text = content(num: contentNum, level: level)
        contentNum += 1
    }
    
    // Backward Button View
    @IBAction func BackButtonAction(_ sender: UIButton) {
            
            if contentNum > 0 {

                contentNum -= 1
                DialogueLabelView.text = content(num: contentNum, level: level)
            }
    }
    
    // Options Handler
    @IBAction func Option1ButtonAction(_ sender: UIButton) {
     
        
    }
    
    @IBAction func Option2ButtonAction(_ sender: UIButton) {
     
        
    }
    
    @IBAction func Option3ButtonAction(_ sender: UIButton) {
     
        
    }
    
    @IBAction func Option4ButtonAction(_ sender: UIButton) {
     
        
    }
    
    
    // Settings View
    @IBAction func SettingsButtonAction(_ sender: UIButton) {
    
        DefinitionTextView.isHidden = true
        
        if SettingsView.isHidden == true {
            
            SettingsView.isHidden = false
        } else {
            
            SettingsView.isHidden = true
        }
    }
    
    // Dialogue View
    @IBAction func StoryButtonAction(_ sender: Any) {
        
        DialogueLabelView.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    // Definitions View
    @IBAction func BookButtonAction(_ sender: UIButton) {
        
        SettingsView.isHidden = true
        
        if DefinitionTextView.isHidden == true {
            
            DefinitionTextView.isHidden = false
        } else {
            
            DefinitionTextView.isHidden = true
        }

    }
    

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
