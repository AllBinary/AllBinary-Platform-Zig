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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const InitializerData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.InitializerData";
    DBUSER: ?*String = null,
    DBPASSWORD: ?*String = null,
    ADMINJDBCDRIVER: ?*String = null,
    ADMINSCHEMA: ?*String = null,
    ADMINSERVER: ?*String = null,
    ADMINPORT: ?*String = null,
    CUSTOMERJDBCDRIVER: ?*String = null,
    CUSTOMERNAME: ?*String = null,
    CUSTOMERUSERNAME: ?*String = null,
    CUSTOMERPASSWORD: ?*String = null,
    CUSTOMERSCHEMA: ?*String = null,
    CUSTOMERSERVER: ?*String = null,
    CUSTOMERPORT: ?*String = null,
    HISTORYJDBCDRIVER: ?*String = null,
    HISTORYNAME: ?*String = null,
    HISTORYUSERNAME: ?*String = null,
    HISTORYPASSWORD: ?*String = null,
    HISTORYSCHEMA: ?*String = null,
    HISTORYSERVER: ?*String = null,
    HISTORYPORT: ?*String = null,
    LOGJDBCDRIVER: ?*String = null,
    LOGNAME: ?*String = null,
    LOGUSERNAME: ?*String = null,
    LOGPASSWORD: ?*String = null,
    LOGSCHEMA: ?*String = null,
    LOGSERVER: ?*String = null,
    LOGPORT: ?*String = null,
    INVENTORYJDBCDRIVER: ?*String = null,
    INVENTORYNAME: ?*String = null,
    INVENTORYUSERNAME: ?*String = null,
    INVENTORYPASSWORD: ?*String = null,
    INVENTORYSCHEMA: ?*String = null,
    INVENTORYSERVER: ?*String = null,
    INVENTORYPORT: ?*String = null,
    STATICPAGESJDBCDRIVER: ?*String = null,
    STATICPAGESNAME: ?*String = null,
    STATICPAGESUSERNAME: ?*String = null,
    STATICPAGESPASSWORD: ?*String = null,
    STATICPAGESSCHEMA: ?*String = null,
    STATICPAGESSERVER: ?*String = null,
    STATICPAGESPORT: ?*String = null,
    var instance: ?*InitializerData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InitializerData.create();
    }

    fn initFields(this: *Self) void {
        this.DBUSER = String.literal("DBUSER");
        this.DBPASSWORD = String.literal("DBPASSWORD");
        this.ADMINJDBCDRIVER = String.literal("ADMIN_JDBCDRIVER");
        this.ADMINSCHEMA = String.literal("ADMINSCHEMA");
        this.ADMINSERVER = String.literal("ADMINSERVER");
        this.ADMINPORT = String.literal("ADMINPORT");
        this.CUSTOMERJDBCDRIVER = String.literal("CUSTOMER_JDBCDRIVER");
        this.CUSTOMERNAME = String.literal("CUSTOMERNAME");
        this.CUSTOMERUSERNAME = String.literal("CUSTOMERUSERNAME");
        this.CUSTOMERPASSWORD = String.literal("CUSTOMERPASSWORD");
        this.CUSTOMERSCHEMA = String.literal("CUSTOMERSCHEMA");
        this.CUSTOMERSERVER = String.literal("CUSTOMERSERVER");
        this.CUSTOMERPORT = String.literal("CUSTOMERPORT");
        this.HISTORYJDBCDRIVER = String.literal("HISTORY_JDBCDRIVER");
        this.HISTORYNAME = String.literal("HISTORYNAME");
        this.HISTORYUSERNAME = String.literal("HISTORYUSERNAME");
        this.HISTORYPASSWORD = String.literal("HISTORYPASSWORD");
        this.HISTORYSCHEMA = String.literal("HISTORYSCHEMA");
        this.HISTORYSERVER = String.literal("HISTORYSERVER");
        this.HISTORYPORT = String.literal("HISTORYPORT");
        this.LOGJDBCDRIVER = String.literal("LOG_JDBCDRIVER");
        this.LOGNAME = String.literal("LOGNAME");
        this.LOGUSERNAME = String.literal("LOGUSERNAME");
        this.LOGPASSWORD = String.literal("LOGPASSWORD");
        this.LOGSCHEMA = String.literal("LOGSCHEMA");
        this.LOGSERVER = String.literal("LOGSERVER");
        this.LOGPORT = String.literal("LOGPORT");
        this.INVENTORYJDBCDRIVER = String.literal("INVENTORY_JDBCDRIVER");
        this.INVENTORYNAME = String.literal("INVENTORYNAME");
        this.INVENTORYUSERNAME = String.literal("INVENTORYUSERNAME");
        this.INVENTORYPASSWORD = String.literal("INVENTORYPASSWORD");
        this.INVENTORYSCHEMA = String.literal("INVENTORYSCHEMA");
        this.INVENTORYSERVER = String.literal("INVENTORYSERVER");
        this.INVENTORYPORT = String.literal("INVENTORYPORT");
        this.STATICPAGESJDBCDRIVER = String.literal("STATICPAGES_JDBCDRIVER");
        this.STATICPAGESNAME = String.literal("STATICPAGESNAME");
        this.STATICPAGESUSERNAME = String.literal("STATICPAGESUSERNAME");
        this.STATICPAGESPASSWORD = String.literal("STATICPAGESPASSWORD");
        this.STATICPAGESSCHEMA = String.literal("STATICPAGESSCHEMA");
        this.STATICPAGESSERVER = String.literal("STATICPAGESSERVER");
        this.STATICPAGESPORT = String.literal("STATICPAGESPORT");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InitializerData {
        return Inheritance.upcast(?*InitializerData, InitializerData.instance);
    }
    

    pub fn getJdbcDriverSolutionInfo(self: *Self) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("1. A JDBC driver you specified is not in your classpath.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("2. The JDBC driver you specified does not exit.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution: Get a JDBC driver. <br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("3. The JDBC driver you specified is not valid.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution: Use a valid JDBC driver.<p/>") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

