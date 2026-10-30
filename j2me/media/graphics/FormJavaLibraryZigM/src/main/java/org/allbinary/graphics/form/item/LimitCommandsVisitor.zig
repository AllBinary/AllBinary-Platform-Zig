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
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const ScreenInfo = @import("org/allbinary/graphics/form/ScreenInfo.zig").ScreenInfo;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;

pub const LimitCommandsVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.LimitCommandsVisitor";
    base: Visitor = undefined,
    isNotSmallDisplay: bool = false,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Visitor.create().*;
        this.initFields();
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.isNotSmallDisplay = (displayInfo.?.isPortrait() and displayInfo.?.getLastHeight() > ScreenInfo.getInstance().?.SMALL_WIDTH) or (!displayInfo.?.isPortrait() and displayInfo.?.getLastHeight() > ScreenInfo.getInstance().?.SMALL_HEIGHT);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        const command: ?*Command = Inheritance.cast(?*Command, anyType);
        const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        if (self.isNotSmallDisplay or command.?.getPriority() == 1 or Object.same(command, GameCommandsFactory.getInstance().?.EXIT_COMMAND) or Object.same(command, GameCommandsFactory.getInstance().?.EXIT_WITHOUT_PROGRESS_COMMAND)) {
            return Inheritance.upcast(?Object, booleanFactory.?.TRUE);
        } else {
            return Inheritance.upcast(?Object, booleanFactory.?.FALSE);
        }
    }
};

