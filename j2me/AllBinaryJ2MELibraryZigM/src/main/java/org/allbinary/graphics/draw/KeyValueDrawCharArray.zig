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
// package org.allbinary.graphics.draw

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CharArrayFactory = @import("org/allbinary/logic/java/character/CharArrayFactory.zig").CharArrayFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;

pub const KeyValueDrawCharArray = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.draw.KeyValueDrawCharArray";
    myFontProcessor: ?*MyFontProcessor = null,
    LABEL: ?*String = null,
    labelX: i32 = 0,
    valueX: i32 = 0,
    value: []u16 = &.{},
    len: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        
        
        this.valueX = 0;
        this.value = Inheritance.receiverOf(CharArrayFactory.getInstance().?, "getZeroCharArray").getZeroCharArray();
        this.len = 0;
    }
    

    pub fn create2(label: ?*String, x: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.LABEL = label;
        this.labelX = x;
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const labelWidth: i32 = Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.LABEL }) - self.LABEL.?.length();
        self.valueX = labelWidth + self.labelX;
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics, y: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.LABEL, self.labelX, y, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.value, 0, self.len, self.valueX, y, 0 });
    }
    

    pub fn update(self: *Self, value: []u16, len: i32) void {
        self.value = value;
        self.len = len;
    }
};

