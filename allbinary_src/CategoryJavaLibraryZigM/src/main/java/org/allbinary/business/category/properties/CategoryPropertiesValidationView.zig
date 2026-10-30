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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const CategoryPropertiesView = @import("org/allbinary/business/category/properties/CategoryPropertiesView.zig").CategoryPropertiesView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const CategoryPropertiesValidationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.CategoryPropertiesValidationView";
    base: CategoryPropertiesView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(categoryPropertiesInterface: ?*CategoryPropertiesInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CategoryPropertiesView, "create1", .{ categoryPropertiesInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn isValid(self: *Self) ?*Boolean {
        return Inheritance.upcast(?*Boolean, Inheritance.receiver(Inheritance.fieldPointer(self, "categoryPropertiesInterface").*.?, "isValid").isValid());
    }
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(Inheritance.fieldPointer(self, "categoryPropertiesInterface").*.?, "validationInfo").validationInfo() });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation info error"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Data");
    }
    

    // throws Exception
    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

