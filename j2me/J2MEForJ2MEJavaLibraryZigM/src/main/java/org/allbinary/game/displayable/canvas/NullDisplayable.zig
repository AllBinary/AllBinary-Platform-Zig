// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BaseGameStatistics = @import("org/allbinary/canvas/BaseGameStatistics.zig").BaseGameStatistics;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;

//J2MEForJ2ME
pub const NullDisplayable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.NullDisplayable";
    base: Canvas = undefined,
    baseGameStatistics: ?*BaseGameStatistics = null,
    var SINGLETON: ?*NullDisplayable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NullDisplayable.create();
    }

    fn initFields(this: *Self) void {
        this.baseGameStatistics = Inheritance.upcast(?*BaseGameStatistics, GameStatisticsFactory.getInstance());
    }
    

    pub fn getInstance() ?*NullDisplayable {
        return Inheritance.upcast(?*NullDisplayable, NullDisplayable.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Canvas.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self.baseGameStatistics.?.nextRefresh();
    }
};

