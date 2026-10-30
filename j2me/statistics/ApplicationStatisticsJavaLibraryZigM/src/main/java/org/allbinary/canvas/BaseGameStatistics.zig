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
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;
const ScaleFactorFactory = @import("org/allbinary/logic/math/ScaleFactorFactory.zig").ScaleFactorFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const BaseGameStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.BaseGameStatistics";
    timeDelayHelper: ?*TimeDelayHelper = null,
    updateDelayHelper: ?*TimeDelayHelper = null,
    totalRefreshes: i64 = 0,
    totalFrames: i64 = 0,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    DEFAULT_SCALE_FACTOR: i32 = 0,
    NOT: ?*String = null,
    EMPTY_STRING: ?*String = null,
    STRING_ARRAY: []?*String = &.{},
    SPACE_CHAR: u16 = 0,
    PLUS_CHAR: u16 = 0,
    X_CHAR: u16 = 0,
    CHAR_ARRAY: [][]u16 = &.{},
    primitiveLongSingleton: ?*PrimitiveLongSingleton = null,

    fn initFields(this: *Self) void {
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ @as(i32, std.math.maxInt(i32)) });
        this.updateDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 2000 });
        this.totalRefreshes = 0;
        this.totalFrames = 0;
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_FACTOR;
        this.NOT = String.literal("Not enough Time to Calculate");
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.STRING_ARRAY = @constCast(&[_]?*String{ String.literal(" Total Time: "), this.EMPTY_STRING, String.literal(" Total Frames: "), this.EMPTY_STRING, String.literal(" Frames/10 Sec: "), this.EMPTY_STRING, String.literal(" Total Paints: "), this.EMPTY_STRING, String.literal(" Paints/10 Sec: "), this.EMPTY_STRING })[0..];
        this.SPACE_CHAR = ' ';
        this.PLUS_CHAR = '+';
        this.X_CHAR = 'X';
        this.CHAR_ARRAY = @constCast(&[_][]u16{ @constCast(&[_]u16{ 'F', 'r', 'a', 'm', 'e', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':' })[0..], @constCast(&[_]u16{ 'X', 'X' })[0..], @constCast(&[_]u16{ 'P', 'a', 'i', 'n', 't', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':' })[0..], @constCast(&[_]u16{ 'X', 'X' })[0..] })[0..];
        this.primitiveLongSingleton = Inheritance.upcast(?*PrimitiveLongSingleton, PrimitiveLongSingleton.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self.timeDelayHelper.?.setStartTimeTNT();
        self.totalRefreshes = 0;
        self.totalFrames = 0;
    }
    

    pub fn add(self: *Self, string: ?*String) void {
        _ = string;
        _ = self;
    }
    

    pub fn process(self: *Self) void {
        _ = self;
    }
    

    pub fn nextFrame(self: *Self) void {
        self.totalFrames += 1;
    }
    

    pub fn nextRefresh(self: *Self) void {
        self.totalRefreshes += 1;
    }
    

    pub fn getRefreshRate(self: *Self) i16 {
        const elapsed: i64 = Inheritance.call(self.timeDelayHelper.?, "getElapsed", .{ self.gameTickTimeDelayHelper.?.startTime });
        if (elapsed > 1) {
            const time: i16 = @as(i16, @intCast((@divTrunc(self.totalRefreshes, (elapsed >> @intCast(self.DEFAULT_SCALE_FACTOR))))));
            return time;
        } else {
            return 0;
        }
    }
    

    pub fn getTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.timeDelayHelper;
    }
    

    pub fn to2DCharArray(self: *Self) [][]u16 {
        var totalTime: i64 = Inheritance.call(self.timeDelayHelper.?, "getElapsed", .{ self.gameTickTimeDelayHelper.?.startTime });
        totalTime = (totalTime >> @intCast(self.DEFAULT_SCALE_FACTOR));
        if (totalTime > 0 and Inheritance.call(self.updateDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            const framesPerSec: i32 = @as(i32, @intCast((@divTrunc(self.totalFrames, totalTime))));
            if (framesPerSec < 10) {
                self.CHAR_ARRAY[@intCast(1)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(0)]), self.SPACE_CHAR);
                self.CHAR_ARRAY[@intCast(1)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(1)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(framesPerSec)]);
            } else if (framesPerSec < 100) {
                const tens: i32 = @divTrunc(framesPerSec, 10);
                const removeTens: i32 = tens * 10;
                self.CHAR_ARRAY[@intCast(1)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(0)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(tens)]);
                self.CHAR_ARRAY[@intCast(1)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(1)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(framesPerSec - removeTens)]);
            } else {
                self.CHAR_ARRAY[@intCast(1)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(0)]), self.PLUS_CHAR);
                self.CHAR_ARRAY[@intCast(1)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(1)][@intCast(1)]), self.PLUS_CHAR);
            }
            const refreshesPerSec: i32 = @as(i32, @intCast((@divTrunc(self.totalRefreshes, totalTime))));
            if (refreshesPerSec < 10) {
                self.CHAR_ARRAY[@intCast(3)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(0)]), self.X_CHAR);
                self.CHAR_ARRAY[@intCast(3)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(1)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(refreshesPerSec)]);
            } else if (refreshesPerSec < 100) {
                const tens: i32 = @divTrunc(refreshesPerSec, 10);
                const removeTens: i32 = tens * 10;
                self.CHAR_ARRAY[@intCast(3)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(0)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(@divTrunc(refreshesPerSec, 10))]);
                self.CHAR_ARRAY[@intCast(3)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(1)]), self.primitiveLongSingleton.?.NUMBER_CHAR_ARRAY[@intCast(refreshesPerSec - removeTens)]);
            } else {
                self.CHAR_ARRAY[@intCast(3)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(0)]), self.PLUS_CHAR);
                self.CHAR_ARRAY[@intCast(3)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.CHAR_ARRAY[@intCast(3)][@intCast(1)]), self.PLUS_CHAR);
            }
        }
        return self.CHAR_ARRAY;
    }
    

    pub fn toStringArray(self: *Self) []?*String {
        var totalTime: i64 = Inheritance.call(self.timeDelayHelper.?, "getElapsed", .{ self.gameTickTimeDelayHelper.?.startTime });
        totalTime = (@divTrunc(totalTime, 10000));
        if (totalTime > 0) {
            self.STRING_ARRAY[@intCast(1)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(1)]), String.valueOf(totalTime));
            self.STRING_ARRAY[@intCast(3)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(3)]), String.valueOf(self.totalFrames));
            self.STRING_ARRAY[@intCast(5)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(5)]), String.valueOf(@divTrunc(self.totalFrames, totalTime)));
            self.STRING_ARRAY[@intCast(7)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(7)]), String.valueOf(self.totalRefreshes));
            self.STRING_ARRAY[@intCast(9)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(9)]), String.valueOf(@divTrunc(self.totalRefreshes, totalTime)));
        } else {
            const string: ?*String = self.EMPTY_STRING;
            self.STRING_ARRAY[@intCast(1)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(1)]), string);
            self.STRING_ARRAY[@intCast(3)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(3)]), string);
            self.STRING_ARRAY[@intCast(5)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(5)]), string);
            self.STRING_ARRAY[@intCast(7)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(7)]), string);
            self.STRING_ARRAY[@intCast(9)] = Inheritance.upcast(@TypeOf(self.STRING_ARRAY[@intCast(9)]), string);
        }
        return self.STRING_ARRAY;
    }
    

    pub fn toStringAt(self: *Self, totalTime: i64) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.STRING_ARRAY[@intCast(0)] });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ totalTime });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.STRING_ARRAY[@intCast(2)] });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.totalFrames });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.STRING_ARRAY[@intCast(4)] });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @divTrunc(self.totalFrames, totalTime) });
        if (self.totalRefreshes > 0) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.STRING_ARRAY[@intCast(6)] });
            _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.totalRefreshes });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.STRING_ARRAY[@intCast(8)] });
            _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @divTrunc(self.totalRefreshes, totalTime) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn toString(self: *Self) ?*String {
        var totalTime: i64 = Inheritance.call(self.timeDelayHelper.?, "getElapsed", .{ self.gameTickTimeDelayHelper.?.startTime });
        totalTime = (@divTrunc(totalTime, 1000));
        if (totalTime > 0) {
            return Inheritance.upcast(?*String, Inheritance.call(self, "toStringAt", .{ totalTime }));
        } else {
            return self.NOT;
        }
    }
};

