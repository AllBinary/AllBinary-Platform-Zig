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
// package org.allbinary.business.user.commerce.shipping.modules

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BasicWeightShippingModule = @import("org/allbinary/business/user/commerce/shipping/modules/BasicWeightShippingModule.zig").BasicWeightShippingModule;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasicWeightShippingModuleView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView";
    base: BasicWeightShippingModule = undefined,
    logUtil: ?*LogUtil = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicWeightShippingModule.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const shippingMethodNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ShippingMethodData.NAME }));
            _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodData.NAME, Inheritance.receiver(self, "getName").getName() }) });
            _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodData.DESCRIPTION, Inheritance.receiver(self, "getDescription").getDescription() }) });
            return shippingMethodNode;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("toXmlNode"), e });
//             }
//             return null;
    }
    

    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
            return document;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("toXmlDoc"), e });
//             }
//             return null;
    }
    

    pub fn view(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view"), e });
//             }
//             return null;
    }
};

