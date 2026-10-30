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
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreFrontComponent = @import("views/admin/storefront/StoreFrontComponent.zig").StoreFrontComponent;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DeleteValidationStoreFrontView = struct {
    const Self = @This();
    pub const java_name = "views.admin.storefront.DeleteValidationStoreFrontView";
    base: StoreFrontComponent = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(StoreFrontComponent, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "isNameValid").isNameValid(), Boolean.FALSE)) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "getName").getName() }) == null) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            Inheritance.fieldPointer(self, "newStoreFrontInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "getName").getName() }));
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "isNameValid").isNameValid(), Boolean.FALSE)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "nameValidationInfo").nameValidationInfo() });
            }
            if (Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "newStoreFrontInterface").*.?, "getName").getName() }) == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(Inheritance.fieldPointer(self, "newStoreFrontInterface").*, String.literal(" does not exist.<br>")) });
            }
            return String.literal("Unkown Error");
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
};

