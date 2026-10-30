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
// package org.allbinary.logic.communication.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;

pub const LogData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogData";
    MAX: i64 = 0,
    extension: ?*String = null,
    backupFileExt: ?*String = null,
    ALLBINARY: ?*String = null,
    NAME: ?*String = null,
    DESCRIPTION: ?*String = null,

    fn initFields(this: *Self) void {
        this.MAX = 5000000;
        this.extension = String.literal("log");
        this.backupFileExt = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(AbPathData.getInstance().?.EXTENSION_SEP, String.literal("bak")), AbPathData.getInstance().?.EXTENSION_SEP), String.literal("txt")));
        this.ALLBINARY = String.literal("allbinary");
        this.NAME = String.literal("LOG_NAME");
        this.DESCRIPTION = String.literal("LOG_DESCRIPTION");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

