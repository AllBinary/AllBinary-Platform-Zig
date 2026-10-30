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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImmutableBasicArrayList = @import("org/allbinary/util/ImmutableBasicArrayList.zig").ImmutableBasicArrayList;
const System = @import("java/lang/System.zig").System;

pub const BasicArrayListUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.BasicArrayListUtil";
    NULL_ARRAY_OF_ARRAY: [][]?*BasicArrayList = &.{},
    myRandomFactory: ?*MyRandomFactory = null,
    immutableInstance: ?*BasicArrayList = null,
    var instance: ?*BasicArrayListUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicArrayListUtil.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_ARRAY_OF_ARRAY = array_N65886: { const array_N65886_array = allocator.alloc([]?*BasicArrayList, @intCast(0)) catch unreachable; for (array_N65886_array) |*array_N65886_row| { array_N65886_row.* = allocator.alloc(?*BasicArrayList, @intCast(0)) catch unreachable; @memset(array_N65886_row.*, null); } break :array_N65886 array_N65886_array; };
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        this.immutableInstance = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(ImmutableBasicArrayList, "create2", .{ String.literal("Immutable"), 0 }));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicArrayListUtil {
        return Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.instance);
    }
    

    pub fn getRandom(self: *Self, list: ?*BasicArrayList) ?Object {
        const i_random: i32 = Inheritance.call(self, "getRandomIndex", .{ list });
        return Inheritance.upcast(?Object, list.?.objectArray[@intCast(i_random)]);
    }
    

    pub fn getRandomIndex(self: *Self, list: ?*BasicArrayList) i32 {
        return Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ list.?.size() });
    }
    

    pub fn reverse(self: *Self, list: ?*BasicArrayList) void {
        _ = self;
        const lastMinusOneIndex: i32 = list.?.size() - 2;
        var temp: ?Object = null;
        const size: i32 = @divTrunc(lastMinusOneIndex, 2);
        var secondSwapIndex: i32 = 0;
        {
            var index: i32 = 0;
            while (index <= size) : (index += 1) {
            secondSwapIndex = lastMinusOneIndex - index;
            temp = Inheritance.upcast(@TypeOf(temp), Inheritance.call(list.?, "removeAt", .{ index }));
            _ = Inheritance.call(list.?, "addAt", .{ index, Inheritance.call(list.?, "removeAt", .{ secondSwapIndex }) });
            _ = Inheritance.call(list.?, "addAt", .{ secondSwapIndex + 1, temp });
            }
        }
    }
    

    pub fn log(self: *Self, list: ?*BasicArrayList) ?*String {
        _ = self;
        const S_LABEL: ?*String = String.literal(" s: ");
        const size: i32 = list.?.size();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.TOTAL_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            const usedList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringBuffer.?, "append", .{ S_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ usedList.?.size() });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getImmutableInstance(self: *Self) ?*BasicArrayList {
        return self.immutableInstance;
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.ONE });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.TWO });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.THREE });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.FOUR });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.FIVE });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.SIX });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.SEVEN });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.EIGHT });
        _ = Inheritance.call(list.?, "add", .{ commonPhoneStrings.?.NINE });
        _ = Inheritance.call(BasicArrayListUtil.getInstance().?, "reverse", .{ list });
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(list)))});
    }
};

