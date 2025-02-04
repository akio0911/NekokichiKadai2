//
//  CalculateModel.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

protocol CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Double
}

struct CalculateAdditionModel: CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Double {
        var result: Int = values[0]
        for key in 1..<values.count {
            result += values[key]
        }
        return Double(result)
    }
}

struct CalculateSubtractionModel: CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Double {
        var result: Int = values[0]
        for key in 1..<values.count {
            result -= values[key]
        }
        return Double(result)
    }
}

struct CalculateMultiplicationModel: CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Double {
        var result: Int = values[0]
        for key in 1..<values.count {
            result *= values[key]
        }
        return Double(result)
    }
}

struct CalculateDivisionModel: CalculateModelProtocol {
    func getCaculatedResult(values: [Int]) -> Double {
        var result: Double = Double(values[0])
        for key in 1..<values.count {
            result /= Double(values[key])
        }
        return Double(result)
    }
}
