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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputMappingInterface = @import("org/allbinary/game/input/mapping/InputMappingInterface.zig").InputMappingInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ProcessPaintable = @import("org/allbinary/graphics/paint/ProcessPaintable.zig").ProcessPaintable;

pub const TouchButtonsPaintableCompositeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(inputMappingInterface: ?*InputMappingInterface, basicColor: ?*BasicColor) ?*ProcessPaintable {
        _ = inputMappingInterface;
        _ = basicColor;
        return ProcessPaintable.create();
    }
};

