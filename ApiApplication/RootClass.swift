//
//	RootClass.swift
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

import Foundation

class Post{

	var body : String!
	var id : Int!
	var title : String!
	var userId : Int!

    

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		body = dictionary["body"] as? String
		id = dictionary["id"] as? Int
		title = dictionary["title"] as? String
		userId = dictionary["userId"] as? Int
	}
    
    
}