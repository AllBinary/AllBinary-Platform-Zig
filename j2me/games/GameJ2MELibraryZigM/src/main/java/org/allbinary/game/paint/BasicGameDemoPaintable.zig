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
// package org.allbinary.game.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const StatePaintable = @import("org/allbinary/graphics/paint/StatePaintable.zig").StatePaintable;

pub const BasicGameDemoPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.BasicGameDemoPaintable";
    base: StatePaintable = undefined,
    mainDemoStatePaintable: ?*Paintable = null,
    ownershipPaintable: ?*Paintable = null,
    helpPaintableInterface: ?*Paintable = null,
    currentStatePaintable: ?*Paintable = null,

    fn initFields(this: *Self) void {
        
        
        
        this.currentStatePaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
    }
    

    pub fn create3(mainDemoStatePaintable: ?*Paintable, ownershipPaintable: ?*Paintable, helpPaintableInterface: ?*Paintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = StatePaintable.create().*;
        this.initFields();
        this.mainDemoStatePaintable = mainDemoStatePaintable;
        _ = Inheritance.call(this, "setCurrentStatePaintable", .{ NullPaintable.getInstance() });
        this.ownershipPaintable = ownershipPaintable;
        this.helpPaintableInterface = helpPaintableInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setState(self: *Self, state: i32) void {
        if (state == 0) {
            _ = Inheritance.call(self, "setCurrentStatePaintable", .{ self.getMainDemoStatePaintable() });
        } else if (state == 1) {
            _ = Inheritance.call(self, "setCurrentStatePaintable", .{ self.helpPaintableInterface });
        } else {
            _ = Inheritance.call(self, "setCurrentStatePaintable", .{ self.ownershipPaintable });
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.getCurrentStatePaintable().?, "paint", .{ graphics });
    }
    

    pub fn getHelpPaintableInterface(self: *Self) ?*Paintable {
        return self.helpPaintableInterface;
    }
    

    pub fn setCurrentStatePaintable(self: *Self, currentStatePaintable: ?*Paintable) void {
        self.currentStatePaintable = currentStatePaintable;
    }
    

    pub fn getCurrentStatePaintable(self: *Self) ?*Paintable {
        return self.currentStatePaintable;
    }
    

    pub fn getMainDemoStatePaintable(self: *Self) ?*Paintable {
        return self.mainDemoStatePaintable;
    }
};

