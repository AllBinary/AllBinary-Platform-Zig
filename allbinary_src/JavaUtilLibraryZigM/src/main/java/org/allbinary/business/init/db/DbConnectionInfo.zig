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
// package org.allbinary.business.init.db

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;

pub const DbConnectionInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.db.DbConnectionInfo";
    pub const java_interfaces = .{ DatabaseConnectionInfoInterface };
    jdbcDriver: ?*String = null,
    name: ?*String = null,
    userName: ?*String = null,
    password: ?*String = null,
    schema: ?*String = null,
    server: ?*String = null,
    port: ?*String = null,
    url: ?*String = null,
    host: ?*String = null,
    SCHEMA_SEP: ?*String = null,
    USER_NAME_KEY: ?*String = null,
    PASSWORD_KEY: ?*String = null,
    // Implements DatabaseConnectionInfoInterface

    fn initFields(this: *Self) void {
        this.jdbcDriver = null;
        this.name = null;
        this.userName = null;
        this.password = null;
        this.schema = null;
        this.server = null;
        this.port = null;
        this.url = null;
        this.host = null;
        this.SCHEMA_SEP = String.literal("://");
        this.USER_NAME_KEY = String.literal("?user=");
        this.PASSWORD_KEY = String.literal("&password=");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn updateUrl(self: *Self) void {
        _ = self.updateHost();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getHost() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getUserNameKey() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getUserName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getPasswordKey() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getPassword() });
        self.url = Inheritance.upcast(@TypeOf(self.url), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getUrl(self: *Self) ?*String {
        return self.url;
    }
    

    pub fn getJdbcDriver(self: *Self) ?*String {
        return self.jdbcDriver;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return self.password;
    }
    

    pub fn updateHost(self: *Self) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getSchema() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SCHEMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getServer() });
        if (self.getPort() != null and Inheritance.receiverOf(self.getPort().?, "length").length() > 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.COLON });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.getPort() });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        self.host = Inheritance.upcast(@TypeOf(self.host), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getHost(self: *Self) ?*String {
        return self.host;
    }
    

    pub fn getSchema(self: *Self) ?*String {
        return self.schema;
    }
    

    pub fn getServer(self: *Self) ?*String {
        return self.server;
    }
    

    pub fn getPort(self: *Self) ?*String {
        return self.port;
    }
    

    pub fn setJdbcDriver(self: *Self, value: ?*String) void {
        self.jdbcDriver = value;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
        _ = self.updateUrl();
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.userName = value;
        _ = self.updateUrl();
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        self.password = value;
        _ = self.updateUrl();
    }
    

    pub fn setSchema(self: *Self, value: ?*String) void {
        self.schema = value;
        _ = self.updateUrl();
    }
    

    pub fn setServer(self: *Self, value: ?*String) void {
        self.server = value;
        _ = self.updateUrl();
    }
    

    pub fn setPort(self: *Self, value: ?*String) void {
        self.port = value;
        _ = self.updateUrl();
    }
    

    pub fn getUserNameKey(self: *Self) ?*String {
        return self.USER_NAME_KEY;
    }
    

    pub fn getPasswordKey(self: *Self) ?*String {
        return self.PASSWORD_KEY;
    }
};

