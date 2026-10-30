// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BaseMenuBehavior = @import("org/allbinary/game/displayable/canvas/BaseMenuBehavior.zig").BaseMenuBehavior;
const GameCanvasNonBotPaintable = @import("org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable.zig").GameCanvasNonBotPaintable;

pub const InGameMenuBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.InGameMenuBehavior";
    base: BaseMenuBehavior = undefined,
    var instanceC: ?*InGameMenuBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = InGameMenuBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseMenuBehavior.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*InGameMenuBehavior {
        return Inheritance.upcast(?*InGameMenuBehavior, InGameMenuBehavior.instanceC);
    }
    

    // throws Exception
    pub fn onDisplayChangeEvent(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = self;
        _ = Inheritance.call(allBinaryGameCanvas.?, "updateMenuFromEvent", .{ displayChangeEvent });
    }
    

    pub fn initSpecialPaint(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.call(allBinaryGameCanvas.?, "setNonBotPaintableP", .{ Inheritance.callStatic(GameCanvasNonBotPaintable, "create1", .{ allBinaryGameCanvas }) });
    }
    

    // throws Exception
    pub fn initMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "initMenu2").initMenu2();
    }
    

    // throws Exception
    pub fn updateMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "initMenu2").initMenu2();
    }
    

    // throws Exception
    pub fn popupMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "popupMenu2").popupMenu2();
    }
    

    pub fn closeMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "closeMenu2").closeMenu2();
    }
};

