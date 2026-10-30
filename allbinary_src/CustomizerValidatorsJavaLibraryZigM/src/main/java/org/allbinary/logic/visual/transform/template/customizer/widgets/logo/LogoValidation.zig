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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const HttpRequestUtil = @import("org/allbinary/logic/communication/http/request/HttpRequestUtil.zig").HttpRequestUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Validation = @import("org/allbinary/logic/control/validate/Validation.zig").Validation;
const FileData = @import("org/allbinary/logic/io/file/FileData.zig").FileData;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const LogoData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData.zig").LogoData;
const LogoImageFileUtil = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoImageFileUtil.zig").LogoImageFileUtil;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const LogoValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation";
    base: Validation = undefined,
    logUtil: ?*LogUtil = null,
    logoFileItem: ?*FileItem = null,
    logoAbPath: ?*AbPath = null,
    logoFile: ?*String = null,
    isFile: bool = false,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.logoFileItem = null;
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.isFile = false;
        this.logoAbPath = null;
        this.logoFile = null;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.isFile = false;
        this.logoAbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.receiverOf(Inheritance.callStatic(DomSearchHelper, "getNode", .{ LogoData.getInstance().?.IMAGEPATH, node.?.getChildNodes() }).?, "getNodeValue").getNodeValue(), StringUtil.getInstance().?.EMPTY_STRING });
        this.logoFile = Inheritance.upcast(@TypeOf(this.logoFile), Inheritance.receiverOf(Inheritance.callStatic(DomSearchHelper, "getNode", .{ LogoData.getInstance().?.IMAGEFILENAME, node.?.getChildNodes() }).?, "getNodeValue").getNodeValue());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Validation.create().*;
        this.initFields();
        this.isFile = true;
        _ = Inheritance.call(this, "getFormData", .{ hashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self, hashMap: ?*HashMap) void {
        self.logoFileItem = Inheritance.cast(?*FileItem, Inheritance.call(hashMap.?, "get", .{ LogoData.getInstance().?.IMAGE }));
        self.logoAbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ LogoData.getInstance().?.IMAGEPATH })), StringUtil.getInstance().?.EMPTY_STRING });
        if (self.logoFileItem != null) {
            self.logoFile = Inheritance.upcast(@TypeOf(self.logoFile), Inheritance.call(HttpRequestUtil.getInstance().?, "generateFileName", .{ self.logoFileItem.?.getName() }));
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("HashMap: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(hashMap)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nLogoFileName: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.logoFile });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getFormData()") });
        }
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            const valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("LogoValidation"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ Object.toString(Object.of(self.logoAbPath)), 0, 512 })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("logoPath is invalid: "), Object.toString(Object.of(self.logoAbPath))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.logoFile, fileData.?.MINLEN, fileData.?.MAXLEN })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("logoFile is invalid: "), self.logoFile), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (self.isFile) {
                if (self.logoFileItem == null) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
                if (self.logoFileItem.?.getSize() > fileData.?.MAXIMAGEFILESIZE or self.logoFileItem.?.getSize() < fileData.?.MINIMAGEFILESIZE) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Image File Is Not The Right Size. "), fileData.?.MINIMAGEFILESIZE), String.literal("< > ")), fileData.?.MAXIMAGEFILESIZE), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                    }
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Logo Validation: "), valid), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
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
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Logo is not valid.") });
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
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ LogoData.getInstance().?.IMAGE, stringUtil.?.EMPTY_STRING });
        if (self.logoFile != null) {
            _ = Inheritance.call(hashMap.?, "put", .{ LogoData.getInstance().?.IMAGEPATH, Object.toString(Object.of(self.logoAbPath)) });
            _ = Inheritance.call(hashMap.?, "put", .{ LogoData.getInstance().?.IMAGEFILENAME, self.logoFile });
        } else {
            _ = Inheritance.call(hashMap.?, "put", .{ LogoData.getInstance().?.IMAGEPATH, null });
            _ = Inheritance.call(hashMap.?, "put", .{ LogoData.getInstance().?.IMAGEFILENAME, self.logoFile });
        }
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, LogoData.getInstance().?.NAME, hashMap }));
    }
    

    // throws Exception
    pub fn processLogoFile(self: *Self) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Processing logoFile: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.logoAbPath)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.logoFile });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("processLogoFile()") });
        }
        _ = Inheritance.call(Inheritance.callStatic(LogoImageFileUtil, "create2", .{ self.logoAbPath, self.logoFile }), "saveFiles", .{ self.logoFileItem });
    }
};

