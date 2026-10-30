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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Layer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.Layer";
    logUtil: ?*LogUtil = null,
    x: i32 = 0,
    y: i32 = 0,
    z: i32 = 0,
    width: i32 = 0,
    height: i32 = 0,
    visible: bool = false,
    pub var ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.x = 0;
        this.y = 0;
        this.z = 3;
        this.width = 0;
        this.height = 0;
        this.visible = true;
    }
    

    pub fn create2(width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setLayerWidth", .{ width });
        _ = Inheritance.call(this, "setLayerHeight", .{ height });
        return this;
    }
    

    pub fn setPosition(self: *Self, x: i32, y: i32, z: i32) void {
        self.x = x;
        self.y = y;
        self.z = z;
    }
    

    pub fn moveDXY(self: *Self, dx: i32, dy: i32) void {
        self.x += dx;
        self.y += dy;
    }
    

    pub fn moveDXYZ(self: *Self, dx: i32, dy: i32, dz: i32) void {
        self.x += dx;
        self.y += dy;
        self.z += dz;
    }
    

    pub fn getXP(self: *Self) i32 {
        return self.x;
    }
    

    pub fn getYP(self: *Self) i32 {
        return self.y;
    }
    

    pub fn getZP(self: *Self) i32 {
        return self.z;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn getDepth(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn setVisible(self: *Self, visible: bool) void {
        self.visible = visible;
    }
    

    pub fn isVisible(self: *Self) bool {
        return self.visible;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const canvasStrings: ?*CanvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.NOT_IMPLEMENTED, self, canvasStrings.?.PAINT });
    }
    

    pub fn setLayerWidth(self: *Self, width: i32) void {
        if (width < 0) {
            std.debug.panic("{any}", .{error.IllegalArgumentException});
        }
        self.width = width;
    }
    

    pub fn setLayerHeight(self: *Self, height: i32) void {
        if (height < 0) {
            std.debug.panic("{any}", .{error.IllegalArgumentException});
        }
        self.height = height;
    }
    

    pub fn toStringAppend(self: *Self, stringBuffer: ?*StringMaker) void {
        _ = stringBuffer;
        _ = self;
    }
};

