//
//  Data.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 29/07/22.
//

import Foundation

let national_average_health_risk = 0.9845

public var user_name : String = ""
public var user_health_risk = national_average_health_risk

public var health_conditions_counter = 0

public struct Age {
    let _0to9 = 0.6067
    let _10to19 = 0.3251
    let _20to29 = 0.7954
    let _30to39 = 0.9201
    let _40to49 = 0.6841
    let _50to59 = 1.0945
    let _60to69 = 1.8245
    let _70plus = 5.6379
}

public struct Sex {
    let male = 0.9019
    let female = 1.0977
}

public struct Ethnicity {
    let Maōri = 1.2789
    let Pasifika = 2.4889
    let Asian = 0.8094
    let MEELAA = 1.0790
    let WhiteEuropean = 0.6617
}

public struct Vaccination {
    let fully_vaccinated = 0.9811
    let partially_vaccinated = 2.7430
    let unvaccinated = 3.4940
}

public struct HealthConditions {
    let immunosuppressed = 1.9100
    let pulmonary_disease = 1.6900
    let liver_disease = 1.6800
    let chronic_kidney_disease = 1.6100
    let neurological_disease = 1.5400
    let diabetes = 1.4700
    let cardiac_disease = 1.4400
    let _4plus_conditions = 14.0590
}

public struct PreviousInfection {
    let yes = 0.2700
    let no = 1.0000
}

public let age = Age()
public let sex = Sex()
public let ethnicity = Ethnicity()
public let vaccination_status = Vaccination()
public let health_conditions = HealthConditions()
public let previous_infection_status = PreviousInfection()

public class UserProfile {
    var name : String = "Name"
    var vaccination_status : String = ""
    var age : Int = 0
    var sex : String = ""
    var ethnicity : String = ""
    var health_conditions : [String] = []
    var previous_infection : String = ""
}

public let user_profile = UserProfile()
