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
// package views.admin.storefront

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpContextView = @import("views/business/context/HttpContextView.zig").HttpContextView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AddValidationStoreFrontView = struct {
    const Self = @This();
    pub const java_name = "views.admin.storefront.AddValidationStoreFrontView";
    base: HttpContextView = undefined,
    logUtil: ?*LogUtil = null,
    newStoreFrontInterface: ?*StoreFrontInterface = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpContextView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.newStoreFrontInterface = Inheritance.cast(?*StoreFrontInterface, Inheritance.callStatic(StoreFront, "create1", .{ Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest()) }));
        if (Inheritance.receiver(this.newStoreFrontInterface.?, "getName").getName() == null) {
            _ = Inheritance.call(this.newStoreFrontInterface.?, "setName", .{ Inheritance.receiverOf(Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Object.same(Inheritance.receiver(self.newStoreFrontInterface.?, "isValid").isValid(), Boolean.FALSE)) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiver(self.newStoreFrontInterface.?, "getName").getName() }) != null) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (Inheritance.receiverOf(Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.callStatic(AbPath, "create2", .{ self.getStoreViewsPath(), StringUtil.getInstance().?.EMPTY_STRING }) }).?, "isFile").isFile()) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    // throws Exception
    pub fn getStoreViewsPath(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.newStoreFrontInterface.?, "getName").getName() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (Object.same(Inheritance.receiver(self.newStoreFrontInterface.?, "isValid").isValid(), Boolean.FALSE)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.newStoreFrontInterface.?, "validationInfo").validationInfo() });
            }
            if (Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiver(self.newStoreFrontInterface.?, "getName").getName() }) != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Store name already used<br/>") });
            }
            if (Inheritance.receiverOf(Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.callStatic(AbPath, "create2", .{ self.getStoreViewsPath(), StringUtil.getInstance().?.EMPTY_STRING }) }).?, "isFile").isFile()) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Store name clashes with template name<br/>") });
            }
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
    pub fn view(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "views").*.?.ValidationOnlyTempUtil.?, "getInstance").getInstance().?, "view", .{ self }));
    }
};

