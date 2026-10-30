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
// package org.allbinary.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Parcelable = @import("android/os/Parcelable.zig").Parcelable;
const Parcel = @import("android/os/Parcel.zig").Parcel;

pub const NullParcelable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.NullParcelable";
    // Implements Parcelable
    pub var NULL_PARCELABLE: ?*NullParcelable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PARCELABLE = NullParcelable.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn describeContents(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn writeToParcel(self: *Self, dest: ?*Parcel, flags: i32) void {
        _ = dest;
        _ = flags;
        _ = self;
    }
};

