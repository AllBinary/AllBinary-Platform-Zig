// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const ABStack = @import("org/allbinary/util/ABStack.zig").ABStack;
const ABVector = @import("org/allbinary/util/ABVector.zig").ABVector;

//ActualPlatform
pub const StdUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.StdUtil";
    EMPTY_VECTOR: ?*ABVector = null,
    NULL_TABLE: ?*ABHashtable = null,
    var instance: ?*StdUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StdUtil.create();
    }

    fn initFields(this: *Self) void {
        this.EMPTY_VECTOR = Inheritance.upcast(?*ABVector, this.createVector());
        this.NULL_TABLE = Inheritance.upcast(?*ABHashtable, this.createHashtable());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*StdUtil {
        return Inheritance.upcast(?*StdUtil, StdUtil.instance);
    }
    

    pub fn createStack(self: *Self) ?*ABStack {
        _ = self;
        return ABStack.create();
    }
    

    pub fn createVector(self: *Self) ?*ABVector {
        _ = self;
        return ABVector.create();
    }
    

    pub fn createHashtable(self: *Self) ?*ABHashtable {
        _ = self;
        return ABHashtable.create();
    }
};

