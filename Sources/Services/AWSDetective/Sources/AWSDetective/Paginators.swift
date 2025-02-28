//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension DetectiveClient {
    /// Paginate over `[ListDatasourcePackagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasourcePackagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasourcePackagesOutput`
    public func listDatasourcePackagesPaginated(input: ListDatasourcePackagesInput) -> ClientRuntime.PaginatorSequence<ListDatasourcePackagesInput, ListDatasourcePackagesOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasourcePackagesInput, ListDatasourcePackagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasourcePackages(input:))
    }
}

extension ListDatasourcePackagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasourcePackagesInput {
        return ListDatasourcePackagesInput(
            graphArn: self.graphArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension DetectiveClient {
    /// Paginate over `[ListGraphsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGraphsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGraphsOutput`
    public func listGraphsPaginated(input: ListGraphsInput) -> ClientRuntime.PaginatorSequence<ListGraphsInput, ListGraphsOutput> {
        return ClientRuntime.PaginatorSequence<ListGraphsInput, ListGraphsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGraphs(input:))
    }
}

extension ListGraphsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGraphsInput {
        return ListGraphsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension DetectiveClient {
    /// Paginate over `[ListInvitationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInvitationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInvitationsOutput`
    public func listInvitationsPaginated(input: ListInvitationsInput) -> ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutput> {
        return ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listInvitations(input:))
    }
}

extension ListInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInvitationsInput {
        return ListInvitationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension DetectiveClient {
    /// Paginate over `[ListMembersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMembersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMembersOutput`
    public func listMembersPaginated(input: ListMembersInput) -> ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput> {
        return ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMembers(input:))
    }
}

extension ListMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMembersInput {
        return ListMembersInput(
            graphArn: self.graphArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension DetectiveClient {
    /// Paginate over `[ListOrganizationAdminAccountsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrganizationAdminAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationAdminAccountsOutput`
    public func listOrganizationAdminAccountsPaginated(input: ListOrganizationAdminAccountsInput) -> ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutput> {
        return ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listOrganizationAdminAccounts(input:))
    }
}

extension ListOrganizationAdminAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationAdminAccountsInput {
        return ListOrganizationAdminAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
