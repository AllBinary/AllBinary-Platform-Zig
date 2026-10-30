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
// package org.allbinary.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CommonStateStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.string.CommonStateStrings";
    CONTEXT: ?*String = null,
    FINISH: ?*String = null,
    CREATE: ?*String = null,
    START: ?*String = null,
    RESTART: ?*String = null,
    RESUME: ?*String = null,
    PAUSE: ?*String = null,
    STOP: ?*String = null,
    DESTROY: ?*String = null,
    BIND: ?*String = null,
    ON_SAVE_INSTANCE_STATE: ?*String = null,
    ON_START_COMMAND: ?*String = null,
    var instance: ?*CommonStateStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonStateStrings.create();
    }

    fn initFields(this: *Self) void {
        this.CONTEXT = String.literal("Context: ");
        this.FINISH = String.literal("finish");
        this.CREATE = String.literal("onCreate");
        this.START = String.literal("onStart");
        this.RESTART = String.literal("onRestart");
        this.RESUME = String.literal("onResume");
        this.PAUSE = String.literal("onPause");
        this.STOP = String.literal("onStop");
        this.DESTROY = String.literal("onDestroy");
        this.BIND = String.literal("onBind");
        this.ON_SAVE_INSTANCE_STATE = String.literal("onSaveInstanceState");
        this.ON_START_COMMAND = String.literal("onStartCommand");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonStateStrings {
        return Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.instance);
    }
};

