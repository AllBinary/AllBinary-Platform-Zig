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
// package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StyleData = @import("org/allbinary/logic/visual/dhtml/style/StyleData.zig").StyleData;
const StylesData = @import("org/allbinary/logic/visual/dhtml/style/StylesData.zig").StylesData;
const StylesValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/StylesValidationFactory.zig").StylesValidationFactory;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const CssStyleValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    cssStyleElementVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.cssStyleElementVector = Inheritance.upcast(@TypeOf(this.cssStyleElementVector), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.cssStyleElementVector = Inheritance.upcast(@TypeOf(this.cssStyleElementVector), Inheritance.call(StylesValidationFactory.getInstance().?, "getInstance", .{ document }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.cssStyleElementVector = Inheritance.upcast(@TypeOf(this.cssStyleElementVector), Inheritance.callStatic(StylesValidationFactory, "getInstance", .{ hashMap }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            const size: i32 = self.cssStyleElementVector.?.size();
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const styleValidationInterface: ?*ValidationInterface = Inheritance.cast(?*ValidationInterface, Inheritance.call(self.cssStyleElementVector.?, "get", .{ i }));
                if (!Inheritance.receiverOf(styleValidationInterface.?.isValid().?, "booleanValue").booleanValue()) {
                    isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
                }
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("End: "), isValid_), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            return isValid_;
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
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
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
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StylesData.getInstance().?.NAME }));
        const styleNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StyleData.getInstance().?.NAME }));
        _ = Inheritance.call(node.?, "appendChild", .{ styleNode });
        const size: i32 = self.cssStyleElementVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const styleDomNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(self.cssStyleElementVector.?, "get", .{ i }));
            _ = Inheritance.call(styleNode.?, "appendChild", .{ Inheritance.call(styleDomNodeInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

