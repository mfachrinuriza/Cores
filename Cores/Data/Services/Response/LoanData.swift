//
//  LoanData.swift
//  loan-management-app
//
//  Created by Muhammad Fachri Nuriza on 07/02/24.
//

import Foundation

public struct LoanData: Codable {
    public var id: String?
    public var amount: Double?
    public var interestRate: Double?
    public var term: Int?
    public var purpose: String?
    public var riskRating: String?
    public var borrower: BorrowerData?
    public var collateral: CollateralData?
    public var documents: [DocumentsData]?
    public var repaymentSchedule: RepaymentScheduleData?
    
    public init(
        id: String? = nil,
        amount: Double? = nil,
        interestRate: Double? = nil,
        term: Int? = nil,
        purpose: String? = nil,
        riskRating: String? = nil,
        borrower: BorrowerData? = nil,
        collateral: CollateralData? = nil,
        documents: [DocumentsData]? = nil,
        repaymentSchedule: RepaymentScheduleData? = nil
    ) {
        self.id = id
        self.amount = amount
        self.interestRate = interestRate
        self.term = term
        self.purpose = purpose
        self.riskRating = riskRating
        self.borrower = borrower
        self.collateral = collateral
        self.documents = documents
        self.repaymentSchedule = repaymentSchedule
    }
}

extension LoanData {
    public init(from loan: Loan) {
        self.init(
            id: loan.id,
            amount: loan.amount,
            interestRate: loan.interestRate,
            term: loan.term,
            purpose: loan.purpose,
            riskRating: loan.riskRating,
            borrower: loan.borrower,
            collateral: loan.collateral,
            documents: loan.documents,
            repaymentSchedule: loan.repaymentSchedule
        )
    }
}

public struct BorrowerData: Codable {
    public var id: String? = nil
    public var name: String? = nil
    public var email: String? = nil
    public var creditScore: Int? = nil
}

public struct CollateralData: Codable {
    public var type: String? = nil
    public var value: Int? = nil
}

public struct DocumentsData: Codable {
    public var type: String?
    public var url: String?
}

public struct RepaymentScheduleData: Codable {
    public var installments: [InstallmentsData]?
}

public struct InstallmentsData: Codable {
    public var dueDate: String?
    public var amountDue: Double?
}
