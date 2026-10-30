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
// package org.allbinary.globals

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;

pub const FREEBLISKET_PATH_GLOBALS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.FREEBLISKET_PATH_GLOBALS";
    INSTALLPATH: ?*String = null,
    XSLPATH: ?*String = null,
    TEMPLATEPATH: ?*String = null,
    STYLEPATH: ?*String = null,
    THEMEPATH: ?*String = null,
    DBINITPATH: ?*String = null,
    LINEDATAPATH: ?*String = null,
    CONFIGURATIONPATH: ?*String = null,
    USERCONFIGURATIONPATH: ?*String = null,
    CONTEXTCONFIGURATIONPATH: ?*String = null,
    LICENSEERRORPAGE: ?*String = null,
    ERRORPAGE: ?*String = null,
    var instance: ?*FREEBLISKET_PATH_GLOBALS = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FREEBLISKET_PATH_GLOBALS.create();
    }

    fn initFields(this: *Self) void {
        
        
        this.TEMPLATEPATH = Inheritance.upcast(?*String, String.plus(String.literal("template"), AbPathData.getInstance().?.SEPARATOR));
        this.STYLEPATH = Inheritance.upcast(?*String, String.plus(String.plus(this.TEMPLATEPATH, String.literal("style")), AbPathData.getInstance().?.SEPARATOR));
        this.THEMEPATH = Inheritance.upcast(?*String, String.plus(String.plus(this.STYLEPATH, String.literal("theme")), AbPathData.getInstance().?.SEPARATOR));
        this.DBINITPATH = Inheritance.upcast(?*String, String.plus(String.plus(PATH_GLOBALS.getInstance().?.INIT_PATH, String.literal("db")), AbPathData.getInstance().?.SEPARATOR));
        this.LINEDATAPATH = Inheritance.upcast(?*String, String.plus(String.plus(PATH_GLOBALS.getInstance().?.INIT_PATH, String.literal("lineData")), AbPathData.getInstance().?.SEPARATOR));
        
        
        
        this.LICENSEERRORPAGE = String.literal("LicensingError.jsp");
        this.ERRORPAGE = String.literal("Error.jsp");
    }
    

    pub fn getInstance() ?*FREEBLISKET_PATH_GLOBALS {
        return Inheritance.upcast(?*FREEBLISKET_PATH_GLOBALS, FREEBLISKET_PATH_GLOBALS.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("install") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        this.INSTALLPATH = Inheritance.upcast(@TypeOf(this.INSTALLPATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.INIT_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("views") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        this.XSLPATH = Inheritance.upcast(@TypeOf(this.XSLPATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("configuration") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        this.CONFIGURATIONPATH = Inheritance.upcast(@TypeOf(this.CONFIGURATIONPATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.CONFIGURATIONPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("user") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        this.USERCONFIGURATIONPATH = Inheritance.upcast(@TypeOf(this.USERCONFIGURATIONPATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.CONFIGURATIONPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("context") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        this.CONTEXTCONFIGURATIONPATH = Inheritance.upcast(@TypeOf(this.CONTEXTCONFIGURATIONPATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        return this;
    }
};

