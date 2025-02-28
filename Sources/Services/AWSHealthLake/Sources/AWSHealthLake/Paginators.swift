//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension HealthLakeClient {
    /// Paginate over `[ListFHIRDatastoresOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFHIRDatastoresInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFHIRDatastoresOutput`
    public func listFHIRDatastoresPaginated(input: ListFHIRDatastoresInput) -> ClientRuntime.PaginatorSequence<ListFHIRDatastoresInput, ListFHIRDatastoresOutput> {
        return ClientRuntime.PaginatorSequence<ListFHIRDatastoresInput, ListFHIRDatastoresOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFHIRDatastores(input:))
    }
}

extension ListFHIRDatastoresInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFHIRDatastoresInput {
        return ListFHIRDatastoresInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension HealthLakeClient {
    /// Paginate over `[ListFHIRExportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFHIRExportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFHIRExportJobsOutput`
    public func listFHIRExportJobsPaginated(input: ListFHIRExportJobsInput) -> ClientRuntime.PaginatorSequence<ListFHIRExportJobsInput, ListFHIRExportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListFHIRExportJobsInput, ListFHIRExportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFHIRExportJobs(input:))
    }
}

extension ListFHIRExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFHIRExportJobsInput {
        return ListFHIRExportJobsInput(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )}
}
extension HealthLakeClient {
    /// Paginate over `[ListFHIRImportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFHIRImportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFHIRImportJobsOutput`
    public func listFHIRImportJobsPaginated(input: ListFHIRImportJobsInput) -> ClientRuntime.PaginatorSequence<ListFHIRImportJobsInput, ListFHIRImportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListFHIRImportJobsInput, ListFHIRImportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFHIRImportJobs(input:))
    }
}

extension ListFHIRImportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFHIRImportJobsInput {
        return ListFHIRImportJobsInput(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )}
}
