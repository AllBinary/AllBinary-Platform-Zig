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
// package org.allbinary.logic.io.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const AbPathData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.path.AbPathData";
    EXTENSION_SEP: ?*String = null,
    SEPARATORCHAR: u16 = 0,
    SEPARATOR: ?*String = null,
    var instance: ?*AbPathData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbPathData.create();
    }

    fn initFields(this: *Self) void {
        this.EXTENSION_SEP = Inheritance.upcast(?*String, CommonSeps.getInstance().?.PERIOD);
        this.SEPARATORCHAR = '/';
        this.SEPARATOR = Inheritance.upcast(?*String, CommonSeps.getInstance().?.FORWARD_SLASH);
    }
    

    pub fn getInstance() ?*AbPathData {
        return Inheritance.upcast(?*AbPathData, AbPathData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

