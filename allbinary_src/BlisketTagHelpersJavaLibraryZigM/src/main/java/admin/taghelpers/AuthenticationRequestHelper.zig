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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const Password = @import("org/allbinary/business/user/password/Password.zig").Password;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const UserEntityInterface = @import("org/allbinary/data/tables/user/UserEntityInterface.zig").UserEntityInterface;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const NewPasswordEmail = @import("org/allbinary/logic/communication/smtp/email/NewPasswordEmail.zig").NewPasswordEmail;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AuthenticationRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.AuthenticationRequestHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    weblisketSession: ?*WeblisketSession = null,
    request: ?*HttpServletRequest = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(hashMap: ?*HashMap, httpServletRequest: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, httpServletRequest });
        this.request = httpServletRequest;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn generateNewPassword(self: *Self) ?*String {
        if (self.weblisketSession != null and self.weblisketSession.?.getId() != null) {
            const startIndex: i32 = Inheritance.receiverOf(self.weblisketSession.?.getId().?, "length").length();
            if (startIndex >= 8) {
                return Inheritance.upcast(?*String, Inheritance.call(self.weblisketSession.?.getId().?, "substring", .{ startIndex - 8 }));
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Error Generating New Password"); break :exception error.Exception; }});
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Session Available For Generating New Password"); break :exception error.Exception; }});
        }
    }
    

    pub fn newPassword(self: *Self) ?*Boolean {
        { // try
            const userName: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEUSERNAME }));
            const email: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ UserData.MAINEMAIL }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Generating New Password For: "), userName), self, String.literal("newPassword()") });
            }
            const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
            const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(userEntityInterface.?, "getUser", .{ userName }));
            if (Inheritance.call(Inheritance.receiver(userInterface.?, "getMainEmail").getMainEmail().?, "compareTo", .{ email }) != 0) {
                if (Inheritance.receiver(userInterface.?, "getSecondaryEmail").getSecondaryEmail() != null and Inheritance.call(Inheritance.receiver(userInterface.?, "getSecondaryEmail").getSecondaryEmail().?, "compareTo", .{ email }) != 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Requested Email Is Not In User Profile"), self, String.literal("newPassword()") });
                    }
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            const newPassword_: ?*String = Inheritance.upcast(?*String, self.generateNewPassword());
            _ = Inheritance.call(userInterface.?, "setPassword", .{ newPassword_ });
            const newPasswordHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(userInterface.?, "toPasswordHashMap").toPasswordHashMap());
            _ = Inheritance.call(UserEntityFactory.getInstance().?, "update", .{ userName, newPasswordHashMap });
            _ = Inheritance.callStatic(NewPasswordEmail, "create3", .{ self.abeClientInformation, userInterface, newPassword_ }).process();
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Generated New Password For: "), userName), self, String.literal("newPassword()") });
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("newPassword()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn changePassword(self: *Self) ?*Boolean {
        { // try
            const userName: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEUSERNAME }));
            const passwordString: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEPASSWORD }));
            const newPassword_: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLENEWPASSWORD }));
            const newReenteredPassword: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEREENTERNEWPASSWORD }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Changing Password For User: "), userName), self, String.literal("changePassword()") });
            }
            const password: ?*Password = Inheritance.callStatic(Password, "create1", .{ newPassword_ });
            if (!Inheritance.receiverOf(password.?.isValid().?, "booleanValue").booleanValue()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New Password Is Not Valid"), self, String.literal("changePassword()") });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Inheritance.call(newPassword_.?, "compareTo", .{ newReenteredPassword }) != 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New Password Fields Do Not Match"), self, String.literal("changePassword()") });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const sessionPassword: ?*String = Inheritance.upcast(?*String, self.weblisketSession.?.getPassword()); _ = sessionPassword;
            const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
            const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(userEntityInterface.?, "getUser", .{ userName }));
            const login: ?*String = Inheritance.upcast(?*String, Inheritance.call(userEntityInterface.?, "login", .{ userName, passwordString }));
            if (Inheritance.call(login.?, "compareTo", .{ GLOBALS2.LOGINSUCCESS }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Authentication Successful"), self, String.literal("changePassword()") });
                }
                const newPasswordHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(password.?, "toHashMap", .{ null }));
                _ = Inheritance.call(UserEntityFactory.getInstance().?, "update", .{ userName, newPasswordHashMap });
                _ = Inheritance.callStatic(NewPasswordEmail, "create3", .{ self.abeClientInformation, userInterface, newPassword_ }).process();
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Authentication Failed"), self, String.literal("changePassword()") });
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Authentication Failed"), self, String.literal("changePassword()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn isRoleValid(self: *Self, userName: ?*String, password: ?*String, roles: ?*BasicArrayList) ?*Boolean {
        _ = password;
        { // try
            const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
            const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(userEntityInterface.?, "getUser", .{ userName }));
            if (Inheritance.receiver(userInterface.?, "getRole").getRole() == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Role is null: "), Inheritance.receiver(userInterface.?, "getRole").getRole()), String.literal(" Valid Roles: ")), Object.toString(Object.of(roles))), self, String.literal("isRoleValid()") });
                }
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const basicUserRoleArray: []?Object = roles.?.toArray();
            const size: i32 = @as(i32, @intCast(basicUserRoleArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const nextRole: ?*BasicUserRole = Inheritance.cast(?*BasicUserRole, basicUserRoleArray[@intCast(index)]);
                if (Object.equals(Object.of(Inheritance.receiverOf(Inheritance.receiver(userInterface.?, "getRole").getRole().?, "getBasicUserRole").getBasicUserRole()), nextRole)) {
                    _ = Inheritance.call(userInterface.?, "validateSession", .{ Inheritance.cast(?*WeblisketSessionInterface, self.weblisketSession) });
                    _ = Inheritance.call(self.request.?, "removeAttribute", .{ WeblisketSessionData.REMOVABLEUSERNAME });
                    _ = Inheritance.call(self.request.?, "removeAttribute", .{ WeblisketSessionData.REMOVABLEPASSWORD });
                    return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                }
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Role is not valid: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.receiver(userInterface.?, "getRole").getRole())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Valid Roles: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(roles)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isRoleValid()") });
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isRoleValid()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

