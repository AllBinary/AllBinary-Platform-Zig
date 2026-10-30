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
// package org.allbinary.business.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const CategoryPropertiesView = @import("org/allbinary/business/category/properties/CategoryPropertiesView.zig").CategoryPropertiesView;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InterfaceUtil = @import("org/allbinary/logic/java/anyType/InterfaceUtil.zig").InterfaceUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;

pub const CategoryView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryView";
    logUtil: ?*LogUtil = null,
    categoryInterface: ?*CategoryInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(categoryInterface: ?*CategoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryInterface = categoryInterface;
        return this;
    }
    

    pub fn getCategoryInterface(self: *Self) ?*CategoryInterface {
        return self.categoryInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ CategoryData.getInstance().?.NAME }));
        const childCategoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.categoryInterface.?, "getChildNodes").getChildNodes());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Children: "), childCategoryVector.?.size()), self, String.literal("toXmlNode") });
        }
        const size: i32 = childCategoryVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(childCategoryVector.?, "get", .{ i }));
            var categoryPropertiesInterface: ?*CategoryPropertiesInterface = null;
            if (Inheritance.callStatic(InterfaceUtil, "isImplemented", .{ String.literal("CategoryPropertiesInterface"), anyType })) {
                categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, anyType);
            } else if (Inheritance.callStatic(InterfaceUtil, "isImplemented", .{ String.literal("CategoryInterface"), anyType })) {
                const categoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, anyType);
                categoryPropertiesInterface = Inheritance.upcast(@TypeOf(categoryPropertiesInterface), Inheritance.receiver(categoryInterface.?, "getProperties").getProperties());
            } else {
                const isImpl: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(InterfaceUtil, "viewAll", .{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))), CommonSeps.getInstance().?.NEW_LINE }));
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.literal("CategoryView found unknown object.\n"), String.literal("Show Testing:")), isImpl); break :exception error.Exception; }});
            }
            const childCategoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.callStatic(CategoryPropertiesView, "create1", .{ categoryPropertiesInterface }), "toXmlNode", .{ document }));
            _ = Inheritance.call(node.?, "appendChild", .{ childCategoryNode });
            }
        }
        return node;
    }
};

