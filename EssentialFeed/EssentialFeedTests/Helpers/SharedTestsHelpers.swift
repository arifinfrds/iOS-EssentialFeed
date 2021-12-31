//
//  SharedTestsHelpers.swift
//  EssentialFeedTests
//
//  Created by Arifin Firdaus on 04/03/21.
//  Copyright © 2021 arifinfrds. All rights reserved.
//

import Foundation

func anyNSError() -> NSError {
	return NSError(domain: "Any error", code: 0)
}

func anyURL() -> URL {
	return URL(string: "https://any-url.com")!
}

func anyData() -> Data {
	return Data("any data".utf8)
}

func makeItemsJSON(_ items: [[String: Any]]) -> Data {
	let json = ["items": items]
	return try! JSONSerialization.data(withJSONObject: json)
}

extension HTTPURLResponse {
	convenience init(statusCode: Int) {
		self.init(url: anyURL(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
	}
}

extension Date {
	func adding(seconds: TimeInterval) -> Date {
		return self + seconds
	}
	
	func adding(minutes: Int) -> Date {
		return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
	}
	
	func adding(days: Int) -> Date {
		return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
	}
}
