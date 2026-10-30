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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;

pub const ImmutableBasicArrayList = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ImmutableBasicArrayList";
    base: BasicArrayListS = undefined,
    name: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(name: ?*String, size: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicArrayListS, "create1", .{ size }).*;
        this.initFields();
        this.name = name;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn add(self: *Self, e: ?Object) bool {
        _ = e;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.name, self });
        return true;
    }
    

    pub fn addAt(self: *Self, index: i32, element: ?Object) void {
        _ = index;
        _ = element;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.name, self });
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.name;
    }
};

