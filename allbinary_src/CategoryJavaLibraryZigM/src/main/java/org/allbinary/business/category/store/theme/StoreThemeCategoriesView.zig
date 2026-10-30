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
// package org.allbinary.business.category.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreThemeCategoryInterface = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryInterface.zig").StoreThemeCategoryInterface;
const StoreThemeCategoryView = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryView.zig").StoreThemeCategoryView;

pub const StoreThemeCategoriesView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.theme.StoreThemeCategoriesView";
    categoryInterface: ?*StoreThemeCategoryInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(categoryInterface: ?*StoreThemeCategoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryInterface = categoryInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.callStatic(StoreThemeCategoryView, "create1", .{ self.categoryInterface }), "toXmlNode", .{ document }));
        const childArray: []?Object = Inheritance.receiverOf(Inheritance.receiver(self.categoryInterface.?, "getChildNodes").getChildNodes().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(childArray.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const childCategoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, childArray[@intCast(i)]);
            const childCategoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.callStatic(StoreThemeCategoriesView, "create1", .{ Inheritance.cast(?*StoreThemeCategoryInterface, childCategoryInterface) }), "toXmlNode", .{ document }));
            _ = Inheritance.call(node.?, "appendChild", .{ childCategoryNode });
            }
        }
        return node;
    }
};

