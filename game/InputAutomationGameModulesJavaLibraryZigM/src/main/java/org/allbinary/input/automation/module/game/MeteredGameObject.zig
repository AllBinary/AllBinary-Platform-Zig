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
// package org.allbinary.input.automation.module.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GraphicsAnalysisUtil = @import("org/allbinary/input/automation/module/game/GraphicsAnalysisUtil.zig").GraphicsAnalysisUtil;
const MeteredGameObjectInterface = @import("org/allbinary/input/automation/module/game/MeteredGameObjectInterface.zig").MeteredGameObjectInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Double = @import("java/lang/Double.zig").Double;

pub const MeteredGameObject = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.MeteredGameObject";
    pub const java_interfaces = .{ MeteredGameObjectInterface };
    ratios: []?*Double = &.{},
    good: bool = false,
    dropping: bool = false,
    minX: ?*Integer = null,
    maxX: ?*Integer = null,
    y: ?*Integer = null,
    size: ?*Integer = null,
    RATIOS_LABEL: ?*String = null,
    IS_GOOD_LABEL: ?*String = null,
    IS_DROPPPING_LABEL: ?*String = null,
    // Implements MeteredGameObjectInterface

    fn initFields(this: *Self) void {
        this.ratios = &.{};
        this.good = false;
        this.dropping = false;
        this.minX = null;
        this.maxX = null;
        this.y = null;
        this.size = null;
        this.RATIOS_LABEL = String.literal("Ratios: ");
        this.IS_GOOD_LABEL = String.literal("isGood: ");
        this.IS_DROPPPING_LABEL = String.literal("isDropping: ");
    }
    

    pub fn create4(bufferedImage: []?*BufferedImage, minX: ?*Integer, maxX: ?*Integer, y: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setRatios", .{ array_N66036: { const array_N66036_array = allocator.alloc(?*Double, @intCast(@as(i32, @intCast(bufferedImage.len)))) catch unreachable; @memset(array_N66036_array, null); break :array_N66036 array_N66036_array; } });
        _ = Inheritance.call(this, "setMinX", .{ minX });
        _ = Inheritance.call(this, "setMaxX", .{ maxX });
        _ = Inheritance.call(this, "setY", .{ y });
        _ = Inheritance.call(this, "setSize", .{ maxX - minX });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImage.len))) : (index += 1) {
            const nominator: f64 = Inheritance.callStatic(GraphicsAnalysisUtil, "getNominator", .{ bufferedImage[@intCast(index)], this.getMinX(), this.getMaxX(), this.getY() });
            this.getRatios()[@intCast(index)] = Inheritance.upcast(@TypeOf(this.getRatios()[@intCast(index)]), Inheritance.callStatic(Double, "create1", .{ nominator / this.getSize() }));
            }
        }
        if (Inheritance.receiverOf(this.getRatios()[@intCast(@as(i32, @intCast(bufferedImage.len)) - 1)].?, "doubleValue").doubleValue() > 0.93) {
            _ = Inheritance.call(this, "setGood", .{ true });
        } else {
            _ = Inheritance.call(this, "setGood", .{ false });
        }
        if (Inheritance.receiverOf(this.getRatios()[@intCast(@as(i32, @intCast(bufferedImage.len)) - 1)].?, "doubleValue").doubleValue() < Inheritance.receiverOf(this.getRatios()[@intCast(0)].?, "doubleValue").doubleValue()) {
            _ = Inheritance.call(this, "setDropping", .{ true });
        } else {
            _ = Inheritance.call(this, "setDropping", .{ false });
        }
        return this;
    }
    

    pub fn isGood(self: *Self) bool {
        return self.good;
    }
    

    pub fn setGood(self: *Self, good: bool) void {
        self.good = good;
    }
    

    pub fn isDropping(self: *Self) bool {
        return self.dropping;
    }
    

    pub fn setDropping(self: *Self, dropping: bool) void {
        self.dropping = dropping;
    }
    

    pub fn getRatios(self: *Self) []?*Double {
        return self.ratios;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.RATIOS_LABEL });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.getRatios().len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getRatios()[@intCast(index)])) });
            if (index < @as(i32, @intCast(self.getRatios().len)) - 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
            }
            }
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS_GOOD_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isGood() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS_DROPPPING_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isDropping() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn setRatios(self: *Self, ratios: []?*Double) void {
        self.ratios = ratios;
    }
    

    pub fn getMinX(self: *Self) ?*Integer {
        return self.minX;
    }
    

    pub fn setMinX(self: *Self, minX: ?*Integer) void {
        self.minX = minX;
    }
    

    pub fn getMaxX(self: *Self) ?*Integer {
        return self.maxX;
    }
    

    pub fn setMaxX(self: *Self, maxX: ?*Integer) void {
        self.maxX = maxX;
    }
    

    pub fn getY(self: *Self) ?*Integer {
        return self.y;
    }
    

    pub fn setY(self: *Self, y: ?*Integer) void {
        self.y = y;
    }
    

    pub fn getSize(self: *Self) ?*Integer {
        return self.size;
    }
    

    pub fn setSize(self: *Self, size: ?*Integer) void {
        self.size = size;
    }
};

