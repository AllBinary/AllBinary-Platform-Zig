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
// package org.allbinary.business.user.modules

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
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserConfigurationDomDocumentMapping = @import("org/allbinary/business/user/modules/configuration/UserConfigurationDomDocumentMapping.zig").UserConfigurationDomDocumentMapping;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;
const UserConfigurationInterfaceFactory = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterfaceFactory.zig").UserConfigurationInterfaceFactory;
const Password = @import("org/allbinary/business/user/password/Password.zig").Password;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleB = @import("org/allbinary/business/user/role/UserRoleB.zig").UserRoleB;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const UserName = @import("org/allbinary/business/user/username/UserName.zig").UserName;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const User = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.User";
    logUtil: ?*LogUtil = null,
    userName: ?*String = null,
    prefixName: ?*String = null,
    firstName: ?*String = null,
    lastName: ?*String = null,
    middleName: ?*String = null,
    suffixName: ?*String = null,
    company: ?*String = null,
    positionAtCompany: ?*String = null,
    mainEmail: ?*String = null,
    secondaryEmail: ?*String = null,
    homePhone: ?*String = null,
    cellPhone: ?*String = null,
    workPhone: ?*String = null,
    otherContact: ?*String = null,
    electronicDevice: ?*String = null,
    fax: ?*String = null,
    role: ?*UserRole = null,
    encryption: ?*String = null,
    secret: ?*String = null,
    password: ?*Password = null,
    enable: ?*String = null,
    permissions: ?*String = null,
    userConfigurationInterface: ?*UserConfigurationInterface = null,
    // Implements UserInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.userName = null;
        this.prefixName = null;
        this.firstName = null;
        this.lastName = null;
        this.middleName = null;
        this.suffixName = null;
        this.company = null;
        this.positionAtCompany = null;
        this.mainEmail = null;
        this.secondaryEmail = null;
        this.homePhone = null;
        this.cellPhone = null;
        this.workPhone = null;
        this.otherContact = null;
        this.electronicDevice = null;
        this.fax = null;
        this.role = null;
        this.encryption = null;
        this.secret = null;
        
        this.enable = null;
        this.permissions = null;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userConfigurationInterface = Inheritance.upcast(@TypeOf(this.userConfigurationInterface), UserConfigurationInterfaceFactory.getInstance());
        this.password = Inheritance.callStatic(Password, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING });
        return this;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ Inheritance.callStatic(RequestParams, "create1", .{ request }).toHashMap() });
        this.userConfigurationInterface = Inheritance.upcast(@TypeOf(this.userConfigurationInterface), Inheritance.callStatic(UserConfigurationInterfaceFactory, "getInstance", .{ this.getRole() }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(userHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ userHashMap });
        this.userConfigurationInterface = Inheritance.upcast(@TypeOf(this.userConfigurationInterface), Inheritance.callStatic(UserConfigurationInterfaceFactory, "getInstance", .{ this.getRole() }));
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self, userHashMap: ?*HashMap) void {
        self.userName = Inheritance.upcast(@TypeOf(self.userName), Inheritance.callStatic(UserName, "create1", .{ userHashMap }).get());
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var passwordString: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.PASSWORD })) }));
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ self.userName }) and Inheritance.call(stringValidationUtil.?, "isEmpty", .{ passwordString })) {
            self.userName = Inheritance.upcast(@TypeOf(self.userName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ WeblisketSessionData.REMOVABLEUSERNAME })) }));
            passwordString = Inheritance.upcast(@TypeOf(passwordString), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ WeblisketSessionData.REMOVABLEPASSWORD })) }));
        }
        const encryption: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ EntryData.getInstance().?.ENCRYPTION })) })); _ = encryption;
        const secret: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.SECRET })) })); _ = secret;
        self.password = Inheritance.callStatic(Password, "create1", .{ passwordString });
        self.prefixName = Inheritance.upcast(@TypeOf(self.prefixName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.PREFIXNAME })) }));
        self.firstName = Inheritance.upcast(@TypeOf(self.firstName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.FIRSTNAME })) }));
        self.lastName = Inheritance.upcast(@TypeOf(self.lastName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.LASTNAME })) }));
        self.middleName = Inheritance.upcast(@TypeOf(self.middleName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.MIDDLENAME })) }));
        self.suffixName = Inheritance.upcast(@TypeOf(self.suffixName), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.SUFFIXNAME })) }));
        self.company = Inheritance.upcast(@TypeOf(self.company), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.COMPANY })) }));
        self.positionAtCompany = Inheritance.upcast(@TypeOf(self.positionAtCompany), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.POSITIONATCOMPANY })) }));
        self.mainEmail = Inheritance.upcast(@TypeOf(self.mainEmail), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.MAINEMAIL })) }));
        self.secondaryEmail = Inheritance.upcast(@TypeOf(self.secondaryEmail), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.SECONDARYEMAIL })) }));
        self.homePhone = Inheritance.upcast(@TypeOf(self.homePhone), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.HOMEPHONE })) }));
        self.cellPhone = Inheritance.upcast(@TypeOf(self.cellPhone), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.CELLPHONE })) }));
        self.workPhone = Inheritance.upcast(@TypeOf(self.workPhone), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.WORKPHONE })) }));
        self.otherContact = Inheritance.upcast(@TypeOf(self.otherContact), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.OTHERCONTACT })) }));
        self.electronicDevice = Inheritance.upcast(@TypeOf(self.electronicDevice), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.ELECTRONICDEVICE })) }));
        self.fax = Inheritance.upcast(@TypeOf(self.fax), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.FAX })) }));
        self.role = Inheritance.upcast(@TypeOf(self.role), Inheritance.callStatic(UserRoleB, "getRole", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ Object.toString(Object.of(UserRoleData.NAME)) })) }));
        self.permissions = Inheritance.upcast(@TypeOf(self.permissions), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ UserData.PERMISSIONS })) }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ self.permissions }) and Inheritance.call(self.permissions.?, "compareTo", .{ StoreFrontData.getInstance().?.NAME }) == 0) {
            self.permissions = Inheritance.upcast(@TypeOf(self.permissions), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME })) }));
        } else if (self.permissions == null) {
            self.permissions = String.literal("No Permissions");
        }
        self.enable = Inheritance.upcast(@TypeOf(self.enable), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(userHashMap.?, "get", .{ EntryData.getInstance().?.ENABLE })) }));
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (!Inheritance.receiverOf(Inheritance.call(UserName.getInstance().?, "isValid", .{ self.userName }).?, "booleanValue").booleanValue()) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (!Inheritance.receiverOf(self.password.?.isValid().?, "booleanValue").booleanValue()) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.firstName, 1, UserData.MAXLEN })) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.lastName, 1, UserData.MAXLEN })) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.mainEmail, 1, UserData.MAXLEN }) or Inheritance.call(self.mainEmail.?, "indexOf", .{ String.literal("@") }) == -1) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATIONERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(UserName, "getValidationInfo", .{ self.userName }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.password.?.getValidationInfo() });
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.firstName, 1, UserData.MAXLEN })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid First Name.<br />") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.lastName, 1, UserData.MAXLEN })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid Last Name.<br />") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.mainEmail, 1, UserData.MAXLEN }) or Inheritance.call(self.mainEmail.?, "indexOf", .{ String.literal("@") }) == -1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid email address.<br />") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.userName = value;
    }
    

    pub fn setPrefixName(self: *Self, value: ?*String) void {
        self.prefixName = value;
    }
    

    pub fn setFirstName(self: *Self, value: ?*String) void {
        self.firstName = value;
    }
    

    pub fn setLastName(self: *Self, value: ?*String) void {
        self.lastName = value;
    }
    

    pub fn setMiddleName(self: *Self, value: ?*String) void {
        self.middleName = value;
    }
    

    pub fn setSuffixName(self: *Self, value: ?*String) void {
        self.suffixName = value;
    }
    

    pub fn setCompany(self: *Self, value: ?*String) void {
        self.company = value;
    }
    

    pub fn setPositionAtCompany(self: *Self, value: ?*String) void {
        self.positionAtCompany = value;
    }
    

    pub fn setMainEmail(self: *Self, value: ?*String) void {
        self.mainEmail = value;
    }
    

    pub fn setSecondaryEmail(self: *Self, value: ?*String) void {
        self.secondaryEmail = value;
    }
    

    pub fn setHomePhone(self: *Self, value: ?*String) void {
        self.homePhone = value;
    }
    

    pub fn setCellPhone(self: *Self, value: ?*String) void {
        self.cellPhone = value;
    }
    

    pub fn setWorkPhone(self: *Self, value: ?*String) void {
        self.workPhone = value;
    }
    

    pub fn setOtherContact(self: *Self, value: ?*String) void {
        self.otherContact = value;
    }
    

    pub fn setElectronicContact(self: *Self, value: ?*String) void {
        self.electronicDevice = value;
    }
    

    pub fn setFax(self: *Self, value: ?*String) void {
        self.fax = value;
    }
    

    pub fn setRole(self: *Self, role: ?*UserRole) void {
        self.role = role;
    }
    

    pub fn setPermissions(self: *Self, value: ?*String) void {
        self.permissions = value;
    }
    

    pub fn setEncryption(self: *Self, value: ?*String) void {
        self.encryption = value;
    }
    

    pub fn setSecret(self: *Self, value: ?*String) void {
        self.secret = value;
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self.password.?, "set", .{ value });
    }
    

    pub fn enable(self: *Self) void {
        _ = Inheritance.call(self, "setEnable", .{ String.literal("Yes") });
    }
    

    pub fn disable(self: *Self) void {
        _ = Inheritance.call(self, "setEnable", .{ String.literal("No") });
    }
    

    pub fn setEnable(self: *Self, enable_: ?*String) void {
        self.enable = enable_;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getPrefixName(self: *Self) ?*String {
        return self.prefixName;
    }
    

    pub fn getFirstName(self: *Self) ?*String {
        return self.firstName;
    }
    

    pub fn getLastName(self: *Self) ?*String {
        return self.lastName;
    }
    

    pub fn getMiddleName(self: *Self) ?*String {
        return self.middleName;
    }
    

    pub fn getSuffixName(self: *Self) ?*String {
        return self.suffixName;
    }
    

    pub fn getCompany(self: *Self) ?*String {
        return self.company;
    }
    

    pub fn getPositionAtCompany(self: *Self) ?*String {
        return self.positionAtCompany;
    }
    

    pub fn getMainEmail(self: *Self) ?*String {
        return self.mainEmail;
    }
    

    pub fn getSecondaryEmail(self: *Self) ?*String {
        return self.secondaryEmail;
    }
    

    pub fn getHomePhone(self: *Self) ?*String {
        return self.homePhone;
    }
    

    pub fn getCellPhone(self: *Self) ?*String {
        return self.cellPhone;
    }
    

    pub fn getWorkPhone(self: *Self) ?*String {
        return self.workPhone;
    }
    

    pub fn getOtherContact(self: *Self) ?*String {
        return self.otherContact;
    }
    

    pub fn getElectronicContact(self: *Self) ?*String {
        return self.electronicDevice;
    }
    

    pub fn getFax(self: *Self) ?*String {
        return self.fax;
    }
    

    pub fn getRole(self: *Self) ?*UserRole {
        return self.role;
    }
    

    pub fn getPermissions(self: *Self) ?*String {
        return self.permissions;
    }
    

    pub fn getEncryption(self: *Self) ?*String {
        return self.encryption;
    }
    

    pub fn getSecret(self: *Self) ?*String {
        return self.secret;
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.password.?.get());
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(values.?, "add", .{ self.userName });
        _ = Inheritance.call(values.?, "add", .{ self.prefixName });
        _ = Inheritance.call(values.?, "add", .{ self.firstName });
        _ = Inheritance.call(values.?, "add", .{ self.lastName });
        _ = Inheritance.call(values.?, "add", .{ self.middleName });
        _ = Inheritance.call(values.?, "add", .{ self.suffixName });
        _ = Inheritance.call(values.?, "add", .{ self.company });
        _ = Inheritance.call(values.?, "add", .{ self.positionAtCompany });
        _ = Inheritance.call(values.?, "add", .{ self.mainEmail });
        _ = Inheritance.call(values.?, "add", .{ self.secondaryEmail });
        _ = Inheritance.call(values.?, "add", .{ self.homePhone });
        _ = Inheritance.call(values.?, "add", .{ self.cellPhone });
        _ = Inheritance.call(values.?, "add", .{ self.workPhone });
        _ = Inheritance.call(values.?, "add", .{ self.otherContact });
        _ = Inheritance.call(values.?, "add", .{ self.electronicDevice });
        _ = Inheritance.call(values.?, "add", .{ self.fax });
        _ = Inheritance.call(values.?, "add", .{ Object.toString(Object.of(self.getRole())) });
        const userConfigurationDomDocumentMapping: ?*UserConfigurationDomDocumentMapping = Inheritance.callStatic(UserConfigurationDomDocumentMapping, "create1", .{ self.getUserConfigurationInterface() });
        _ = Inheritance.call(values.?, "add", .{ userConfigurationDomDocumentMapping.?.toDomDocumentString() });
        _ = Inheritance.call(values.?, "add", .{ self.permissions });
        _ = Inheritance.call(values.?, "addAllList", .{ Inheritance.call(self.password.?, "toVector", .{ self.secret }) });
        _ = Inheritance.call(values.?, "add", .{ self.enable });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ time });
        return values;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ UserData.USERNAME, self.userName });
        _ = Inheritance.call(values.?, "put", .{ UserData.PREFIXNAME, self.prefixName });
        _ = Inheritance.call(values.?, "put", .{ UserData.FIRSTNAME, self.firstName });
        _ = Inheritance.call(values.?, "put", .{ UserData.LASTNAME, self.lastName });
        _ = Inheritance.call(values.?, "put", .{ UserData.MIDDLENAME, self.middleName });
        _ = Inheritance.call(values.?, "put", .{ UserData.SUFFIXNAME, self.suffixName });
        _ = Inheritance.call(values.?, "put", .{ UserData.COMPANY, self.company });
        _ = Inheritance.call(values.?, "put", .{ UserData.POSITIONATCOMPANY, self.positionAtCompany });
        _ = Inheritance.call(values.?, "put", .{ UserData.MAINEMAIL, self.mainEmail });
        _ = Inheritance.call(values.?, "put", .{ UserData.SECONDARYEMAIL, self.secondaryEmail });
        _ = Inheritance.call(values.?, "put", .{ UserData.HOMEPHONE, self.homePhone });
        _ = Inheritance.call(values.?, "put", .{ UserData.CELLPHONE, self.cellPhone });
        _ = Inheritance.call(values.?, "put", .{ UserData.WORKPHONE, self.workPhone });
        _ = Inheritance.call(values.?, "put", .{ UserData.OTHERCONTACT, self.otherContact });
        _ = Inheritance.call(values.?, "put", .{ UserData.ELECTRONICDEVICE, self.electronicDevice });
        _ = Inheritance.call(values.?, "put", .{ UserData.FAX, self.fax });
        if (self.getRole() != null) {
            _ = Inheritance.call(values.?, "put", .{ Object.toString(Object.of(UserRoleData.NAME)), Object.toString(Object.of(self.getRole())) });
        }
        const userConfigurationDomDocumentMapping: ?*UserConfigurationDomDocumentMapping = Inheritance.callStatic(UserConfigurationDomDocumentMapping, "create1", .{ self.getUserConfigurationInterface() });
        _ = Inheritance.call(values.?, "put", .{ UserData.CONFIGURATION, userConfigurationDomDocumentMapping.?.toDomDocumentString() });
        _ = Inheritance.call(values.?, "put", .{ UserData.PERMISSIONS, self.permissions });
        _ = Inheritance.call(values.?, "putAll", .{ Inheritance.call(self.password.?, "toHashMap", .{ self.secret }) });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.ENABLE, self.enable });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return Inheritance.upcast(?*HashMap, values);
    }
    

    pub fn toPasswordHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, Inheritance.call(self.password.?, "toHashMap", .{ self.secret }));
    }
    

    pub fn validateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        _ = weblisketSession.?.setAuthenticated();
        _ = Inheritance.call(weblisketSession.?, "setRole", .{ self.getRole() });
        _ = Inheritance.call(weblisketSession.?, "setUserName", .{ self.getUserName() });
    }
    

    pub fn updateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        _ = weblisketSession;
        _ = self;
    }
    

    pub fn isSessionValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.userName);
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
    

    pub fn getUserConfigurationInterface(self: *Self) ?*UserConfigurationInterface {
        return self.userConfigurationInterface;
    }
    

    pub fn setUserConfigurationInterface(self: *Self, userConfigurationInterface: ?*UserConfigurationInterface) void {
        self.userConfigurationInterface = userConfigurationInterface;
    }
};

