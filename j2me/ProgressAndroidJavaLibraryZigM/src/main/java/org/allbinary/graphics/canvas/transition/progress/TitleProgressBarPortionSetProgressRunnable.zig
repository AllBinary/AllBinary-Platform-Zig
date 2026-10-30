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
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Activity = @import("android/app/Activity.zig").Activity;
const AndroidBasicTitleProgressBar = @import("org/allbinary/graphics/canvas/transition/progress/AndroidBasicTitleProgressBar.zig").AndroidBasicTitleProgressBar;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/ProgressRunnable.zig").ProgressRunnable;

pub const TitleProgressBarPortionSetProgressRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable";
    base: ProgressRunnable = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create2(midletActivity: ?*Activity, progressCanvas: ?*ProgressCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProgressRunnable, "create2", .{ midletActivity, progressCanvas }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            const progressCanvas: ?*AndroidBasicTitleProgressBar = Inheritance.cast(?*AndroidBasicTitleProgressBar, Inheritance.fieldPointer(self, "progressCanvas").*);
            _ = Inheritance.call(Inheritance.fieldPointer(self, "midletActivity").*.?, "onSetProgress", .{ @as(i32, @intCast((Inheritance.receiver(Inheritance.fieldPointer(self, "progressCanvas").*.?, "getValue").getValue() + (divide_N65935: { const left_N65935 = Inheritance.receiver(Inheritance.fieldPointer(self, "progressCanvas").*.?, "getMaxValue").getMaxValue(); const right_N65935 = Inheritance.receiver(progressCanvas.?, "getPortion").getPortion(); break :divide_N65935 if (comptime @typeInfo(@TypeOf(left_N65935)) == .int or @TypeOf(left_N65935) == comptime_int) @divTrunc(left_N65935, right_N65935) else left_N65935 / right_N65935; })))), Inheritance.receiver(Inheritance.fieldPointer(self, "progressCanvas").*.?, "getText").getText() });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
};

