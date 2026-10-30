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
// package taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ViewHelper = @import("taghelpers/ViewHelper.zig").ViewHelper;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ValidationViewHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.ValidationViewHelper";
    base: ViewHelper = undefined,
    logUtil: ?*LogUtil = null,
    viewInterface: ?*ValidationComponentInterface = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ViewHelper, "create2", .{ hashMap, pageContext }).*;
        this.initFields();
        this.viewInterface = Inheritance.cast(?*ValidationComponentInterface, Inheritance.receiver(this, "getViewObject").getViewObject());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Started"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            return Inheritance.upcast(?*Boolean, Inheritance.receiver(self.viewInterface.?, "isValid").isValid());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            return Inheritance.upcast(?*String, Inheritance.receiver(self.viewInterface.?, "validationInfo").validationInfo());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Unknown Validation Error");
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        { // try
            return Inheritance.upcast(?*Document, Inheritance.receiver(self.viewInterface.?, "toValidationInfoDoc").toValidationInfoDoc());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("toValidationInfoDoc()"), e });
//             }
//             return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            return Inheritance.upcast(?*Node, Inheritance.call(self.viewInterface.?, "toValidationInfoNode", .{ document }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("toValidationInfoNode()"), e });
//             }
//             return null;
    }
};

