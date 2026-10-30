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
const VirtualKeyboard = @import("org/allbinary/android/input/VirtualKeyboard.zig").VirtualKeyboard;
const VirtualKeyboardEvent = @import("org/allbinary/input/event/VirtualKeyboardEvent.zig").VirtualKeyboardEvent;
const VirtualKeyboardEventHandler = @import("org/allbinary/input/event/VirtualKeyboardEventHandler.zig").VirtualKeyboardEventHandler;
const VirtualKeyboardEventListenerInterface = @import("org/allbinary/input/event/VirtualKeyboardEventListenerInterface.zig").VirtualKeyboardEventListenerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const HideVirtualKeyboardRunnable = @import("org/allbinary/android/input/api3/HideVirtualKeyboardRunnable.zig").HideVirtualKeyboardRunnable;
const ShowVirtualKeyboardRunnable = @import("org/allbinary/android/input/api3/ShowVirtualKeyboardRunnable.zig").ShowVirtualKeyboardRunnable;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const VirtualKeyboardAPI3 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.api3.VirtualKeyboardAPI3";
    base: VirtualKeyboard = undefined,
    virtualKeyboard: bool = false,
    activity: ?*Activity = null,
    showVirtualKeyboardRunnable: ?*Runnable = null,
    hideVirtualKeyboardRunnable: ?*Runnable = null,
    // Implements VirtualKeyboardEventListenerInterface
    pub var MAX_API: i32 = undefined;
    pub var MIN_API: i32 = 3;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MAX_API = @as(i32, std.math.maxInt(i32));
    }

    fn initFields(this: *Self) void {
        this.virtualKeyboard = false;
        
        
        
    }
    

    pub fn create1(activity: ?*Activity) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(VirtualKeyboard, "create", .{  }).*;
        this.initFields();
        this.activity = activity;
        this.showVirtualKeyboardRunnable = Inheritance.upcast(@TypeOf(this.showVirtualKeyboardRunnable), Inheritance.callStatic(ShowVirtualKeyboardRunnable, "create1", .{ this.activity }));
        this.hideVirtualKeyboardRunnable = Inheritance.upcast(@TypeOf(this.hideVirtualKeyboardRunnable), Inheritance.callStatic(HideVirtualKeyboardRunnable, "create1", .{ this.activity }));
        const virtualKeyboardEventHandler: ?*VirtualKeyboardEventHandler = Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.getInstance());
        _ = Inheritance.receiver(virtualKeyboardEventHandler.?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.call(virtualKeyboardEventHandler.?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onVirtualKeyboardEvent(self: *Self, virtualKeyboardEvent: ?*VirtualKeyboardEvent) void {
        const isShow: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.receiver(virtualKeyboardEvent.?, "getSource").getSource());
        if (isShow.?.booleanValue()) {
            _ = self.showVirtualKeyboard();
        } else {
            _ = self.hideVirtualKeyboard();
        }
    }
    

    pub fn forceHide(self: *Self) void {
        _ = self.hideVirtualKeyboard();
    }
    

    pub fn hide(self: *Self) void {
        if (self.virtualKeyboard) {
            _ = self.forceHide();
        }
    }
    

    pub fn showVirtualKeyboard(self: *Self) void {
        _ = Inheritance.call(self.activity.?, "runOnUiThread", .{ self.showVirtualKeyboardRunnable });
        self.virtualKeyboard = true;
    }
    

    pub fn hideVirtualKeyboard(self: *Self) void {
        _ = Inheritance.call(self.activity.?, "runOnUiThread", .{ self.hideVirtualKeyboardRunnable });
        self.virtualKeyboard = false;
    }
};

