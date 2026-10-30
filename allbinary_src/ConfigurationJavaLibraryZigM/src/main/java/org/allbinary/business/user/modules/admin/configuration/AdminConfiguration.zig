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
// package org.allbinary.business.user.modules.admin.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const ContextConfiguration = @import("org/allbinary/business/context/configuration/ContextConfiguration.zig").ContextConfiguration;
const ContextConfigurationData = @import("org/allbinary/business/context/configuration/ContextConfigurationData.zig").ContextConfigurationData;
const ContextConfigurationDomDocumentMapping = @import("org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping.zig").ContextConfigurationDomDocumentMapping;
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;
const ContextConfigurationInterfaceFactory = @import("org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory.zig").ContextConfigurationInterfaceFactory;
const ContextConfigurationPathUtil = @import("org/allbinary/business/context/configuration/ContextConfigurationPathUtil.zig").ContextConfigurationPathUtil;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileWriter = @import("org/allbinary/logic/control/crypt/file/CryptFileWriter.zig").CryptFileWriter;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AdminConfigurationData = @import("org/allbinary/business/user/modules/admin/configuration/AdminConfigurationData.zig").AdminConfigurationData;
const AdminConfigurationInterface = @import("org/allbinary/business/user/modules/admin/configuration/AdminConfigurationInterface.zig").AdminConfigurationInterface;

pub const AdminConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.admin.configuration.AdminConfiguration";
    pub const java_interfaces = .{ AdminConfigurationInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    contextConfigurationInterface: ?*ContextConfigurationInterface = null,
    // Implements AdminConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        this.contextConfigurationInterface = Inheritance.upcast(@TypeOf(this.contextConfigurationInterface), Inheritance.call(ContextConfigurationInterfaceFactory.getInstance().?, "getInstance", .{ AdminConfigurationData.CONTEXTNAME }));
        return this;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = Inheritance.call(this, "getFormData", .{ Inheritance.callStatic(RequestParams, "create1", .{ request }).toHashMap() });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(storeHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = Inheritance.call(this, "getFormData", .{ storeHashMap });
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self, storeHashMap: ?*HashMap) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getFormData") });
        _ = Inheritance.call(self, "setContextConfigurationInterface", .{ Inheritance.cast(?*ContextConfigurationInterface, Inheritance.callStatic(ContextConfiguration, "create1", .{ storeHashMap })) });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const contextConfigurationDomDocumentMapping: ?*ContextConfigurationDomDocumentMapping = Inheritance.callStatic(ContextConfigurationDomDocumentMapping, "create1", .{ self.getContextConfigurationInterface() });
        const cryptFileWriter: ?*CryptFileWriter = Inheritance.callStatic(CryptFileWriter, "create2", .{ ContextConfigurationData.getInstance().?.UNCRYPTED_EXTENSION, ContextConfigurationData.getInstance().?.ENCRYPTED_EXTENSION });
        _ = Inheritance.call(cryptFileWriter.?, "write", .{ Inheritance.callStatic(ContextConfigurationPathUtil, "getAbPath", .{ AdminConfigurationData.CONTEXTNAME }), contextConfigurationDomDocumentMapping.?.toXmlDoc() });
    }
    

    pub fn getContextConfigurationInterface(self: *Self) ?*ContextConfigurationInterface {
        return self.contextConfigurationInterface;
    }
    

    pub fn setContextConfigurationInterface(self: *Self, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
        self.contextConfigurationInterface = contextConfigurationInterface;
    }
};

