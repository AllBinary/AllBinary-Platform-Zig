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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;

pub const CommonButtons = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.CommonButtons";
    STANDARD_BUTTON_SIZE: i32 = 0,
    NORMAL_BUTTON: ?*Rectangle = null,
    LARGE_BUTTON: ?*Rectangle = null,
    var instance: ?*CommonButtons = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonButtons.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn getInstance() ?*CommonButtons {
        return Inheritance.upcast(?*CommonButtons, CommonButtons.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        var commonButtonSize: i32 = 128;
        while (commonButtonSize > 64) {
            const totalColumns: i32 = (divide_N65971: { const left_N65971 = displayInfo.?.getLastWidth(); const right_N65971 = commonButtonSize; break :divide_N65971 if (comptime @typeInfo(@TypeOf(left_N65971)) == .int or @TypeOf(left_N65971) == comptime_int) @divTrunc(left_N65971, right_N65971) else left_N65971 / right_N65971; });
            const totalRows: i32 = (divide_N66023: { const left_N66023 = displayInfo.?.getLastHeight(); const right_N66023 = commonButtonSize; break :divide_N66023 if (comptime @typeInfo(@TypeOf(left_N66023)) == .int or @TypeOf(left_N66023) == comptime_int) @divTrunc(left_N66023, right_N66023) else left_N66023 / right_N66023; });
            var max: i32 = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >> @intCast(1);
        }
        this.STANDARD_BUTTON_SIZE = commonButtonSize;
        this.NORMAL_BUTTON = Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE });
        this.LARGE_BUTTON = Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, this.STANDARD_BUTTON_SIZE << @intCast(1), this.STANDARD_BUTTON_SIZE << @intCast(1) });
        return this;
    }
};

