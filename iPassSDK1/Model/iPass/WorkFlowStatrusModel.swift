//
//  WorkFlowStatrusModel.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation
//
// MARK: - WorkFlowStatrusModel
public struct WorkFlowStatusModel: Codable {
    let status: Bool?
    let message: String?
    let error: WorkFlowStatusError?
    let data: WorkFlowDataClass?
}

// MARK: - Error
public struct WorkFlowStatusError: Codable {
    let statusParse: WorkFlowStatusParse?
    let user: WorkflowDataUser?
    let bdy: WorkflowDataBdyError?
}

// MARK: - DataClass
public struct WorkFlowDataClass: Codable {
    let statusParse: WorkFlowStatusDataParse?
}
public struct WorkflowDataBdyError: Codable{
    let type, title: String?
    let status: Int?
    let detail,instance: String?
}
// MARK: - StatusParse
public struct WorkFlowStatusParse: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}

// MARK: - StatusParse
public struct WorkFlowStatusDataParse: Codable {
    let account: WorkFlowAccount?
    let workflowExecution: WorkflowDataExecution?
}

// MARK: - Account
public struct WorkFlowAccount: Codable {
    let id: String?
    let href: String?
}

public struct WorkflowDataExecution: Codable {
    let id: String?
    let href: String?
    let definitionKey, status: String?
}

// MARK: - User
public struct WorkflowDataUser: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
