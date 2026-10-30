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
// package org.allbinary.game.layer.hud.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const GameNotificationEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.event.GameNotificationEvent";
    base: AllBinaryEventObject = undefined,
    string: ?*String = null,
    seconds: ?*Integer = null,
    basicColor: ?*BasicColor = null,
    removeable: ?*Boolean = null,

    fn initFields(this: *Self) void {
        this.string = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
        
    }
    

    pub fn create5(anyType: ?Object, string: ?*String, seconds: ?*Integer, basicColor: ?*BasicColor, permanent: ?*Boolean) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        _ = Inheritance.call(this, "setString", .{ string });
        this.seconds = seconds;
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        this.removeable = permanent;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getString(self: *Self) ?*String {
        return self.string;
    }
    

    pub fn getSeconds(self: *Self) ?*Integer {
        return self.seconds;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn getPermanent(self: *Self) ?*Boolean {
        return self.removeable;
    }
    

    pub fn setString(self: *Self, string: ?*String) void {
        self.string = string;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
};

