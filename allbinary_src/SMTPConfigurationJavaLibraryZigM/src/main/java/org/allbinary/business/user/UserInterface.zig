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
// package org.allbinary.business.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

// Java interface: an implementation is a pointer and a table of functions
pub const UserInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.UserInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPrefixNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFirstNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setLastNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setMiddleNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSuffixNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCompanyFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPositionAtCompanyFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setMainEmailFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSecondaryEmailFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setHomePhoneFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCellPhoneFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setWorkPhoneFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setOtherContactFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setElectronicContactFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFaxFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setRoleFn: *const fn (pointer: *anyopaque, aRole: ?*UserRole) void,
    setEncryptionFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSecretFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPermissionsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    enableFn: *const fn (pointer: *anyopaque) void,
    setEnableFn: *const fn (pointer: *anyopaque, enable_: ?*String) void,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getPrefixNameFn: *const fn (pointer: *anyopaque) ?*String,
    getFirstNameFn: *const fn (pointer: *anyopaque) ?*String,
    getLastNameFn: *const fn (pointer: *anyopaque) ?*String,
    getMiddleNameFn: *const fn (pointer: *anyopaque) ?*String,
    getSuffixNameFn: *const fn (pointer: *anyopaque) ?*String,
    getCompanyFn: *const fn (pointer: *anyopaque) ?*String,
    getPositionAtCompanyFn: *const fn (pointer: *anyopaque) ?*String,
    getMainEmailFn: *const fn (pointer: *anyopaque) ?*String,
    getSecondaryEmailFn: *const fn (pointer: *anyopaque) ?*String,
    getHomePhoneFn: *const fn (pointer: *anyopaque) ?*String,
    getCellPhoneFn: *const fn (pointer: *anyopaque) ?*String,
    getWorkPhoneFn: *const fn (pointer: *anyopaque) ?*String,
    getOtherContactFn: *const fn (pointer: *anyopaque) ?*String,
    getElectronicContactFn: *const fn (pointer: *anyopaque) ?*String,
    getFaxFn: *const fn (pointer: *anyopaque) ?*String,
    getRoleFn: *const fn (pointer: *anyopaque) ?*UserRole,
    getEncryptionFn: *const fn (pointer: *anyopaque) ?*String,
    getSecretFn: *const fn (pointer: *anyopaque) ?*String,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getPermissionsFn: *const fn (pointer: *anyopaque) ?*String,
    getUserConfigurationInterfaceFn: *const fn (pointer: *anyopaque) ?*UserConfigurationInterface,
    setUserConfigurationInterfaceFn: *const fn (pointer: *anyopaque, userConfigurationInterface: ?*UserConfigurationInterface) void,
    toPasswordHashMapFn: *const fn (pointer: *anyopaque) ?*HashMap,
    validateSessionFn: *const fn (pointer: *anyopaque, weblisketSession: ?*WeblisketSessionInterface) void,
    updateSessionFn: *const fn (pointer: *anyopaque, weblisketSession: ?*WeblisketSessionInterface) void,
    isSessionValidFn: *const fn (pointer: *anyopaque) ?*Boolean,

    pub fn setUserName(self: *Self, value: ?*String) void {
        return self.setUserNameFn(self.pointer, value);
    }

    pub fn setPrefixName(self: *Self, value: ?*String) void {
        return self.setPrefixNameFn(self.pointer, value);
    }

    pub fn setFirstName(self: *Self, value: ?*String) void {
        return self.setFirstNameFn(self.pointer, value);
    }

    pub fn setLastName(self: *Self, value: ?*String) void {
        return self.setLastNameFn(self.pointer, value);
    }

    pub fn setMiddleName(self: *Self, value: ?*String) void {
        return self.setMiddleNameFn(self.pointer, value);
    }

    pub fn setSuffixName(self: *Self, value: ?*String) void {
        return self.setSuffixNameFn(self.pointer, value);
    }

    pub fn setCompany(self: *Self, value: ?*String) void {
        return self.setCompanyFn(self.pointer, value);
    }

    pub fn setPositionAtCompany(self: *Self, value: ?*String) void {
        return self.setPositionAtCompanyFn(self.pointer, value);
    }

    pub fn setMainEmail(self: *Self, value: ?*String) void {
        return self.setMainEmailFn(self.pointer, value);
    }

    pub fn setSecondaryEmail(self: *Self, value: ?*String) void {
        return self.setSecondaryEmailFn(self.pointer, value);
    }

    pub fn setHomePhone(self: *Self, value: ?*String) void {
        return self.setHomePhoneFn(self.pointer, value);
    }

    pub fn setCellPhone(self: *Self, value: ?*String) void {
        return self.setCellPhoneFn(self.pointer, value);
    }

    pub fn setWorkPhone(self: *Self, value: ?*String) void {
        return self.setWorkPhoneFn(self.pointer, value);
    }

    pub fn setOtherContact(self: *Self, value: ?*String) void {
        return self.setOtherContactFn(self.pointer, value);
    }

    pub fn setElectronicContact(self: *Self, value: ?*String) void {
        return self.setElectronicContactFn(self.pointer, value);
    }

    pub fn setFax(self: *Self, value: ?*String) void {
        return self.setFaxFn(self.pointer, value);
    }

    pub fn setRole(self: *Self, aRole: ?*UserRole) void {
        return self.setRoleFn(self.pointer, aRole);
    }

    pub fn setEncryption(self: *Self, value: ?*String) void {
        return self.setEncryptionFn(self.pointer, value);
    }

    pub fn setSecret(self: *Self, value: ?*String) void {
        return self.setSecretFn(self.pointer, value);
    }

    pub fn setPassword(self: *Self, value: ?*String) void {
        return self.setPasswordFn(self.pointer, value);
    }

    pub fn setPermissions(self: *Self, value: ?*String) void {
        return self.setPermissionsFn(self.pointer, value);
    }

    pub fn enable(self: *Self) void {
        return self.enableFn(self.pointer);
    }

    pub fn setEnable(self: *Self, enable_: ?*String) void {
        return self.setEnableFn(self.pointer, enable_);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getPrefixName(self: *Self) ?*String {
        return self.getPrefixNameFn(self.pointer);
    }

    pub fn getFirstName(self: *Self) ?*String {
        return self.getFirstNameFn(self.pointer);
    }

    pub fn getLastName(self: *Self) ?*String {
        return self.getLastNameFn(self.pointer);
    }

    pub fn getMiddleName(self: *Self) ?*String {
        return self.getMiddleNameFn(self.pointer);
    }

    pub fn getSuffixName(self: *Self) ?*String {
        return self.getSuffixNameFn(self.pointer);
    }

    pub fn getCompany(self: *Self) ?*String {
        return self.getCompanyFn(self.pointer);
    }

    pub fn getPositionAtCompany(self: *Self) ?*String {
        return self.getPositionAtCompanyFn(self.pointer);
    }

    pub fn getMainEmail(self: *Self) ?*String {
        return self.getMainEmailFn(self.pointer);
    }

    pub fn getSecondaryEmail(self: *Self) ?*String {
        return self.getSecondaryEmailFn(self.pointer);
    }

    pub fn getHomePhone(self: *Self) ?*String {
        return self.getHomePhoneFn(self.pointer);
    }

    pub fn getCellPhone(self: *Self) ?*String {
        return self.getCellPhoneFn(self.pointer);
    }

    pub fn getWorkPhone(self: *Self) ?*String {
        return self.getWorkPhoneFn(self.pointer);
    }

    pub fn getOtherContact(self: *Self) ?*String {
        return self.getOtherContactFn(self.pointer);
    }

    pub fn getElectronicContact(self: *Self) ?*String {
        return self.getElectronicContactFn(self.pointer);
    }

    pub fn getFax(self: *Self) ?*String {
        return self.getFaxFn(self.pointer);
    }

    pub fn getRole(self: *Self) ?*UserRole {
        return self.getRoleFn(self.pointer);
    }

    pub fn getEncryption(self: *Self) ?*String {
        return self.getEncryptionFn(self.pointer);
    }

    pub fn getSecret(self: *Self) ?*String {
        return self.getSecretFn(self.pointer);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn getPermissions(self: *Self) ?*String {
        return self.getPermissionsFn(self.pointer);
    }

    pub fn getUserConfigurationInterface(self: *Self) ?*UserConfigurationInterface {
        return self.getUserConfigurationInterfaceFn(self.pointer);
    }

    pub fn setUserConfigurationInterface(self: *Self, userConfigurationInterface: ?*UserConfigurationInterface) void {
        return self.setUserConfigurationInterfaceFn(self.pointer, userConfigurationInterface);
    }

    pub fn toPasswordHashMap(self: *Self) ?*HashMap {
        return self.toPasswordHashMapFn(self.pointer);
    }

    pub fn validateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        return self.validateSessionFn(self.pointer, weblisketSession);
    }

    pub fn updateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        return self.updateSessionFn(self.pointer, weblisketSession);
    }

    pub fn isSessionValid(self: *Self) ?*Boolean {
        return self.isSessionValidFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn setUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(value);
            }
            fn setPrefixName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPrefixName").setPrefixName(value);
            }
            fn setFirstName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFirstName").setFirstName(value);
            }
            fn setLastName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLastName").setLastName(value);
            }
            fn setMiddleName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMiddleName").setMiddleName(value);
            }
            fn setSuffixName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSuffixName").setSuffixName(value);
            }
            fn setCompany(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCompany").setCompany(value);
            }
            fn setPositionAtCompany(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPositionAtCompany").setPositionAtCompany(value);
            }
            fn setMainEmail(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMainEmail").setMainEmail(value);
            }
            fn setSecondaryEmail(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSecondaryEmail").setSecondaryEmail(value);
            }
            fn setHomePhone(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHomePhone").setHomePhone(value);
            }
            fn setCellPhone(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCellPhone").setCellPhone(value);
            }
            fn setWorkPhone(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setWorkPhone").setWorkPhone(value);
            }
            fn setOtherContact(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setOtherContact").setOtherContact(value);
            }
            fn setElectronicContact(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setElectronicContact").setElectronicContact(value);
            }
            fn setFax(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFax").setFax(value);
            }
            fn setRole(pointer: *anyopaque, aRole: ?*UserRole) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRole").setRole(aRole);
            }
            fn setEncryption(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEncryption").setEncryption(value);
            }
            fn setSecret(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSecret").setSecret(value);
            }
            fn setPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(value);
            }
            fn setPermissions(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPermissions").setPermissions(value);
            }
            fn enable(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "enable").enable();
            }
            fn setEnable(pointer: *anyopaque, enable_: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEnable").setEnable(enable_);
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getPrefixName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPrefixName").getPrefixName());
            }
            fn getFirstName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFirstName").getFirstName());
            }
            fn getLastName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastName").getLastName());
            }
            fn getMiddleName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMiddleName").getMiddleName());
            }
            fn getSuffixName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSuffixName").getSuffixName());
            }
            fn getCompany(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCompany").getCompany());
            }
            fn getPositionAtCompany(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPositionAtCompany").getPositionAtCompany());
            }
            fn getMainEmail(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMainEmail").getMainEmail());
            }
            fn getSecondaryEmail(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSecondaryEmail").getSecondaryEmail());
            }
            fn getHomePhone(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHomePhone").getHomePhone());
            }
            fn getCellPhone(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCellPhone").getCellPhone());
            }
            fn getWorkPhone(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getWorkPhone").getWorkPhone());
            }
            fn getOtherContact(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getOtherContact").getOtherContact());
            }
            fn getElectronicContact(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getElectronicContact").getElectronicContact());
            }
            fn getFax(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFax").getFax());
            }
            fn getRole(pointer: *anyopaque) ?*UserRole {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserRole, Inheritance.receiver(implementation, "getRole").getRole());
            }
            fn getEncryption(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getEncryption").getEncryption());
            }
            fn getSecret(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSecret").getSecret());
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn getPermissions(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPermissions").getPermissions());
            }
            fn getUserConfigurationInterface(pointer: *anyopaque) ?*UserConfigurationInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserConfigurationInterface, Inheritance.receiver(implementation, "getUserConfigurationInterface").getUserConfigurationInterface());
            }
            fn setUserConfigurationInterface(pointer: *anyopaque, userConfigurationInterface: ?*UserConfigurationInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserConfigurationInterface").setUserConfigurationInterface(userConfigurationInterface);
            }
            fn toPasswordHashMap(pointer: *anyopaque) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "toPasswordHashMap").toPasswordHashMap());
            }
            fn validateSession(pointer: *anyopaque, weblisketSession: ?*WeblisketSessionInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "validateSession").validateSession(weblisketSession);
            }
            fn updateSession(pointer: *anyopaque, weblisketSession: ?*WeblisketSessionInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "updateSession").updateSession(weblisketSession);
            }
            fn isSessionValid(pointer: *anyopaque) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isSessionValid").isSessionValid());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .setUserNameFn = Methods.setUserName, .setPrefixNameFn = Methods.setPrefixName, .setFirstNameFn = Methods.setFirstName, .setLastNameFn = Methods.setLastName, .setMiddleNameFn = Methods.setMiddleName, .setSuffixNameFn = Methods.setSuffixName, .setCompanyFn = Methods.setCompany, .setPositionAtCompanyFn = Methods.setPositionAtCompany, .setMainEmailFn = Methods.setMainEmail, .setSecondaryEmailFn = Methods.setSecondaryEmail, .setHomePhoneFn = Methods.setHomePhone, .setCellPhoneFn = Methods.setCellPhone, .setWorkPhoneFn = Methods.setWorkPhone, .setOtherContactFn = Methods.setOtherContact, .setElectronicContactFn = Methods.setElectronicContact, .setFaxFn = Methods.setFax, .setRoleFn = Methods.setRole, .setEncryptionFn = Methods.setEncryption, .setSecretFn = Methods.setSecret, .setPasswordFn = Methods.setPassword, .setPermissionsFn = Methods.setPermissions, .enableFn = Methods.enable, .setEnableFn = Methods.setEnable, .getUserNameFn = Methods.getUserName, .getPrefixNameFn = Methods.getPrefixName, .getFirstNameFn = Methods.getFirstName, .getLastNameFn = Methods.getLastName, .getMiddleNameFn = Methods.getMiddleName, .getSuffixNameFn = Methods.getSuffixName, .getCompanyFn = Methods.getCompany, .getPositionAtCompanyFn = Methods.getPositionAtCompany, .getMainEmailFn = Methods.getMainEmail, .getSecondaryEmailFn = Methods.getSecondaryEmail, .getHomePhoneFn = Methods.getHomePhone, .getCellPhoneFn = Methods.getCellPhone, .getWorkPhoneFn = Methods.getWorkPhone, .getOtherContactFn = Methods.getOtherContact, .getElectronicContactFn = Methods.getElectronicContact, .getFaxFn = Methods.getFax, .getRoleFn = Methods.getRole, .getEncryptionFn = Methods.getEncryption, .getSecretFn = Methods.getSecret, .getPasswordFn = Methods.getPassword, .getPermissionsFn = Methods.getPermissions, .getUserConfigurationInterfaceFn = Methods.getUserConfigurationInterface, .setUserConfigurationInterfaceFn = Methods.setUserConfigurationInterface, .toPasswordHashMapFn = Methods.toPasswordHashMap, .validateSessionFn = Methods.validateSession, .updateSessionFn = Methods.updateSession, .isSessionValidFn = Methods.isSessionValid };
        return this;
    }
};

