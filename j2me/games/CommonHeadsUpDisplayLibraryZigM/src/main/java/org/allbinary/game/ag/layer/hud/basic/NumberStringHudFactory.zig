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
// package org.allbinary.game.ag.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NumberStringHud = @import("org/allbinary/game/ag/layer/hud/basic/NumberStringHud.zig").NumberStringHud;

pub const NumberStringHudFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory";
    NULL_NUMBER_STRING_HUD: ?*NumberStringHud = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance());
    }

    fn initFields(this: *Self) void {
        this.NULL_NUMBER_STRING_HUD = Inheritance.upcast(?*NumberStringHud, this.createHud());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*NumberStringHudFactory {
        if (Object.same(NumberStringHudFactory.instance, NullUtil.getInstance())) {
            NumberStringHudFactory.instance = Inheritance.upcast(@TypeOf(NumberStringHudFactory.instance), NumberStringHudFactory.create());
        }
        return Inheritance.cast(?*NumberStringHudFactory, NumberStringHudFactory.instance);
    }
    

    pub fn createHud(self: *Self) ?*NumberStringHud {
        _ = self;
        { // try
            return Inheritance.callStatic(NumberStringHud, "create6", .{ StringUtil.getInstance().?.EMPTY_STRING, 9, BasicHudFactory.getInstance().?.ABSOLUTE, 1, 0, BasicColorFactory.getInstance().?.NULL_COLOR });
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.CONSTRUCTOR, e });
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
};

