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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const NullProgressActivity = @import("org/allbinary/android/activity/NullProgressActivity.zig").NullProgressActivity;
const ProgressActivityInterface = @import("org/allbinary/android/activity/ProgressActivityInterface.zig").ProgressActivityInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DismissTitleProgressBarRunnable = @import("org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable.zig").DismissTitleProgressBarRunnable;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ShowTitleProgressBarRunnable = @import("org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable.zig").ShowTitleProgressBarRunnable;
const TitleProgressBarPortionSetProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable.zig").TitleProgressBarPortionSetProgressRunnable;
const TitleProgressBarSetProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable.zig").TitleProgressBarSetProgressRunnable;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const AndroidTitleProgressBar = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar";
    base: ProgressCanvas = undefined,
    showTitleProgressBarRunnable: ?*ShowTitleProgressBarRunnable = null,
    dismissTitleProgressBarRunnable: ?*DismissTitleProgressBarRunnable = null,
    progressDialogPortionSetProgressRunnable: ?*TitleProgressBarPortionSetProgressRunnable = null,
    progressDialogSetProgressRunnable: ?*TitleProgressBarSetProgressRunnable = null,
    progressActivity: ?*ProgressActivityInterface = null,
    portion: i32 = 0,

    fn initFields(this: *Self) void {
        this.showTitleProgressBarRunnable = Inheritance.callStatic(ShowTitleProgressBarRunnable, "create1", .{ this });
        this.dismissTitleProgressBarRunnable = Inheritance.callStatic(DismissTitleProgressBarRunnable, "create1", .{ this });
        this.progressDialogPortionSetProgressRunnable = Inheritance.callStatic(TitleProgressBarPortionSetProgressRunnable, "create1", .{ this });
        this.progressDialogSetProgressRunnable = Inheritance.callStatic(TitleProgressBarSetProgressRunnable, "create1", .{ this });
        this.progressActivity = Inheritance.upcast(?*ProgressActivityInterface, NullProgressActivity.NULL_PROGRESS_ACTIVITY);
        this.portion = 0;
    }
    

    pub fn create3(title: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProgressCanvas, "create3", .{ title, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, activity: ?*ProgressActivityInterface) void {
        self.progressActivity = activity;
    }
    

    pub fn isInitialized(self: *Self) bool {
        if (!Object.same(self.progressActivity, NullProgressActivity.NULL_PROGRESS_ACTIVITY)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn start(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME });
            _ = self.base.start();
            _ = Inheritance.call(self.progressActivity.?, "runOnUiThread", .{ self.showTitleProgressBarRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME, e });
    }
    

    pub fn end(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME });
            _ = Inheritance.call(self.progressActivity.?, "runOnUiThread", .{ self.dismissTitleProgressBarRunnable });
            _ = self.base.end();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME, e });
    }
    

    pub fn addPortion(self: *Self, value: i32, text: ?*String, index: i32) void {
        { // try
            _ = Inheritance.call(&self.base, "addPortion", .{ value, text, index });
            self.portion = value;
            _ = Inheritance.call(self.progressActivity.?, "runOnUiThread", .{ self.progressDialogPortionSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "ADD_PORTION").*, e });
    }
    

    pub fn addNormalPortion(self: *Self, value: i32, text: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "addNormalPortion", .{ value, text });
            self.portion = value;
            _ = Inheritance.call(self.progressActivity.?, "runOnUiThread", .{ self.progressDialogPortionSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "ADD_PORTION").*, e });
    }
    

    pub fn setValue(self: *Self, value: i32) void {
        { // try
            _ = Inheritance.call(&self.base, "setValue", .{ value });
            _ = Inheritance.call(self.progressActivity.?, "runOnUiThread", .{ self.progressDialogSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setValue"), e });
    }
    

    pub fn waitUntilDisplayed(self: *Self) void {
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    pub const TitleProgressBarSetProgressRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable";
        pub const java_interfaces = .{ Runnable };
        androidTitleProgressBar: ?*AndroidTitleProgressBar = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(androidTitleProgressBar: ?*AndroidTitleProgressBar) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            Inheritance.fieldPointer(this, "androidTitleProgressBar").* = androidTitleProgressBar;
            return this;
        }
        

        pub fn run(self: *Self) void {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
            { // try
                const value: i32 = @as(i32, @intCast(Inheritance.receiver(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?, "getValue").getValue()));
                _ = Inheritance.call(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?.progressActivity.?, "onTitleProgressBarSetProgress", .{ value });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
        }
    };
    pub const TitleProgressBarPortionSetProgressRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable";
        pub const java_interfaces = .{ Runnable };
        androidTitleProgressBar: ?*AndroidTitleProgressBar = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(androidTitleProgressBar: ?*AndroidTitleProgressBar) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            Inheritance.fieldPointer(this, "androidTitleProgressBar").* = androidTitleProgressBar;
            return this;
        }
        

        pub fn run(self: *Self) void {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
            { // try
                const value: i32 = @as(i32, @intCast((Inheritance.receiver(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?, "getValue").getValue() + (divide_N66537: { const left_N66537 = Inheritance.receiver(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?, "getMaxValue").getMaxValue(); const right_N66537 = Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?.portion; break :divide_N66537 if (comptime @typeInfo(@TypeOf(left_N66537)) == .int or @TypeOf(left_N66537) == comptime_int) @divTrunc(left_N66537, right_N66537) else left_N66537 / right_N66537; }))));
                _ = Inheritance.call(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?.progressActivity.?, "onTitleProgressBarSetProgress", .{ value });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
        }
    };
    pub const ShowTitleProgressBarRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable";
        pub const java_interfaces = .{ Runnable };
        androidTitleProgressBar: ?*AndroidTitleProgressBar = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(androidTitleProgressBar: ?*AndroidTitleProgressBar) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            Inheritance.fieldPointer(this, "androidTitleProgressBar").* = androidTitleProgressBar;
            return this;
        }
        

        pub fn run(self: *Self) void {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
            { // try
                const maxValue: i32 = @as(i32, @intCast(Inheritance.receiver(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?, "getMaxValue").getMaxValue()));
                _ = Inheritance.call(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?.progressActivity.?, "onShowTitleProgressBar", .{ maxValue, false });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
        }
    };
    pub const DismissTitleProgressBarRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable";
        pub const java_interfaces = .{ Runnable };
        androidTitleProgressBar: ?*AndroidTitleProgressBar = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(androidTitleProgressBar: ?*AndroidTitleProgressBar) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            Inheritance.fieldPointer(this, "androidTitleProgressBar").* = androidTitleProgressBar;
            return this;
        }
        

        pub fn run(self: *Self) void {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
            { // try
                _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "androidTitleProgressBar").*.?.progressActivity.?, "onDismissTitleProgressBar").onDismissTitleProgressBar();
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
        }
    };
};

