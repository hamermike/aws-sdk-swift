//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension ResourceGroupsTaggingAPIClient {
    /// Paginate over `[GetComplianceSummaryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetComplianceSummaryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetComplianceSummaryOutput`
    public func getComplianceSummaryPaginated(input: GetComplianceSummaryInput) -> ClientRuntime.PaginatorSequence<GetComplianceSummaryInput, GetComplianceSummaryOutput> {
        return ClientRuntime.PaginatorSequence<GetComplianceSummaryInput, GetComplianceSummaryOutput>(input: input, inputKey: \.paginationToken, outputKey: \.paginationToken, paginationFunction: self.getComplianceSummary(input:))
    }
}

extension GetComplianceSummaryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetComplianceSummaryInput {
        return GetComplianceSummaryInput(
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            paginationToken: token,
            regionFilters: self.regionFilters,
            resourceTypeFilters: self.resourceTypeFilters,
            tagKeyFilters: self.tagKeyFilters,
            targetIdFilters: self.targetIdFilters
        )}
}

extension PaginatorSequence where OperationStackInput == GetComplianceSummaryInput, OperationStackOutput == GetComplianceSummaryOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getComplianceSummaryPaginated`
    /// to access the nested member `[ResourceGroupsTaggingAPIClientTypes.Summary]`
    /// - Returns: `[ResourceGroupsTaggingAPIClientTypes.Summary]`
    public func summaryList() async throws -> [ResourceGroupsTaggingAPIClientTypes.Summary] {
        return try await self.asyncCompactMap { item in item.summaryList }
    }
}
extension ResourceGroupsTaggingAPIClient {
    /// Paginate over `[GetResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourcesOutput`
    public func getResourcesPaginated(input: GetResourcesInput) -> ClientRuntime.PaginatorSequence<GetResourcesInput, GetResourcesOutput> {
        return ClientRuntime.PaginatorSequence<GetResourcesInput, GetResourcesOutput>(input: input, inputKey: \.paginationToken, outputKey: \.paginationToken, paginationFunction: self.getResources(input:))
    }
}

extension GetResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourcesInput {
        return GetResourcesInput(
            excludeCompliantResources: self.excludeCompliantResources,
            includeComplianceDetails: self.includeComplianceDetails,
            paginationToken: token,
            resourceARNList: self.resourceARNList,
            resourceTypeFilters: self.resourceTypeFilters,
            resourcesPerPage: self.resourcesPerPage,
            tagFilters: self.tagFilters,
            tagsPerPage: self.tagsPerPage
        )}
}

extension PaginatorSequence where OperationStackInput == GetResourcesInput, OperationStackOutput == GetResourcesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getResourcesPaginated`
    /// to access the nested member `[ResourceGroupsTaggingAPIClientTypes.ResourceTagMapping]`
    /// - Returns: `[ResourceGroupsTaggingAPIClientTypes.ResourceTagMapping]`
    public func resourceTagMappingList() async throws -> [ResourceGroupsTaggingAPIClientTypes.ResourceTagMapping] {
        return try await self.asyncCompactMap { item in item.resourceTagMappingList }
    }
}
extension ResourceGroupsTaggingAPIClient {
    /// Paginate over `[GetTagKeysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTagKeysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTagKeysOutput`
    public func getTagKeysPaginated(input: GetTagKeysInput) -> ClientRuntime.PaginatorSequence<GetTagKeysInput, GetTagKeysOutput> {
        return ClientRuntime.PaginatorSequence<GetTagKeysInput, GetTagKeysOutput>(input: input, inputKey: \.paginationToken, outputKey: \.paginationToken, paginationFunction: self.getTagKeys(input:))
    }
}

extension GetTagKeysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTagKeysInput {
        return GetTagKeysInput(
            paginationToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetTagKeysInput, OperationStackOutput == GetTagKeysOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getTagKeysPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func tagKeys() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.tagKeys }
    }
}
extension ResourceGroupsTaggingAPIClient {
    /// Paginate over `[GetTagValuesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTagValuesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTagValuesOutput`
    public func getTagValuesPaginated(input: GetTagValuesInput) -> ClientRuntime.PaginatorSequence<GetTagValuesInput, GetTagValuesOutput> {
        return ClientRuntime.PaginatorSequence<GetTagValuesInput, GetTagValuesOutput>(input: input, inputKey: \.paginationToken, outputKey: \.paginationToken, paginationFunction: self.getTagValues(input:))
    }
}

extension GetTagValuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTagValuesInput {
        return GetTagValuesInput(
            key: self.key,
            paginationToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetTagValuesInput, OperationStackOutput == GetTagValuesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getTagValuesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func tagValues() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.tagValues }
    }
}
