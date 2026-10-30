//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.business.category.properties

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Element = @import("org/w3c/dom/Element.zig").Element;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;

pub const CategoryPropertiesView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.CategoryPropertiesView";
    categoryPropertiesInterface: ?*CategoryPropertiesInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(categoryPropertiesInterface: ?*CategoryPropertiesInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = categoryPropertiesInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ CategoryData.getInstance().?.NAME }));
        const newCategoryNode: ?*Element = Inheritance.cast(?*Element, categoryNode);
        _ = Inheritance.call(newCategoryNode.?, "setAttribute", .{ CategoryData.getInstance().?.LABEL, Inheritance.receiver(self.categoryPropertiesInterface.?, "getValue").getValue() });
        return categoryNode;
    }
};

