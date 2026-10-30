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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonFactory = @import("org/allbinary/input/motion/button/TouchButtonFactory.zig").TouchButtonFactory;

pub const TouchButtonsPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsPaintable";
    base: Paintable = undefined,
    foregroundBasicColor: ?*BasicColor = null,
    foregroundColor: i32 = 0,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    touchButtonFactory: ?*TouchButtonFactory = null,

    fn initFields(this: *Self) void {
        
        
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.touchButtonFactory = Inheritance.upcast(?*TouchButtonFactory, TouchButtonFactory.getInstance());
    }
    

    pub fn create1(basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.foregroundBasicColor = basicColor;
        this.foregroundColor = basicColor.?.intValue();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.touchButtonFactory.?.getList());
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP3", .{ graphics, self.foregroundBasicColor, self.foregroundColor });
        var touchButton: ?*TouchButton = null;
        {
            var index: i32 = list.?.size();
            while (value_N66263: { index -= 1; break :value_N66263 index; } >= 0) {
            touchButton = Inheritance.cast(?*TouchButton, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(touchButton.?, "paint", .{ graphics });
            }
        }
        {
            var index: i32 = list.?.size();
            while (value_N66422: { index -= 1; break :value_N66422 index; } >= 0) {
            touchButton = Inheritance.cast(?*TouchButton, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(touchButton.?, "paintHint", .{ graphics });
            }
        }
    }
};

