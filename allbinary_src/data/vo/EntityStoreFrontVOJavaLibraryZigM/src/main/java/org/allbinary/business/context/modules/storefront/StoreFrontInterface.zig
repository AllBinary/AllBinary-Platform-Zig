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
// package org.allbinary.business.context.modules.storefront

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

// Java interface: an implementation is a pointer and a table of functions
pub const StoreFrontInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.StoreFrontInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isNameValidFn: *const fn (pointer: *anyopaque) ?*Boolean,
    isValidFn: *const fn (pointer: *anyopaque) ?*Boolean,
    nameValidationInfoFn: *const fn (pointer: *anyopaque) ?*String,
    validationInfoFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHtmlPathFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getBasketNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getStaticPathFn: *const fn (pointer: *anyopaque) ?*String,
    getCategoryPathFn: *const fn (pointer: *anyopaque) ?*String,
    getSubStoresFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getTagLocationFn: *const fn (pointer: *anyopaque) ?*String,
    getPackageLocationFn: *const fn (pointer: *anyopaque) ?*String,
    getInventoryControlFn: *const fn (pointer: *anyopaque) ?*String,
    getContextConfigurationInterfaceFn: *const fn (pointer: *anyopaque) ?*ContextConfigurationInterface,
    setContextConfigurationInterfaceFn: *const fn (pointer: *anyopaque, contextConfigurationInterface: ?*ContextConfigurationInterface) void,
    getFtpFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpPathFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpPathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeCreatedFn: *const fn (pointer: *anyopaque) ?*String,
    getLastModifiedFn: *const fn (pointer: *anyopaque) ?*String,
    setNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setBasketNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setHomeHostNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setHomeHostNamePathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setHostNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setHostNamePathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestHomeHostNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestHomeHostNamePathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestHostNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestHostNamePathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setImagePathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStaticPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCategoryPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPackageLocationFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setInventoryControlFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFtpFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFtpPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFtpUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setFtpPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestFtpFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestFtpPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestFtpUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestFtpPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTimeCreatedFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setLastModifiedFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    installFn: *const fn (pointer: *anyopaque, current: i32, total: i32) void,

    pub fn isNameValid(self: *Self) ?*Boolean {
        return self.isNameValidFn(self.pointer);
    }

    pub fn isValid(self: *Self) ?*Boolean {
        return self.isValidFn(self.pointer);
    }

    pub fn nameValidationInfo(self: *Self) ?*String {
        return self.nameValidationInfoFn(self.pointer);
    }

    pub fn validationInfo(self: *Self) ?*String {
        return self.validationInfoFn(self.pointer);
    }

    pub fn getTestHtmlPath(self: *Self) ?*String {
        return self.getTestHtmlPathFn(self.pointer);
    }

    pub fn getCurrentHostName(self: *Self) ?*String {
        return self.getCurrentHostNameFn(self.pointer);
    }

    pub fn getCurrentHostNamePath(self: *Self) ?*String {
        return self.getCurrentHostNamePathFn(self.pointer);
    }

    pub fn getCurrentHomeHostName(self: *Self) ?*String {
        return self.getCurrentHomeHostNameFn(self.pointer);
    }

    pub fn getCurrentHomeHostNamePath(self: *Self) ?*String {
        return self.getCurrentHomeHostNamePathFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getBasketName(self: *Self) ?*String {
        return self.getBasketNameFn(self.pointer);
    }

    pub fn getHomeHostName(self: *Self) ?*String {
        return self.getHomeHostNameFn(self.pointer);
    }

    pub fn getHomeHostNamePath(self: *Self) ?*String {
        return self.getHomeHostNamePathFn(self.pointer);
    }

    pub fn getHostName(self: *Self) ?*String {
        return self.getHostNameFn(self.pointer);
    }

    pub fn getHostNamePath(self: *Self) ?*String {
        return self.getHostNamePathFn(self.pointer);
    }

    pub fn getTestHomeHostName(self: *Self) ?*String {
        return self.getTestHomeHostNameFn(self.pointer);
    }

    pub fn getTestHomeHostNamePath(self: *Self) ?*String {
        return self.getTestHomeHostNamePathFn(self.pointer);
    }

    pub fn getTestHostName(self: *Self) ?*String {
        return self.getTestHostNameFn(self.pointer);
    }

    pub fn getTestHostNamePath(self: *Self) ?*String {
        return self.getTestHostNamePathFn(self.pointer);
    }

    pub fn getStaticPath(self: *Self) ?*String {
        return self.getStaticPathFn(self.pointer);
    }

    pub fn getCategoryPath(self: *Self) ?*String {
        return self.getCategoryPathFn(self.pointer);
    }

    pub fn getSubStores(self: *Self) ?*BasicArrayList {
        return self.getSubStoresFn(self.pointer);
    }

    pub fn getTagLocation(self: *Self) ?*String {
        return self.getTagLocationFn(self.pointer);
    }

    pub fn getPackageLocation(self: *Self) ?*String {
        return self.getPackageLocationFn(self.pointer);
    }

    pub fn getInventoryControl(self: *Self) ?*String {
        return self.getInventoryControlFn(self.pointer);
    }

    pub fn getContextConfigurationInterface(self: *Self) ?*ContextConfigurationInterface {
        return self.getContextConfigurationInterfaceFn(self.pointer);
    }

    pub fn setContextConfigurationInterface(self: *Self, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
        return self.setContextConfigurationInterfaceFn(self.pointer, contextConfigurationInterface);
    }

    pub fn getFtp(self: *Self) ?*String {
        return self.getFtpFn(self.pointer);
    }

    pub fn getFtpPath(self: *Self) ?*String {
        return self.getFtpPathFn(self.pointer);
    }

    pub fn getFtpUserName(self: *Self) ?*String {
        return self.getFtpUserNameFn(self.pointer);
    }

    pub fn getFtpPassword(self: *Self) ?*String {
        return self.getFtpPasswordFn(self.pointer);
    }

    pub fn getTestFtp(self: *Self) ?*String {
        return self.getTestFtpFn(self.pointer);
    }

    pub fn getTestFtpPath(self: *Self) ?*String {
        return self.getTestFtpPathFn(self.pointer);
    }

    pub fn getTestFtpUserName(self: *Self) ?*String {
        return self.getTestFtpUserNameFn(self.pointer);
    }

    pub fn getTestFtpPassword(self: *Self) ?*String {
        return self.getTestFtpPasswordFn(self.pointer);
    }

    pub fn getTimeCreated(self: *Self) ?*String {
        return self.getTimeCreatedFn(self.pointer);
    }

    pub fn getLastModified(self: *Self) ?*String {
        return self.getLastModifiedFn(self.pointer);
    }

    pub fn setName(self: *Self, value: ?*String) void {
        return self.setNameFn(self.pointer, value);
    }

    pub fn setBasketName(self: *Self, value: ?*String) void {
        return self.setBasketNameFn(self.pointer, value);
    }

    pub fn setHomeHostName(self: *Self, value: ?*String) void {
        return self.setHomeHostNameFn(self.pointer, value);
    }

    pub fn setHomeHostNamePath(self: *Self, value: ?*String) void {
        return self.setHomeHostNamePathFn(self.pointer, value);
    }

    pub fn setHostName(self: *Self, value: ?*String) void {
        return self.setHostNameFn(self.pointer, value);
    }

    pub fn setHostNamePath(self: *Self, value: ?*String) void {
        return self.setHostNamePathFn(self.pointer, value);
    }

    pub fn setTestHomeHostName(self: *Self, value: ?*String) void {
        return self.setTestHomeHostNameFn(self.pointer, value);
    }

    pub fn setTestHomeHostNamePath(self: *Self, value: ?*String) void {
        return self.setTestHomeHostNamePathFn(self.pointer, value);
    }

    pub fn setTestHostName(self: *Self, value: ?*String) void {
        return self.setTestHostNameFn(self.pointer, value);
    }

    pub fn setTestHostNamePath(self: *Self, value: ?*String) void {
        return self.setTestHostNamePathFn(self.pointer, value);
    }

    pub fn setImagePath(self: *Self, value: ?*String) void {
        return self.setImagePathFn(self.pointer, value);
    }

    pub fn setStaticPath(self: *Self, value: ?*String) void {
        return self.setStaticPathFn(self.pointer, value);
    }

    pub fn setCategoryPath(self: *Self, value: ?*String) void {
        return self.setCategoryPathFn(self.pointer, value);
    }

    pub fn setPackageLocation(self: *Self, value: ?*String) void {
        return self.setPackageLocationFn(self.pointer, value);
    }

    pub fn setInventoryControl(self: *Self, value: ?*String) void {
        return self.setInventoryControlFn(self.pointer, value);
    }

    pub fn setFtp(self: *Self, value: ?*String) void {
        return self.setFtpFn(self.pointer, value);
    }

    pub fn setFtpPath(self: *Self, value: ?*String) void {
        return self.setFtpPathFn(self.pointer, value);
    }

    pub fn setFtpUserName(self: *Self, value: ?*String) void {
        return self.setFtpUserNameFn(self.pointer, value);
    }

    pub fn setFtpPassword(self: *Self, value: ?*String) void {
        return self.setFtpPasswordFn(self.pointer, value);
    }

    pub fn setTestFtp(self: *Self, value: ?*String) void {
        return self.setTestFtpFn(self.pointer, value);
    }

    pub fn setTestFtpPath(self: *Self, value: ?*String) void {
        return self.setTestFtpPathFn(self.pointer, value);
    }

    pub fn setTestFtpUserName(self: *Self, value: ?*String) void {
        return self.setTestFtpUserNameFn(self.pointer, value);
    }

    pub fn setTestFtpPassword(self: *Self, value: ?*String) void {
        return self.setTestFtpPasswordFn(self.pointer, value);
    }

    pub fn setTimeCreated(self: *Self, value: ?*String) void {
        return self.setTimeCreatedFn(self.pointer, value);
    }

    pub fn setLastModified(self: *Self, value: ?*String) void {
        return self.setLastModifiedFn(self.pointer, value);
    }

    pub fn install(self: *Self, current: i32, total: i32) void {
        return self.installFn(self.pointer, current, total);
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
            fn isNameValid(pointer: *anyopaque) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isNameValid").isNameValid());
            }
            fn isValid(pointer: *anyopaque) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isValid").isValid());
            }
            fn nameValidationInfo(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "nameValidationInfo").nameValidationInfo());
            }
            fn validationInfo(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "validationInfo").validationInfo());
            }
            fn getTestHtmlPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHtmlPath").getTestHtmlPath());
            }
            fn getCurrentHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHostName").getCurrentHostName());
            }
            fn getCurrentHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHostNamePath").getCurrentHostNamePath());
            }
            fn getCurrentHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHomeHostName").getCurrentHomeHostName());
            }
            fn getCurrentHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHomeHostNamePath").getCurrentHomeHostNamePath());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getBasketName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getBasketName").getBasketName());
            }
            fn getHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHomeHostName").getHomeHostName());
            }
            fn getHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHomeHostNamePath").getHomeHostNamePath());
            }
            fn getHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHostName").getHostName());
            }
            fn getHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHostNamePath").getHostNamePath());
            }
            fn getTestHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHomeHostName").getTestHomeHostName());
            }
            fn getTestHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHomeHostNamePath").getTestHomeHostNamePath());
            }
            fn getTestHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHostName").getTestHostName());
            }
            fn getTestHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHostNamePath").getTestHostNamePath());
            }
            fn getStaticPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStaticPath").getStaticPath());
            }
            fn getCategoryPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCategoryPath").getCategoryPath());
            }
            fn getSubStores(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getSubStores").getSubStores());
            }
            fn getTagLocation(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTagLocation").getTagLocation());
            }
            fn getPackageLocation(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPackageLocation").getPackageLocation());
            }
            fn getInventoryControl(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getInventoryControl").getInventoryControl());
            }
            fn getContextConfigurationInterface(pointer: *anyopaque) ?*ContextConfigurationInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ContextConfigurationInterface, Inheritance.receiver(implementation, "getContextConfigurationInterface").getContextConfigurationInterface());
            }
            fn setContextConfigurationInterface(pointer: *anyopaque, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setContextConfigurationInterface").setContextConfigurationInterface(contextConfigurationInterface);
            }
            fn getFtp(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtp").getFtp());
            }
            fn getFtpPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpPath").getFtpPath());
            }
            fn getFtpUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpUserName").getFtpUserName());
            }
            fn getFtpPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpPassword").getFtpPassword());
            }
            fn getTestFtp(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtp").getTestFtp());
            }
            fn getTestFtpPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpPath").getTestFtpPath());
            }
            fn getTestFtpUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpUserName").getTestFtpUserName());
            }
            fn getTestFtpPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpPassword").getTestFtpPassword());
            }
            fn getTimeCreated(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeCreated").getTimeCreated());
            }
            fn getLastModified(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastModified").getLastModified());
            }
            fn setName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(value);
            }
            fn setBasketName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setBasketName").setBasketName(value);
            }
            fn setHomeHostName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHomeHostName").setHomeHostName(value);
            }
            fn setHomeHostNamePath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHomeHostNamePath").setHomeHostNamePath(value);
            }
            fn setHostName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHostName").setHostName(value);
            }
            fn setHostNamePath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHostNamePath").setHostNamePath(value);
            }
            fn setTestHomeHostName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestHomeHostName").setTestHomeHostName(value);
            }
            fn setTestHomeHostNamePath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestHomeHostNamePath").setTestHomeHostNamePath(value);
            }
            fn setTestHostName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestHostName").setTestHostName(value);
            }
            fn setTestHostNamePath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestHostNamePath").setTestHostNamePath(value);
            }
            fn setImagePath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setImagePath").setImagePath(value);
            }
            fn setStaticPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStaticPath").setStaticPath(value);
            }
            fn setCategoryPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCategoryPath").setCategoryPath(value);
            }
            fn setPackageLocation(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPackageLocation").setPackageLocation(value);
            }
            fn setInventoryControl(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setInventoryControl").setInventoryControl(value);
            }
            fn setFtp(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFtp").setFtp(value);
            }
            fn setFtpPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFtpPath").setFtpPath(value);
            }
            fn setFtpUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFtpUserName").setFtpUserName(value);
            }
            fn setFtpPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFtpPassword").setFtpPassword(value);
            }
            fn setTestFtp(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestFtp").setTestFtp(value);
            }
            fn setTestFtpPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestFtpPath").setTestFtpPath(value);
            }
            fn setTestFtpUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestFtpUserName").setTestFtpUserName(value);
            }
            fn setTestFtpPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestFtpPassword").setTestFtpPassword(value);
            }
            fn setTimeCreated(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeCreated").setTimeCreated(value);
            }
            fn setLastModified(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLastModified").setLastModified(value);
            }
            fn install(pointer: *anyopaque, current: i32, total: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "install").install(current, total);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .isNameValidFn = Methods.isNameValid, .isValidFn = Methods.isValid, .nameValidationInfoFn = Methods.nameValidationInfo, .validationInfoFn = Methods.validationInfo, .getTestHtmlPathFn = Methods.getTestHtmlPath, .getCurrentHostNameFn = Methods.getCurrentHostName, .getCurrentHostNamePathFn = Methods.getCurrentHostNamePath, .getCurrentHomeHostNameFn = Methods.getCurrentHomeHostName, .getCurrentHomeHostNamePathFn = Methods.getCurrentHomeHostNamePath, .getNameFn = Methods.getName, .getBasketNameFn = Methods.getBasketName, .getHomeHostNameFn = Methods.getHomeHostName, .getHomeHostNamePathFn = Methods.getHomeHostNamePath, .getHostNameFn = Methods.getHostName, .getHostNamePathFn = Methods.getHostNamePath, .getTestHomeHostNameFn = Methods.getTestHomeHostName, .getTestHomeHostNamePathFn = Methods.getTestHomeHostNamePath, .getTestHostNameFn = Methods.getTestHostName, .getTestHostNamePathFn = Methods.getTestHostNamePath, .getStaticPathFn = Methods.getStaticPath, .getCategoryPathFn = Methods.getCategoryPath, .getSubStoresFn = Methods.getSubStores, .getTagLocationFn = Methods.getTagLocation, .getPackageLocationFn = Methods.getPackageLocation, .getInventoryControlFn = Methods.getInventoryControl, .getContextConfigurationInterfaceFn = Methods.getContextConfigurationInterface, .setContextConfigurationInterfaceFn = Methods.setContextConfigurationInterface, .getFtpFn = Methods.getFtp, .getFtpPathFn = Methods.getFtpPath, .getFtpUserNameFn = Methods.getFtpUserName, .getFtpPasswordFn = Methods.getFtpPassword, .getTestFtpFn = Methods.getTestFtp, .getTestFtpPathFn = Methods.getTestFtpPath, .getTestFtpUserNameFn = Methods.getTestFtpUserName, .getTestFtpPasswordFn = Methods.getTestFtpPassword, .getTimeCreatedFn = Methods.getTimeCreated, .getLastModifiedFn = Methods.getLastModified, .setNameFn = Methods.setName, .setBasketNameFn = Methods.setBasketName, .setHomeHostNameFn = Methods.setHomeHostName, .setHomeHostNamePathFn = Methods.setHomeHostNamePath, .setHostNameFn = Methods.setHostName, .setHostNamePathFn = Methods.setHostNamePath, .setTestHomeHostNameFn = Methods.setTestHomeHostName, .setTestHomeHostNamePathFn = Methods.setTestHomeHostNamePath, .setTestHostNameFn = Methods.setTestHostName, .setTestHostNamePathFn = Methods.setTestHostNamePath, .setImagePathFn = Methods.setImagePath, .setStaticPathFn = Methods.setStaticPath, .setCategoryPathFn = Methods.setCategoryPath, .setPackageLocationFn = Methods.setPackageLocation, .setInventoryControlFn = Methods.setInventoryControl, .setFtpFn = Methods.setFtp, .setFtpPathFn = Methods.setFtpPath, .setFtpUserNameFn = Methods.setFtpUserName, .setFtpPasswordFn = Methods.setFtpPassword, .setTestFtpFn = Methods.setTestFtp, .setTestFtpPathFn = Methods.setTestFtpPath, .setTestFtpUserNameFn = Methods.setTestFtpUserName, .setTestFtpPasswordFn = Methods.setTestFtpPassword, .setTimeCreatedFn = Methods.setTimeCreated, .setLastModifiedFn = Methods.setLastModified, .installFn = Methods.install };
        return this;
    }
};

