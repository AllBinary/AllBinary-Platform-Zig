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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryGameCanvasInterface = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.zig").AllBinaryGameCanvasInterface;

pub const NullAllBinaryGameCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas";
    pub const java_interfaces = .{ AllBinaryGameCanvasInterface };
    // Implements AllBinaryGameCanvasInterface
    pub var NULL_ALLBINARY_GAME_CANVAS: ?*NullAllBinaryGameCanvas = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ALLBINARY_GAME_CANVAS = NullAllBinaryGameCanvas.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getLayerManager(self: *Self) ?*AllBinaryGameLayerManager {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn addCommand(self: *Self, cmd: ?*Command) void {
        _ = cmd;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHeight(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWidth(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn removeCommand(self: *Self, cmd: ?*Command) void {
        _ = cmd;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setCommandListener(self: *Self, l: ?*CommandListener) void {
        _ = l;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

