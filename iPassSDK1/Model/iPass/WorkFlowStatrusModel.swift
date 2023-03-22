//
//  WorkFlowStatrusModel.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation
//
// MARK: - WorkFlowStatrusModel
struct WorkFlowStatusModel: Codable {
    let status: Bool?
    let message: String?
    let error: WorkFlowStatusError?
    let data: WorkFlowDataClass?
}

// MARK: - Error
struct WorkFlowStatusError: Codable {
    let statusParse: WorkFlowStatusParse?
    let user: WorkflowDataUser?
    let bdy: WorkflowDataBdyError?
}

// MARK: - DataClass
struct WorkFlowDataClass: Codable {
    let statusParse: WorkFlowStatusDataParse?
}
struct WorkflowDataBdyError: Codable{
    let type, title: String?
    let status: Int?
    let detail,instance: String?
}
// MARK: - StatusParse
struct WorkFlowStatusParse: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}

// MARK: - StatusParse
struct WorkFlowStatusDataParse: Codable {
    let account: WorkFlowAccount?
    let workflowExecution: WorkflowDataExecution?
}

// MARK: - Account
struct WorkFlowAccount: Codable {
    let id: String?
    let href: String?
}

struct WorkflowDataExecution: Codable {
    let id: String?
    let href: String?
    let definitionKey, status: String?
}

// MARK: - User
struct WorkflowDataUser: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
