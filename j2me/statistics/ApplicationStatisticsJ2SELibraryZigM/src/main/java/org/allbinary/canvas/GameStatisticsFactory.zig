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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BaseGameStatistics = @import("org/allbinary/canvas/BaseGameStatistics.zig").BaseGameStatistics;

//ActualPlatform
pub const GameStatisticsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.GameStatisticsFactory";
    base: BaseGameStatistics = undefined,
    stringBuffer: ?*StringMaker = null,
    var instance: ?*GameStatisticsFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameStatisticsFactory.create();
    }

    fn initFields(this: *Self) void {
        this.stringBuffer = StringMaker.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseGameStatistics.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*GameStatisticsFactory {
        return Inheritance.upcast(?*GameStatisticsFactory, GameStatisticsFactory.instance);
    }
    

    pub fn add(self: *Self, string: ?*String) void {
        if (self.stringBuffer.?.length() > 12000) {
            _ = Inheritance.call(self.stringBuffer.?, "delete", .{ 0, self.stringBuffer.?.length() });
            _ = Inheritance.call(self.stringBuffer.?, "append", .{ String.literal("Old Stats Cleared") });
        }
        _ = Inheritance.call(self.stringBuffer.?, "append", .{ string });
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ Object.toString(Object.of(self.stringBuffer)) }))));
    }
};

