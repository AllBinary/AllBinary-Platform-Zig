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
// package org.allbinary.input.automation.module.generic.configuration.profile

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;
const GenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType.zig").GenericProfileDataWorkerType;

pub const SavedCaptureGenericProfileDataWorkerType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.SavedCaptureGenericProfileDataWorkerType";
    base: GenericProfileDataWorkerType = undefined,
    path: ?*String = null,
    lastFrame: i32 = 0,
    pub var SAVED_CAPTURE: ?*SavedCaptureGenericProfileDataWorkerType = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SAVED_CAPTURE = Inheritance.callStatic(SavedCaptureGenericProfileDataWorkerType, "create3", .{ String.plus(String.literal("Saved "), Inheritance.receiverOf(InputImageType.CAPTURE.?, "getName").getName()), String.literal("c:\\share\\captures\\2\\"), 100 });
    }

    fn initFields(this: *Self) void {
        this.path = null;
        this.lastFrame = 0;
    }
    

    pub fn create3(name: ?*String, path: ?*String, lastFrame: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GenericProfileDataWorkerType, "create1", .{ name }).*;
        this.initFields();
        _ = Inheritance.call(this, "setPath", .{ path });
        _ = Inheritance.call(this, "setLastFrame", .{ lastFrame });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPath(self: *Self) ?*String {
        return self.path;
    }
    

    pub fn setPath(self: *Self, path: ?*String) void {
        self.path = path;
    }
    

    pub fn getLastFrame(self: *Self) i32 {
        return self.lastFrame;
    }
    

    pub fn setLastFrame(self: *Self, lastFrame: i32) void {
        self.lastFrame = lastFrame;
    }
};

