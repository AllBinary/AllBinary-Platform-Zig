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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;

pub const CanvasUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.CanvasUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getKeyName(key: i32) ?*String {
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        if (key == Canvas.UP) {
            return Inheritance.upcast(?*String, commonPhoneStrings.?.UP);
        } else if (key == Canvas.DOWN) {
            return Inheritance.upcast(?*String, commonPhoneStrings.?.DOWN);
        } else if (key == Canvas.RIGHT) {
            return Inheritance.upcast(?*String, commonPhoneStrings.?.RIGHT);
        } else if (key == Canvas.LEFT) {
            return Inheritance.upcast(?*String, commonPhoneStrings.?.LEFT);
        } else if (key == Canvas.FIRE) {
            return Inheritance.upcast(?*String, commonPhoneStrings.?.FIRE);
        }
        return String.literal("UNKNOWN KEY");
    }
};

