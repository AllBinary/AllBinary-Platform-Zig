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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;

pub const MyFontProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.font.MyFontProcessor";
    var instance: ?*MyFontProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MyFontProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn defaultCharWidth(font: ?*Font) i32 {
        return Inheritance.call(font.?, "charWidth", .{ 'C' });
    }
    

    pub fn defaultStringWidth(font: ?*Font, size: i32) i32 {
        return Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font }) * size;
    }
    

    pub fn getInstance() ?*MyFontProcessor {
        return Inheritance.upcast(?*MyFontProcessor, MyFontProcessor.instance);
    }
    

    pub fn process(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

