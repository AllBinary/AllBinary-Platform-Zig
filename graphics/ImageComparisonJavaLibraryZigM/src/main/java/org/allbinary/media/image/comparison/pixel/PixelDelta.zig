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
// package org.allbinary.media.image.comparison.pixel

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const ColorDelta = @import("org/allbinary/media/image/comparison/color/ColorDelta.zig").ColorDelta;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const PixelDelta = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.pixel.PixelDelta";
    point: ?*GPoint = null,
    colorDelta: ?*ColorDelta = null,
    key: ?Object = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        this.point = null;
        this.colorDelta = null;
        
    }
    

    pub fn create2(point: ?*GPoint, colorDelta: ?*ColorDelta) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setPoint", .{ point });
        _ = Inheritance.call(this, "setColorDelta", .{ colorDelta });
        this.key = Inheritance.upcast(@TypeOf(this.key), Inheritance.callStatic(PixelDelta, "getKey", .{ this.getPoint(), this.getColorDelta() }));
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return self.key;
    }
    

    pub fn getKey2(point: ?*GPoint, colorDelta: ?*ColorDelta) ?Object {
        return Inheritance.upcast(?Object, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ point }))) }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ Object.toString(Object.of(colorDelta.?.getKey())) }))));
    }
    

    pub fn getPoint(self: *Self) ?*GPoint {
        return self.point;
    }
    

    pub fn setPoint(self: *Self, point: ?*GPoint) void {
        self.point = point;
    }
    

    pub fn getColorDelta(self: *Self) ?*ColorDelta {
        return self.colorDelta;
    }
    

    pub fn setColorDelta(self: *Self, colorDelta: ?*ColorDelta) void {
        self.colorDelta = colorDelta;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("PixelDelta: Point: ") }).?, "append", .{ Object.toString(Object.of(self.point)) }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ Object.toString(Object.of(self.colorDelta)) }))));
    }
};

