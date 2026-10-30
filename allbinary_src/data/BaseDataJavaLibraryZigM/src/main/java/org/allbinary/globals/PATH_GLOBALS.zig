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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const PATH_GLOBALS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.PATH_GLOBALS";
    DATA_PATH: ?*String = null,
    INIT_PATH: ?*String = null,
    VIEWS_PATH: ?*String = null,
    LOG_PATH: ?*String = null,
    BACKUP_PATH: ?*String = null,
    var instance: ?*PATH_GLOBALS = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PATH_GLOBALS.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn getInstance() ?*PATH_GLOBALS {
        return Inheritance.upcast(?*PATH_GLOBALS, PATH_GLOBALS.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const abPathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("data") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        this.DATA_PATH = Inheritance.upcast(@TypeOf(this.DATA_PATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.DATA_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonStrings.getInstance().?.INIT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        this.INIT_PATH = Inheritance.upcast(@TypeOf(this.INIT_PATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.DATA_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("log") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        this.LOG_PATH = Inheritance.upcast(@TypeOf(this.LOG_PATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.DATA_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("backup") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        this.BACKUP_PATH = Inheritance.upcast(@TypeOf(this.BACKUP_PATH), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.INIT_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("views") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        this.VIEWS_PATH = Inheritance.upcast(@TypeOf(this.VIEWS_PATH), Object.toString(Object.of(stringBuffer)));
        return this;
    }
};

