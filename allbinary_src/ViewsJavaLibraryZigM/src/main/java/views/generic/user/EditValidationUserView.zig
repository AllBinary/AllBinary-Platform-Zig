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
// package views.generic.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const UserName = @import("org/allbinary/business/user/username/UserName.zig").UserName;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const UserView = @import("views/generic/user/UserView.zig").UserView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const EditValidationUserView = struct {
    const Self = @This();
    pub const java_name = "views.generic.user.EditValidationUserView";
    base: UserView = undefined,
    logUtil: ?*LogUtil = null,
    userName: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(UserView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.userName = Inheritance.upcast(@TypeOf(this.userName), Inheritance.receiverOf(Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Object.same(Inheritance.call(UserName.getInstance().?, "isValid", .{ self.userName }), Boolean.TRUE)) {
                Inheritance.fieldPointer(self, "user").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "user").*), Inheritance.call(UserEntityFactory.getInstance().?, "getUser", .{ self.userName }));
                if (Inheritance.fieldPointer(self, "user").* == null) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            } else {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            return Inheritance.upcast(?*Boolean, Inheritance.receiverOf(Inheritance.fieldPointer(self, "user").*.?, "isValid").isValid());
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
            if (Inheritance.receiverOf(Inheritance.call(UserName.getInstance().?, "isValid", .{ self.userName }).?, "booleanValue").booleanValue()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("User Name is valid"), self, String.literal("validationInfo()") });
                }
                Inheritance.fieldPointer(self, "user").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "user").*), Inheritance.call(UserEntityFactory.getInstance().?, "getUser", .{ self.userName }));
                if (Inheritance.fieldPointer(self, "user").* == null) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("User does not exist.<br />") });
                    return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
                }
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("User Name is not valid.<br />") });
                return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            }
            if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "user").*.?, "isValid").isValid(), Boolean.FALSE)) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("User exists but is invalid - Probably manually modified"), self, String.literal("validationInfo()") });
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("User data is not valid - Please call administrator.<br />") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "user").*.?, "validationInfo").validationInfo() });
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
};

