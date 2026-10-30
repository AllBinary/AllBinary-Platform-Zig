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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const InstallerInfo = @import("org/allbinary/business/init/InstallerInfo.zig").InstallerInfo;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const BasicUserRoleFactory = @import("org/allbinary/business/user/role/BasicUserRoleFactory.zig").BasicUserRoleFactory;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const BasicWeblisketSession = @import("org/allbinary/logic/communication/http/request/session/BasicWeblisketSession.zig").BasicWeblisketSession;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const BooleanUtil = @import("org/allbinary/logic/java/bool/BooleanUtil.zig").BooleanUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const FileAuthenticationTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.FileAuthenticationTag";
    base: CustomTagSupport = undefined,
    logUtil: ?*LogUtil = null,
    attemptsInteger: ?*Integer = null,
    weblisketSession: ?*BasicWeblisketSession = null,
    request: ?*HttpServletRequest = null,
    command: ?*String = null,
    userName: ?*String = null,
    password: ?*String = null,
    newPassword: ?*String = null,
    authenticated: ?*String = null,
    sessionUserName: ?*String = null,
    role: ?*BasicUserRole = null,
    timeout: ?*String = null,
    roles: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.attemptsInteger = null;
        this.weblisketSession = null;
        this.request = null;
        this.command = null;
        this.userName = null;
        this.password = null;
        this.newPassword = null;
        this.authenticated = null;
        this.sessionUserName = null;
        this.role = null;
        this.timeout = null;
        this.roles = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn setUserName(self: *Self, userName: ?*String) void {
        self.userName = userName;
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        self.password = value;
    }
    

    pub fn setNewPassword(self: *Self, value: ?*String) void {
        self.newPassword = value;
    }
    

    pub fn setRoles(self: *Self, values: ?*BasicArrayList) void {
        self.roles = values;
    }
    

    pub fn makeSessionValid(self: *Self, storedRole: ?*BasicUserRole, userName: ?*String) void {
        _ = self.weblisketSession.?.setAuthenticated();
        _ = Inheritance.call(self.weblisketSession.?, "setRole", .{ storedRole });
        _ = Inheritance.call(self.weblisketSession.?, "setUserName", .{ userName });
        _ = Inheritance.call(self.request.?, "removeAttribute", .{ WeblisketSessionData.REMOVABLEUSERNAME });
        _ = Inheritance.call(self.request.?, "removeAttribute", .{ WeblisketSessionData.REMOVABLEPASSWORD });
    }
    

    pub fn getFormData(self: *Self) void {
        self.authenticated = Inheritance.upcast(@TypeOf(self.authenticated), self.weblisketSession.?.getAuthentication());
        self.sessionUserName = Inheritance.upcast(@TypeOf(self.sessionUserName), self.weblisketSession.?.getUserName());
        self.role = Inheritance.upcast(@TypeOf(self.role), self.weblisketSession.?.getRole());
        self.attemptsInteger = Inheritance.upcast(@TypeOf(self.attemptsInteger), self.weblisketSession.?.getAttempts());
        self.timeout = Inheritance.upcast(@TypeOf(self.timeout), self.weblisketSession.?.getTimeout());
    }
    

    pub fn nextAttempt(self: *Self) void {
        if (self.attemptsInteger != null and self.attemptsInteger.?.intValue() > 0) {
            _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ self.attemptsInteger.?.intValue() + 1 }) });
        } else {
            _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ 1 }) });
        }
    }
    

    // throws LicensingException
    pub fn changePassword(self: *Self) bool {
        { // try
            const userName: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEUSERNAME }));
            const password: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEPASSWORD }));
            const newPassword: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLENEWPASSWORD }));
            const newReenteredPassword: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.request.?, "getParameter", .{ WeblisketSessionData.REMOVABLEREENTERNEWPASSWORD }));
            if (Inheritance.call(newPassword.?, "compareTo", .{ newReenteredPassword }) != 0) {
                return false;
            }
            const installerInfo: ?*InstallerInfo = InstallerInfo.create();
            if (Inheritance.call(installerInfo.?, "isValid", .{ userName, password })) {
                _ = Inheritance.call(installerInfo.?, "setPassword", .{ newPassword });
                _ = installerInfo.?.write();
                _ = Inheritance.call(self.weblisketSession.?, "setUserName", .{ userName });
                _ = Inheritance.call(self.weblisketSession.?, "setPassword", .{ newPassword });
                return true;
            }
            return false;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidateSession()"), e });
//             }
//             return false;
    }
    

    pub fn invalidateSession(self: *Self) i32 {
        { // try
            _ = self.weblisketSession.?.clear();
            return Inheritance.callStatic(Integer, "create1", .{ TagSupport.EVAL_BODY_INCLUDE }).intValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidateSession()"), e });
//             }
//             return TagSupport.SKIP_BODY;
    }
    

    // throws LicensingException
    pub fn isSessionOld(self: *Self) bool {
        { // try
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
                    return Inheritance.receiverOf(Boolean.TRUE.?, "booleanValue").booleanValue();
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role Is Not In Session"), self, String.literal("isSessionOld()") });
                }
            }
            return Inheritance.receiverOf(self.isRarelyUsedSession().?, "booleanValue").booleanValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isSessionOld()"), e });
//             }
//             return false;
    }
    

    pub fn isRarelyUsedSession(self: *Self) ?*Boolean {
        if (self.role != null) {
            const timeCreated: i64 = self.weblisketSession.?.getCreationTime(); _ = timeCreated;
            const lastAccess: i64 = self.weblisketSession.?.getLastAccessedTime();
            const timePassed: i64 = self.role.?.getSessionInactivityTimeout();
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const timeFirst: i64 = calendar.?.getTimeInMillis() - lastAccess;
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Session Is Rarely Used - Timeout: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ lastAccess });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Eval: ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ timeFirst });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" > ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ timePassed });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isRarelyUsedSession()") });
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.AUTHENTICATION })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role Is Not In Session"), self, String.literal("isRarelyUsedSession()") });
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    // throws LicensingException
    pub fn isRoleValid(self: *Self) bool {
        { // try
            _ = Inheritance.call(self, "makeSessionValid", .{ BasicUserRoleFactory.getInstance().?.INSTALLER, self.userName });
            return Inheritance.receiverOf(Boolean.TRUE.?, "booleanValue").booleanValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isRoleValid()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn validRole(self: *Self) ?*String {
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Trying New login<p>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set valid role"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("validRole()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn invalidRole(self: *Self) ?*String {
        { // try
            _ = Inheritance.call(self.weblisketSession.?, "setAuthenticated", .{ false });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Sorry your username and password is invalid on this page.") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Trying New login<p>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set role invalid"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidRole()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn isAuthenticationSessionValid(self: *Self) bool {
        { // try
            if (Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.authenticated })) {
                const size: i32 = self.roles.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const mustBeOfRole: ?*BasicUserRole = Inheritance.cast(?*BasicUserRole, Inheritance.call(self.roles.?, "get", .{ index }));
                    if (self.sessionUserName != null and Object.equals(Object.of(self.role), mustBeOfRole)) {
                        return Inheritance.receiverOf(Boolean.TRUE.?, "booleanValue").booleanValue();
                    }
                    }
                }
                return Inheritance.receiverOf(Boolean.FALSE.?, "booleanValue").booleanValue();
            }
            return Inheritance.receiverOf(Boolean.FALSE.?, "booleanValue").booleanValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isAuthenticationSessionValid()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn processIfNewLogin(self: *Self) bool {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Starting for User: "), self.userName), String.literal(" Attempt: ")), self.weblisketSession.?.getAttempts()), self, String.literal("processIfNewLogin()") });
            }
            if (self.userName != null and Inheritance.call(self.userName.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0 and self.password != null and Inheritance.call(self.password.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0) {
                var login: ?*String = null;
                const installerInfo: ?*InstallerInfo = InstallerInfo.create();
                if (Inheritance.call(installerInfo.?, "isValid", .{ self.userName, self.password })) {
                    login = Inheritance.upcast(@TypeOf(login), org.allbinary.?.globals.?.GLOBALS2.?.LOGINSUCCESS);
                } else {
                    login = Inheritance.upcast(@TypeOf(login), org.allbinary.?.globals.?.GLOBALS2.?.LOGINFAILED);
                }
                if (Inheritance.call(login.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.LOGINSUCCESS }) == 0) {
                    _ = Inheritance.call(self.weblisketSession.?, "setAttempts", .{ Inheritance.callStatic(Integer, "create1", .{ 0 }) });
                    return Inheritance.receiverOf(Boolean.TRUE.?, "booleanValue").booleanValue();
                }
                _ = self.nextAttempt();
                return Inheritance.receiverOf(Boolean.FALSE.?, "booleanValue").booleanValue();
            }
            _ = self.nextAttempt();
            return Inheritance.receiverOf(Boolean.FALSE.?, "booleanValue").booleanValue();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processIfNewLogin()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn processInvalidation(self: *Self) bool {
        { // try
            if (Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.timeout })) {
                _ = self.invalidateSession();
                return Inheritance.receiverOf(Boolean.TRUE.?, "booleanValue").booleanValue();
            }
            {
                _ = Inheritance.call(self.weblisketSession.?, "setTimeout", .{ BooleanFactory.getInstance().?.TRUE_STRING });
                return Inheritance.receiverOf(Boolean.FALSE.?, "booleanValue").booleanValue();
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isSetToInvalidate()"), e });
//             }
//             return false;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            self.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getRequest").getRequest());
            self.weblisketSession = Inheritance.callStatic(BasicWeblisketSession, "create1", .{ Inheritance.fieldPointer(self, "pageContext").* });
            _ = self.getFormData();
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Started"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            if (self.command != null) {
                if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.CHANGEPASSWORD }) == 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Change Password"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    if (!self.changePassword()) {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Password Change Attempt Failed.<p>") });
                        return EVAL_BODY_INCLUDE;
                    } else {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Password Changed Successfully.<p>") });
                        return SKIP_BODY;
                    }
                } else if (Inheritance.call(self.command.?, "compareTo", .{ WeblisketSessionData.INVALIDATESESSION }) == 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("INVALIDATESESSION"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    return self.invalidateSession();
                } else {
                    if (self.isSessionOld()) {
                        if (self.processInvalidation()) {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing Invalidation"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Please login again.<p>") });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return TagSupport.SKIP_BODY;
                            } else {
                                return TagSupport.EVAL_BODY_INCLUDE;
                            }
                        } else {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Preparing session for invalidation"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return TagSupport.SKIP_BODY;
                            } else {
                                return TagSupport.EVAL_BODY_INCLUDE;
                            }
                        }
                    }
                    if ((self.userName == null or Inheritance.call(self.userName.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) and (self.password == null or Inheritance.call(self.password.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) and self.roles != null and self.isAuthenticationSessionValid()) {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Authenticated session is valid"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                            return TagSupport.EVAL_BODY_INCLUDE;
                        } else {
                            return TagSupport.SKIP_BODY;
                        }
                    }
                    if (self.userName != null and self.password != null and self.processIfNewLogin()) {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing new login."), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (self.isRoleValid()) {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role is valid - Processing new login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.validRole() });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return EVAL_BODY_INCLUDE;
                            } else {
                                return SKIP_BODY;
                            }
                        } else {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role is not valid - Processing new login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.invalidRole() });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return SKIP_BODY;
                            } else {
                                return EVAL_BODY_INCLUDE;
                            }
                        }
                    } else {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Invalid Login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (self.userName != null and Inheritance.call(self.userName.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0 and self.password != null and Inheritance.call(self.password.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) != 0) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Sorry your username and/or password is invalid.<p>") });
                        }
                    }
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Major authentication error - userName: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ self.userName });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Password: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ self.password });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Command: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ self.command });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                        return TagSupport.SKIP_BODY;
                    } else {
                        return TagSupport.EVAL_BODY_INCLUDE;
                    }
                }
            }
            return SKIP_BODY;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

