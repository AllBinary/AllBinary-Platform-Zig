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
// package org.allbinary.logic.communication.ftp.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const FtpConfigurationData = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData.zig").FtpConfigurationData;
const FtpConfigurationInterface = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface.zig").FtpConfigurationInterface;

pub const FtpConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.ftp.configuration.FtpConfiguration";
    pub const java_interfaces = .{ FtpConfigurationInterface };
    ftpServer: ?*String = null,
    ftpPath: ?*String = null,
    ftpUserName: ?*String = null,
    ftpPassword: ?*String = null,
    // Implements FtpConfigurationInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ftpServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ FtpConfigurationData.SERVER }));
        this.ftpPath = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ FtpConfigurationData.PATH }));
        this.ftpUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ FtpConfigurationData.USERNAME }));
        this.ftpPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ FtpConfigurationData.PASSWORD }));
        return this;
    }
    

    pub fn getServer(self: *Self) ?*String {
        return self.ftpServer;
    }
    

    pub fn getPath(self: *Self) ?*String {
        return self.ftpPath;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.ftpUserName;
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return self.ftpPassword;
    }
    

    pub fn setServer(self: *Self, value: ?*String) void {
        self.ftpServer = value;
    }
    

    pub fn setPath(self: *Self, value: ?*String) void {
        self.ftpPath = value;
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.ftpUserName = value;
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        self.ftpPassword = value;
    }
};

