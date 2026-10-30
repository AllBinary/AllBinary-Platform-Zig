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
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;

pub const MainGameDemoStatePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.MainGameDemoStatePaintable";
    base: Paintable = undefined,
    ownershipPaintableInterface: ?*Paintable = null,
    menuPaintableInterface: ?*Paintable = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(ownershipPaintableInterface: ?*Paintable, menuPaintableInterface: ?*Paintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.ownershipPaintableInterface = ownershipPaintableInterface;
        this.menuPaintableInterface = menuPaintableInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.menuPaintableInterface.?, "paint", .{ graphics });
        _ = Inheritance.call(self.ownershipPaintableInterface.?, "paint", .{ graphics });
    }
    

    pub fn getOwnershipPaintableInterface(self: *Self) ?*Paintable {
        return self.ownershipPaintableInterface;
    }
    

    pub fn getMenuPaintableInterface(self: *Self) ?*Paintable {
        return self.menuPaintableInterface;
    }
};

