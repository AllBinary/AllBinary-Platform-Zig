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
// package org.allbinary.logic.math.permutations

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;

pub const ComparableObject = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.permutations.ComparableObject";
    // Implements Comparable

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn compareTo(self: *Self, anyType: ?Object) i32 {
        if (Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }) < Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ anyType })) {
            return -1;
        } else if (Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }) > Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ anyType })) {
            return 1;
        }
        return 0;
    }
};

