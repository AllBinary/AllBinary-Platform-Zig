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
// package org.allbinary.logic.visual.transform.template.customizer.hedges.heading

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogoData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData.zig").LogoData;
const LogoValidation = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoValidation.zig").LogoValidation;
const TitleData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData.zig").TitleData;
const TitleValidation = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleValidation.zig").TitleValidation;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const HeadingData = @import("org/allbinary/logic/visual/transform/template/customizer/hedges/heading/HeadingData.zig").HeadingData;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const HeadingValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    title: ?*TitleValidation = null,
    logo: ?*LogoValidation = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.title = TitleValidation.create();
        this.logo = LogoValidation.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        const headingNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ HeadingData.NAME }));
        const titleNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ TitleData.getInstance().?.NAME, Inheritance.receiverOf(Inheritance.call(headingNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes() }));
        const logoNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ LogoData.getInstance().?.NAME, Inheritance.receiverOf(Inheritance.call(headingNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes() }));
        this.title = Inheritance.callStatic(TitleValidation, "create1", .{ titleNode });
        this.logo = Inheritance.callStatic(LogoValidation, "create1", .{ logoNode });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ hashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self, hashMap: ?*HashMap) void {
        self.title = Inheritance.callStatic(TitleValidation, "create1", .{ hashMap });
        self.logo = Inheritance.callStatic(LogoValidation, "create1", .{ hashMap });
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            var titleValid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            var logoValid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            if (!Inheritance.receiverOf(Inheritance.receiver(self.title.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                titleValid = Inheritance.upcast(@TypeOf(titleValid), Boolean.FALSE);
            }
            if (!Inheritance.receiverOf(Inheritance.receiver(self.logo.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                logoValid = Inheritance.upcast(@TypeOf(logoValid), Boolean.FALSE);
            } else {
                _ = Inheritance.receiver(self.logo.?, "processLogoFile").processLogoFile();
            }
            if (!titleValid.?.booleanValue() and !logoValid.?.booleanValue()) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HeadingValidation: "), valid), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            var titleValid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            var logoValid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (!Inheritance.receiverOf(Inheritance.receiver(self.title.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                titleValid = Inheritance.upcast(@TypeOf(titleValid), Boolean.FALSE);
            }
            if (!Inheritance.receiverOf(Inheritance.receiver(self.logo.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                logoValid = Inheritance.upcast(@TypeOf(logoValid), Boolean.FALSE);
            }
            if (!titleValid.?.booleanValue() and !logoValid.?.booleanValue()) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (!valid.?.booleanValue()) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Include a title and/or logo for the header.") });
            }
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
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ HeadingData.NAME }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self.logo.?, "toXmlNode", .{ document }) });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self.title.?, "toXmlNode", .{ document }) });
        return node;
    }
};

