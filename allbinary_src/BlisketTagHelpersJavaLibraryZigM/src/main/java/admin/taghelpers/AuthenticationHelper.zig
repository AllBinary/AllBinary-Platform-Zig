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
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleFactory = @import("org/allbinary/business/user/role/UserRoleFactory.zig").UserRoleFactory;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const UserEntityInterface = @import("org/allbinary/data/tables/user/UserEntityInterface.zig").UserEntityInterface;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const BooleanUtil = @import("org/allbinary/logic/java/bool/BooleanUtil.zig").BooleanUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AuthenticationHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.AuthenticationHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    authenticated: ?*String = null,
    sessionUserName: ?*String = null,
    role: ?*UserRole = null,
    timeout: ?*String = null,
    attemptsInteger: ?*Integer = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.authenticated = null;
        this.sessionUserName = null;
        this.role = null;
        this.timeout = null;
        this.attemptsInteger = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.* = Inheritance.callStatic(AuthenticationHelper, "create2", .{ hashMap, Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest()) }).*;
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
        _ = this.getFormData();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.outputSessionInfo(), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        self.authenticated = Inheritance.upcast(@TypeOf(self.authenticated), self.weblisketSession.?.getAuthentication());
        self.sessionUserName = Inheritance.upcast(@TypeOf(self.sessionUserName), self.weblisketSession.?.getUserName());
        self.role = Inheritance.upcast(@TypeOf(self.role), self.weblisketSession.?.getRole());
        self.attemptsInteger = Inheritance.upcast(@TypeOf(self.attemptsInteger), self.weblisketSession.?.getAttempts());
        self.timeout = Inheritance.upcast(@TypeOf(self.timeout), self.weblisketSession.?.getTimeout());
    }
    

    // throws Exception
    pub fn invalidateSession(self: *Self) ?*Integer {
        { // try
            _ = self.weblisketSession.?.clear();
            return Inheritance.callStatic(Integer, "create1", .{ TagSupport.EVAL_BODY_INCLUDE });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidateSession()"), e });
//             }
//             return null;
    }
    

    pub fn isSessionOld(self: *Self) ?*Boolean {
        if (self.role != null) {
            const timeCreated: i64 = self.weblisketSession.?.getCreationTime();
            const sessionTimout: i64 = self.role.?.getSessionTimeout();
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const timeFirst: i64 = calendar.?.getTimeInMillis() - sessionTimout;
            if (timeFirst > timeCreated) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Session Is Old - Timeout: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ sessionTimout });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Eval: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ timeFirst });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" > ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ timeCreated });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isSessionOld()") });
                }
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role Is Not In Session"), self, String.literal("isSessionOld()") });
            }
        }
        return Inheritance.upcast(?*Boolean, self.isRarelyUsedSession());
    }
    

    pub fn isRarelyUsedSession(self: *Self) ?*Boolean {
        if (self.role != null) {
            const timeCreated: i64 = self.weblisketSession.?.getCreationTime(); _ = timeCreated;
            const lastAccess: i64 = self.weblisketSession.?.getLastAccessedTime();
            const inactivityAllowed: i64 = self.role.?.getSessionInactivityTimeout();
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const timeFirst: i64 = calendar.?.getTimeInMillis() - lastAccess;
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Session Is Rarely Used - Timeout: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ lastAccess });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Eval: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ timeFirst });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" > ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ inactivityAllowed });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isRarelyUsedSession()") });
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role Is Not In Session"), self, String.literal("isRarelyUsedSession()") });
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validRole(self: *Self) ?*String {
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Trying New login<p/>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set valid role"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("validRole()"), e });
//             }
//             return @"error";
    }
    

    pub fn invalidRole(self: *Self) ?*String {
        { // try
            _ = Inheritance.call(self.weblisketSession.?, "setAuthenticated", .{ false });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Sorry your username and password is invalid on this page. ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Trying New login<p/>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set role invalid"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidRole()"), e });
//             }
//             return @"error";
    }
    

    // throws Exception
    pub fn isAuthenticated(self: *Self) bool {
        if (Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.authenticated })) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isAuthenticationSessionValid(self: *Self, roles: ?*BasicArrayList) ?*Boolean {
        { // try
            if (self.role != null) {
                if (self.isAuthenticated()) {
                    if (self.sessionUserName != null) {
                        const basicUserRole: ?*BasicUserRole = Inheritance.upcast(?*BasicUserRole, self.role.?.getBasicUserRole());
                        const basicUserRoleArray: []?Object = roles.?.toArray();
                        const size: i32 = @as(i32, @intCast(basicUserRoleArray.len));
                        {
                            var index: i32 = 0;
                            while (index < size) : (index += 1) {
                            const mustBeOfRole: ?*BasicUserRole = Inheritance.cast(?*BasicUserRole, basicUserRoleArray[@intCast(index)]);
                            if (Object.equals(Object.of(basicUserRole), mustBeOfRole)) {
                                if (Object.equals(Object.of(basicUserRole), UserRoleFactory.getInstance().?.CUSTOMER)) {
                                    const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
                                    const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(userEntityInterface.?, "getUser", .{ self.sessionUserName }));
                                    if (!Inheritance.receiverOf(Inheritance.receiver(userInterface.?, "isSessionValid").isSessionValid().?, "booleanValue").booleanValue()) {
                                        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                                    }
                                }
                                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                            }
                            }
                        }
                    }
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role Is Not In Session"), self, String.literal("isAuthenticationSessionValid()") });
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isAuthenticatedSessionValid()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn nextAttempt(self: *Self) void {
        if (self.attemptsInteger != null and self.attemptsInteger.?.intValue() > 0) {
            _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ self.attemptsInteger.?.intValue() + 1 }) });
        } else {
            _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ 1 }) });
        }
    }
    

    pub fn processIfNewLogin(self: *Self, userName: ?*String, password: ?*String) ?*Boolean {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Starting: "), userName), self, String.literal("processIfNewLogin()") });
            }
            if (userName != null and Inheritance.call(userName.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0 and password != null and Inheritance.call(password.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0) {
                var login: ?*String = null;
                const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
                login = Inheritance.upcast(@TypeOf(login), Inheritance.call(userEntityInterface.?, "login", .{ userName, password }));
                if (Inheritance.call(login.?, "compareTo", .{ GLOBALS2.LOGINSUCCESS }) == 0) {
                    const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.call(userEntityInterface.?, "getUser", .{ userName }));
                    if (Inheritance.receiverOf(Inheritance.receiver(userInterface.?, "isSessionValid").isSessionValid().?, "booleanValue").booleanValue()) {
                        _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ 0 }) });
                        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                    }
                }
                _ = self.nextAttempt();
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            _ = self.nextAttempt();
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processIfNewLogin()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn processInvalidation(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.timeout })) {
                _ = self.invalidateSession();
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
            {
                _ = Inheritance.call(self.weblisketSession.?, "setTimeout", .{ BooleanFactory.getInstance().?.TRUE_STRING });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processInvalidation()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn outputSessionInfo(self: *Self) ?*String {
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const timeCreated: i64 = self.weblisketSession.?.getCreationTime();
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const lastAccess: i64 = self.weblisketSession.?.getLastAccessedTime();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Time Since Last Access: "), (calendar.?.getTimeInMillis() - lastAccess)), String.literal("<br/>\n")) });
            if (self.role != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Auth: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.authenticated });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" UserName: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.sessionUserName });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Role: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.role)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>\n") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Time Left: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast((self.role.?.getSessionTimeout() - (calendar.?.getTimeInMillis() - timeCreated)))) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>\n") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Inactivity Time Allowed: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(self.role.?.getSessionTimeout())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>\n") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Inactivity Time Allowed: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(self.role.?.getSessionInactivityTimeout())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br/>\n") });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Role Is Not Set<br/>\n") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             return String.literal("Error");
    }
    

    pub fn getRole(self: *Self) ?*UserRole {
        return self.role;
    }
};

