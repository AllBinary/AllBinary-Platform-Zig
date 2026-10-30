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
// package org.allbinary.graphics.opengles.shader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CompositeShaderUpdater = @import("org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.zig").CompositeShaderUpdater;

pub const SimpleCompositeShaderUpdater = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater";
    base: CompositeShaderUpdater = undefined,
    

    pub fn create4(uniformBlockArray: []?*String, uniformArray: []?*String, attributeArray: []?*String, attributeHandleArray: []i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompositeShaderUpdater, "create4", .{ uniformBlockArray, uniformArray, attributeArray, attributeHandleArray }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

