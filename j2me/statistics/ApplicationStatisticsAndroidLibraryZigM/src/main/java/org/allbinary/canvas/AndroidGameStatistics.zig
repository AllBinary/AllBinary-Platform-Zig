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
const View = @import("android/view/View.zig").View;
const BaseViewWrapper = @import("org/allbinary/android/view/BaseViewWrapper.zig").BaseViewWrapper;
const ViewWrapper = @import("org/allbinary/android/view/ViewWrapper.zig").ViewWrapper;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BaseGameStatistics = @import("org/allbinary/canvas/BaseGameStatistics.zig").BaseGameStatistics;
const Long = @import("java/lang/Long.zig").Long;

pub const AndroidGameStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.AndroidGameStatistics";
    base: BaseGameStatistics = undefined,
    view: ?*BaseViewWrapper = null,
    totalOnDraws: i64 = 0,
    ANDROID_STRING_ARRAY: []?*String = &.{},
    TOTAL_ONDRAWS: ?*String = null,
    ONDRAWS_RATE: ?*String = null,

    fn initFields(this: *Self) void {
        this.view = Inheritance.upcast(?*BaseViewWrapper, BaseViewWrapper.NULL_VIEW_WRAPPER);
        this.totalOnDraws = 0;
        this.ANDROID_STRING_ARRAY = array_N65824: { const array_N65824_array = allocator.alloc(?*String, @intCast(14)) catch unreachable; @memset(array_N65824_array, null); break :array_N65824 array_N65824_array; };
        this.TOTAL_ONDRAWS = String.literal(" Total onDraws: ");
        this.ONDRAWS_RATE = String.literal(" onDraws(/10) Sec: ");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseGameStatistics.create().*;
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(this.ANDROID_STRING_ARRAY.len))) : (index += 1) {
            this.ANDROID_STRING_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(this.ANDROID_STRING_ARRAY[@intCast(index)]), stringUtil.?.EMPTY_STRING);
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initView(self: *Self, view: ?*View) void {
        _ = self.base.init();
        self.view = Inheritance.upcast(@TypeOf(self.view), Inheritance.callStatic(ViewWrapper, "create1", .{ view }));
        self.totalOnDraws = 0;
    }
    

    pub fn process(self: *Self) void {
        _ = self.view.?.postInvalidate();
    }
    

    pub fn nextOnDraw(self: *Self) void {
        self.totalOnDraws += 1;
    }
    

    pub fn toStringArray(self: *Self) []?*String {
        const stringArray: []?*String = self.base.toStringArray();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(stringArray.len))) : (index += 1) {
            self.ANDROID_STRING_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(self.ANDROID_STRING_ARRAY[@intCast(index)]), stringArray[@intCast(index)]);
            }
        }
        var totalTime: i64 = Inheritance.call(Inheritance.receiver(self, "getTimeDelayHelper").getTimeDelayHelper().?, "getElapsed", .{ Inheritance.fieldPointer(self, "gameTickTimeDelayHelper").*.?.startTime });
        totalTime = (@divTrunc(totalTime, 10000));
        self.ANDROID_STRING_ARRAY[@intCast(10)] = Inheritance.upcast(@TypeOf(self.ANDROID_STRING_ARRAY[@intCast(10)]), self.TOTAL_ONDRAWS);
        self.ANDROID_STRING_ARRAY[@intCast(11)] = Inheritance.upcast(@TypeOf(self.ANDROID_STRING_ARRAY[@intCast(11)]), String.valueOf(self.totalOnDraws));
        self.ANDROID_STRING_ARRAY[@intCast(12)] = Inheritance.upcast(@TypeOf(self.ANDROID_STRING_ARRAY[@intCast(12)]), self.ONDRAWS_RATE);
        self.ANDROID_STRING_ARRAY[@intCast(13)] = Inheritance.upcast(@TypeOf(self.ANDROID_STRING_ARRAY[@intCast(13)]), String.valueOf(@divTrunc(self.totalOnDraws, totalTime)));
        return self.ANDROID_STRING_ARRAY;
    }
    

    pub fn toString(self: *Self) ?*String {
        var totalTime: i64 = Inheritance.call(Inheritance.receiver(self, "getTimeDelayHelper").getTimeDelayHelper().?, "getElapsed", .{ Inheritance.fieldPointer(self, "gameTickTimeDelayHelper").*.?.startTime });
        totalTime = (@divTrunc(totalTime, 1000));
        if (totalTime > 0) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(&self.base, "toStringAt", .{ totalTime }) });
            if (self.totalOnDraws > 0) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.TOTAL_ONDRAWS });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(self.totalOnDraws) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.ONDRAWS_RATE });
                const drawsOverTime: ?*String = Inheritance.upcast(?*String, String.valueOf(@divTrunc(self.totalOnDraws, totalTime)));
                _ = Inheritance.call(stringBuffer.?, "append", .{ drawsOverTime });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        } else {
            return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "NOT").*);
        }
    }
};

