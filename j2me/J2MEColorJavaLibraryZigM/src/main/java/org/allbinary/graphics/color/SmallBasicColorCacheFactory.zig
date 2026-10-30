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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const SmallBasicColorCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.SmallBasicColorCacheFactory";
    SIZE: i32 = 0,
    INDEX_TO_COLOR: []i32 = &.{},
    BASIC_COLOR_ARRAY: []?*BasicColor = &.{},
    colorIndex: i32 = 0,
    var instance: ?*SmallBasicColorCacheFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SmallBasicColorCacheFactory.create();
    }

    fn initFields(this: *Self) void {
        this.SIZE = 255;
        this.INDEX_TO_COLOR = array_N65770: { const array_N65770_array = allocator.alloc(i32, @intCast(this.SIZE)) catch unreachable; @memset(array_N65770_array, 0); break :array_N65770 array_N65770_array; };
        this.BASIC_COLOR_ARRAY = array_N65831: { const array_N65831_array = allocator.alloc(?*BasicColor, @intCast(this.SIZE)) catch unreachable; @memset(array_N65831_array, null); break :array_N65831 array_N65831_array; };
        this.colorIndex = 0;
    }
    

    pub fn getInstance() ?*SmallBasicColorCacheFactory {
        return Inheritance.upcast(?*SmallBasicColorCacheFactory, SmallBasicColorCacheFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn add(self: *Self, basicDefaultColor: ?*BasicColor) void {
        self.BASIC_COLOR_ARRAY[@intCast(self.colorIndex)] = Inheritance.upcast(@TypeOf(self.BASIC_COLOR_ARRAY[@intCast(self.colorIndex)]), basicDefaultColor);
        self.INDEX_TO_COLOR[@intCast(self.colorIndex)] = basicDefaultColor.?.intValue();
        self.colorIndex += 1;
    }
    

    pub fn getAndOrCreate(self: *Self, colorAsInt: i32) ?*BasicColor {
        var basicColor: ?*BasicColor = null;
        {
            var index: i32 = 0;
            while (index < self.SIZE) : (index += 1) {
            if (self.INDEX_TO_COLOR[@intCast(index)] == colorAsInt) {
                return Inheritance.upcast(?*BasicColor, self.BASIC_COLOR_ARRAY[@intCast(index)]);
            }
            }
        }
        const ALPHA_MASK: i32 = @as(i32, @bitCast(@as(u32, 0xFF000000)));
        basicColor = Inheritance.upcast(@TypeOf(basicColor), Inheritance.call(BasicColorFactory.getInstance().?, "createInstanceAN", .{ colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().?.EMPTY_STRING }));
        _ = Inheritance.call(self, "add", .{ basicColor });
        return basicColor;
    }
};

