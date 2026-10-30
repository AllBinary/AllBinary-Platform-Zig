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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABTextItem = @import("org/allbinary/graphics/form/item/ABTextItem.zig").ABTextItem;

pub const CommandTextItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.CommandTextItem";
    base: ABTextItem = undefined,
    command: ?*Command = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create5(command: ?*Command, layout: i32, altText: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABTextItem, "create5", .{ command.?.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.command = command;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isFocusable(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getCommand(self: *Self) ?*Command {
        return self.command;
    }
};

