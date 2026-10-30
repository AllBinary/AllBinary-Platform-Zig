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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const NoTimeDelayHelper = @import("org/allbinary/time/NoTimeDelayHelper.zig").NoTimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const InputProbability = @import("org/allbinary/game/ag/ai/InputProbability.zig").InputProbability;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicProbabilityAIDataFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*ABHashtable {
        _ = self;
        const likelyhoodIntegerArray: [][]?*Integer = array_N65719: { const array_N65719_array = allocator.alloc([]?*Integer, @intCast(Canvas.KEY_NUM9 + 1)) catch unreachable; for (array_N65719_array) |*array_N65719_row| { array_N65719_row.* = allocator.alloc(?*Integer, @intCast(2)) catch unreachable; @memset(array_N65719_row.*, null); } break :array_N65719 array_N65719_array; };
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        likelyhoodIntegerArray[@intCast(Canvas.UP)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.UP)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        likelyhoodIntegerArray[@intCast(Canvas.UP)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.UP)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }));
        likelyhoodIntegerArray[@intCast(Canvas.DOWN)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.DOWN)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }));
        likelyhoodIntegerArray[@intCast(Canvas.DOWN)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.DOWN)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 14 }));
        likelyhoodIntegerArray[@intCast(Canvas.LEFT)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.LEFT)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 14 }));
        likelyhoodIntegerArray[@intCast(Canvas.LEFT)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.LEFT)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 18 }));
        likelyhoodIntegerArray[@intCast(Canvas.RIGHT)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.RIGHT)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 18 }));
        likelyhoodIntegerArray[@intCast(Canvas.RIGHT)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.RIGHT)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 22 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 22 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 26 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 26 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 30 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)][@intCast(0)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)][@intCast(0)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 30 }));
        likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)][@intCast(1)] = Inheritance.upcast(@TypeOf(likelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)][@intCast(1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 40 }));
        const repeatLikelyhoodIntegerArray: []?*Integer = array_N66817: { const array_N66817_array = allocator.alloc(?*Integer, @intCast(Canvas.KEY_NUM9 + 1)) catch unreachable; @memset(array_N66817_array, null); break :array_N66817 array_N66817_array; };
        repeatLikelyhoodIntegerArray[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.UP)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.DOWN)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.LEFT)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.RIGHT)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM7)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM9)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }));
        repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)] = Inheritance.upcast(@TypeOf(repeatLikelyhoodIntegerArray[@intCast(Canvas.KEY_NUM1)]), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }));
        const inputProbability: ?*InputProbability = Inheritance.callStatic(InputProbability, "create4", .{ likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper.SINGLETON });
        return Inheritance.upcast(?*ABHashtable, inputProbability.?.toHashtable());
    }
};

