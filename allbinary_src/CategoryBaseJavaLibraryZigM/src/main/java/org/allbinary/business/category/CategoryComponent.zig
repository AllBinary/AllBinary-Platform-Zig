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
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryView = @import("org/allbinary/business/category/CategoryView.zig").CategoryView;

pub const CategoryComponent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryComponent";
    base: CategoryView = undefined,
    NO_TYPE: i32 = 0,
    // Implements TransformInterface

    fn initFields(this: *Self) void {
        this.NO_TYPE = 0;
    }
    

    pub fn create1(categoryInterface: ?*CategoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CategoryView, "create1", .{ categoryInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTypeId(self: *Self) i32 {
        return self.NO_TYPE;
    }
    

    pub fn getTransformDocumentInterface(self: *Self) ?*TransformDocumentInterface {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        _ = self;
        return null;
    }
    

    pub fn setTransformDocumentInterface(self: *Self, viewDocumentInterface: ?*TransformDocumentInterface) void {
        _ = viewDocumentInterface;
        _ = self;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        _ = Inheritance.call(document.?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(CategoryView, "create1", .{ Inheritance.receiver(self, "getCategoryInterface").getCategoryInterface() }), "toXmlNode", .{ document }) });
        return document;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        _ = self;
        return null;
    }
};

