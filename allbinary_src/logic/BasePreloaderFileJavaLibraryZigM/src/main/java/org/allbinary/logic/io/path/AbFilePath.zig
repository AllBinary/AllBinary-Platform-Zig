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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;

pub const AbFilePath = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.path.AbFilePath";
    base: AbPath = undefined,
    

    pub fn create1(aPath: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbPath, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING }).*;
        const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const abPathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
        Inheritance.fieldPointer(this, "schema").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "schema").*), Inheritance.call(this, "getSchema", .{ aPath }));
        _ = Inheritance.call(this, "setName", .{ Inheritance.call(pathData.?, "getNameFromPath", .{ aPath }) });
        _ = Inheritance.call(this, "setPath", .{ Inheritance.call(abPathUtil.?, "adjust", .{ Inheritance.call(this, "getPathFromPath", .{ Object.toString(Object.of(Inheritance.call(abPathUtil.?, "removeNameFromPath", .{ aPath }))) }) }) });
        Inheritance.bindOverrides(this);
        return this;
    }
};

