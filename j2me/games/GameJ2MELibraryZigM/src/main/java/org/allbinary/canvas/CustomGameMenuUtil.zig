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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AppletUtil = @import("org/allbinary/AppletUtil.zig").AppletUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;

pub const CustomGameMenuUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.CustomGameMenuUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn add(canvas: ?*MyCanvas) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        if (Inheritance.callStatic(AppletUtil, "isAppletLoader", .{ canvas })) {
        } else if (J2MEUtil.isHTML()) {
        } else {
            _ = Inheritance.call(canvas.?, "addCommand", .{ gameCommandsFactory.?.EXIT_COMMAND });
        }
    }
};

