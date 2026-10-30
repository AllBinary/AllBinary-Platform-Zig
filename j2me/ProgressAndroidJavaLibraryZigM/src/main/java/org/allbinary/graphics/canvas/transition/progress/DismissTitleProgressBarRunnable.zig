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
const TransistionTypes = @import("org/allbinary/animation/transition/TransistionTypes.zig").TransistionTypes;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Activity = @import("android/app/Activity.zig").Activity;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/ProgressRunnable.zig").ProgressRunnable;

pub const DismissTitleProgressBarRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable";
    base: ProgressRunnable = undefined,
    logUtil: ?*LogUtil = null,
    ZOOM_OUT_AND_IN: []i32 = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.ZOOM_OUT_AND_IN = @constCast(&[_]i32{ TransistionTypes.getInstance().?.ZOOM_OUT, TransistionTypes.getInstance().?.ZOOM_IN })[0..];
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
            _ = Inheritance.call(Inheritance.fieldPointer(self, "midletActivity").*.?, "onDismissProgress", .{ self.ZOOM_OUT_AND_IN });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
};

