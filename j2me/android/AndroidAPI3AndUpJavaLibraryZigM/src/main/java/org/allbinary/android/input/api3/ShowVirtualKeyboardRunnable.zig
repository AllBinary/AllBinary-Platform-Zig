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
// package org.allbinary.android.input.api3

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const Context = @import("android/content/Context.zig").Context;
const View = @import("android/view/View.zig").View;
const InputMethodManager = @import("android/view/inputmethod/InputMethodManager.zig").InputMethodManager;
const ViewCompositeInterface = @import("org/allbinary/android/activity/ViewCompositeInterface.zig").ViewCompositeInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ShowVirtualKeyboardRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable";
    pub const java_interfaces = .{ Runnable };
    logUtil: ?*LogUtil = null,
    activity: ?*Activity = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(activity: ?*Activity) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.activity = activity;
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            const inputMethodManager: ?*InputMethodManager = Inheritance.cast(?*InputMethodManager, Inheritance.call(self.activity.?, "getSystemService", .{ Context.INPUT_METHOD_SERVICE }));
            const viewCompositeInterface: ?*ViewCompositeInterface = Inheritance.cast(?*ViewCompositeInterface, self.activity);
            if (viewCompositeInterface == null) {
                _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Activity Null"), self });
            }
            const view: ?*View = Inheritance.upcast(?*View, viewCompositeInterface.?.getView());
            _ = Inheritance.call(inputMethodManager.?, "toggleSoftInputFromWindow", .{ view.?.getWindowToken(), InputMethodManager.SHOW_FORCED, 0 });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
};

