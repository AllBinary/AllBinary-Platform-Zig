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
// package org.allbinary.graphics.font

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;

pub const UpdateMyFontProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.font.UpdateMyFontProcessor";
    base: MyFontProcessor = undefined,
    updateMeasurementProcessor: ?*UpdateMyFontInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(keyValueDrawCharArray: ?*UpdateMyFontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MyFontProcessor.create().*;
        this.initFields();
        this.updateMeasurementProcessor = keyValueDrawCharArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.updateMeasurementProcessor.?, "updateMeasurement", .{ graphics });
    }
};

