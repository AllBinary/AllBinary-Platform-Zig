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
// package org.allbinary.data.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const UniqueIdGenerator = @import("org/allbinary/data/generator/UniqueIdGenerator.zig").UniqueIdGenerator;

pub const OrderItemIdGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.generator.OrderItemIdGenerator";
    base: UniqueIdGenerator = undefined,
    IDFILE: ?*String = null,

    fn initFields(this: *Self) void {
        this.IDFILE = String.literal("orderitemId.unq");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = UniqueIdGenerator.create().*;
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.INIT_PATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.IDFILE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UniqueIdGenerator.EXT });
        _ = Inheritance.call(&this.base, "setFile", .{ Object.toString(Object.of(stringBuffer)), this.IDFILE });
        Inheritance.bindOverrides(this);
        return this;
    }
};

