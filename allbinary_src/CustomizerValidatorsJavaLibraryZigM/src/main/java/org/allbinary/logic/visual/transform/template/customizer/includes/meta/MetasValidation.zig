//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// II
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.template.customizer.includes.meta

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const HtmlMetaAttributeDataFactory = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeDataFactory.zig").HtmlMetaAttributeDataFactory;
const HtmlMetaAttributeValuesData = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeValuesData.zig").HtmlMetaAttributeValuesData;
const HtmlMetasData = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetasData.zig").HtmlMetasData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const MetaValidation = @import("org/allbinary/logic/visual/transform/template/customizer/includes/meta/MetaValidation.zig").MetaValidation;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const MetasValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    metaValidationVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create1(storeName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        this.metaValidationVector = Inheritance.upcast(@TypeOf(this.metaValidationVector), BasicArrayListD.create());
        const contentValue: ?*String = Inheritance.upcast(?*String, String.plus(Inheritance.receiver(this.storeFrontInterface.?, "getName").getName(), String.literal(" E-Commerce Site")));
        const keywordsMetaValidation: ?*MetaValidation = Inheritance.callStatic(MetaValidation, "create4", .{ HtmlMetaAttributeDataFactory.getInstance().?.NAME, String.literal("Keywords"), HtmlMetaAttributeValuesData.getInstance().?.KEYWORDS, contentValue });
        const abstractMetaValidation: ?*MetaValidation = Inheritance.callStatic(MetaValidation, "create4", .{ HtmlMetaAttributeDataFactory.getInstance().?.NAME, String.literal("Abstract"), HtmlMetaAttributeValuesData.getInstance().?.ABSTRACT, contentValue });
        const descriptionMetaValidation: ?*MetaValidation = Inheritance.callStatic(MetaValidation, "create4", .{ HtmlMetaAttributeDataFactory.getInstance().?.NAME, String.literal("Description"), HtmlMetaAttributeValuesData.getInstance().?.DESCRIPTION, contentValue });
        _ = Inheritance.call(this.metaValidationVector.?, "add", .{ keywordsMetaValidation });
        _ = Inheritance.call(this.metaValidationVector.?, "add", .{ abstractMetaValidation });
        _ = Inheritance.call(this.metaValidationVector.?, "add", .{ descriptionMetaValidation });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
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
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ HtmlMetasData.getInstance().?.NAME }));
        const metaArray: []?*MetaValidation = Inheritance.cast([]?*MetaValidation, Inheritance.call(self.metaValidationVector.?, "toArrayType", .{ array_N67900: { const array_N67900_array = allocator.alloc(?*MetaValidation, @intCast(self.metaValidationVector.?.size())) catch unreachable; @memset(array_N67900_array, null); break :array_N67900 array_N67900_array; } }));
        const size: i32 = @as(i32, @intCast(metaArray.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const metaValidation: ?*MetaValidation = Inheritance.upcast(?*MetaValidation, metaArray[@intCast(i)]);
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(metaValidation.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

