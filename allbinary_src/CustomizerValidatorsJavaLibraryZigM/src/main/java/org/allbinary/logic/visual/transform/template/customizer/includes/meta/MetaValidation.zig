//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// III
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.template.customizer.includes.meta

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const HtmlMetaAttributeData = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeData.zig").HtmlMetaAttributeData;
const HtmlMetaAttributeDataFactory = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory.zig").HtmlMetaAttributeDataFactory;
const HtmlMetaData = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaData.zig").HtmlMetaData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const MetaValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    label: ?*String = null,
    name: ?*String = null,
    httpEquiv: ?*String = null,
    content: ?*String = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.name = null;
        this.httpEquiv = null;
        
    }
    

    pub fn create4(htmlMetaAttributeData: ?*HtmlMetaAttributeData, label: ?*String, attributeValue: ?*String, contentValue: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.label = label;
        if (Object.equals(Object.of(htmlMetaAttributeData), HtmlMetaAttributeDataFactory.getInstance().?.HTTP_EQUIV)) {
            this.httpEquiv = attributeValue;
        } else if (Object.equals(Object.of(htmlMetaAttributeData), HtmlMetaAttributeDataFactory.getInstance().?.NAME)) {
            this.name = attributeValue;
        }
        this.content = contentValue;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(document: ?*Document) *Self {
        _ = document;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        { // try
            const valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
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
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const htmlMetaAttributeDataFactory: ?*HtmlMetaAttributeDataFactory = Inheritance.upcast(?*HtmlMetaAttributeDataFactory, HtmlMetaAttributeDataFactory.getInstance());
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(HtmlMetaData.getInstance().?.LABEL)), self.label });
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(htmlMetaAttributeDataFactory.?.NAME)), self.name });
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(htmlMetaAttributeDataFactory.?.HTTP_EQUIV)), self.httpEquiv });
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(htmlMetaAttributeDataFactory.?.CONTENT)), self.content });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, Object.toString(Object.of(HtmlMetaData.getInstance().?.NAME)), self.toHashMap() }));
        return node;
    }
};

