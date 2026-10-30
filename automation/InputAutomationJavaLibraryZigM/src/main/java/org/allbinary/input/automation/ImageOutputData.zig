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
// package org.allbinary.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const System = @import("java/lang/System.zig").System;

pub const ImageOutputData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.ImageOutputData";
    pub var SAVE_PATH: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SAVE_PATH = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.callStatic(System, "getProperty", .{ String.literal("user.dir") }) }).?, "appendchar", .{ FilePathData.getInstance().?.SEPARATORCHAR }).?, "append", .{ String.literal("saves") }).?, "appendchar", .{ FilePathData.getInstance().?.SEPARATORCHAR }))));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

