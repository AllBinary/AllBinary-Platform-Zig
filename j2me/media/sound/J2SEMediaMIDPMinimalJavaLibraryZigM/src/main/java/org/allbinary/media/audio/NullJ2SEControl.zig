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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Control = @import("javax/sound/sampled/Control.zig").Control;

pub const NullJ2SEControl = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.NullJ2SEControl";
    base: Control = undefined,
    

    pub fn create1(@"type": ?*Type) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Control, "create1", .{ @"type" }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

