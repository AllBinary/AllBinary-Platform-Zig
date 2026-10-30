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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommandTextItemArrayFactory = @import("org/allbinary/graphics/form/item/CommandTextItemArrayFactory.zig").CommandTextItemArrayFactory;
const LimitCommandsVisitor = @import("org/allbinary/graphics/form/item/LimitCommandsVisitor.zig").LimitCommandsVisitor;

pub const DemoLimitedCommandTextItemArrayFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory";
    commandTextItemArrayFactory: ?*CommandTextItemArrayFactory = null,
    var instance: ?*DemoLimitedCommandTextItemArrayFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DemoLimitedCommandTextItemArrayFactory.create();
    }

    fn initFields(this: *Self) void {
        this.commandTextItemArrayFactory = Inheritance.callStatic(CommandTextItemArrayFactory, "create1", .{ LimitCommandsVisitor.create() });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DemoLimitedCommandTextItemArrayFactory {
        return Inheritance.upcast(?*DemoLimitedCommandTextItemArrayFactory, DemoLimitedCommandTextItemArrayFactory.instance);
    }
    

    pub fn getCommandTextItemArrayFactory(self: *Self) ?*CommandTextItemArrayFactory {
        return self.commandTextItemArrayFactory;
    }
};

