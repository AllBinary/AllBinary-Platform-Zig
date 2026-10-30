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
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const BaseMenuBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BaseMenuBehavior";
    var instance: ?*BaseMenuBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BaseMenuBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*BaseMenuBehavior {
        return Inheritance.upcast(?*BaseMenuBehavior, BaseMenuBehavior.instance);
    }
    

    // throws Exception
    pub fn onDisplayChangeEvent(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = allBinaryGameCanvas;
        _ = displayChangeEvent;
        _ = self;
    }
    

    pub fn initSpecialPaint(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.call(allBinaryGameCanvas.?, "setNonBotPaintableP", .{ NullPaintable.getInstance() });
    }
    

    // throws Exception
    pub fn initMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn updateMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn popupMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    pub fn closeMenu(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
};

