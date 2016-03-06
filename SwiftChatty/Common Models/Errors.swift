//
//  Errors.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// Represents the different types of error returned by this Framework
public enum Error: ErrorType {

    /// This is an error existing on ther server side.  It will most likely be
    /// something unexpected and not the client's fault.
    ///
    /// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451659
    case ServerError(message: String)
    /// This is most likely the result of the client passing an invalid argument in a request.
    ///
    /// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451659
    case ArgumentError(message: String)
    /// A result of failure to map the response received with the rules provided.
    case MappingError
    /// Invalid credentials were provider when making a request that requires valid login
    case InvalidLoginError
    /// An error on the client's system.  Most likely a networking error.
    case SystemError(code: Int, domain: String)
    /// An error from the lol API
    case LolError(message: String)
    /// An error returned if more than 10,000 events have occurred since your specified lastEventId
    case TooManyEvents
    /// Catch all for errors that can't be matched to one of the other categories.
    case UnkownError

}
