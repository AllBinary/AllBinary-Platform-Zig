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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const J2MEGameKey = @import("org/allbinary/game/input/J2MEGameKey.zig").J2MEGameKey;
const J2MEKeyFactory = @import("org/allbinary/game/input/J2MEKeyFactory.zig").J2MEKeyFactory;

pub const PlatformKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlatformKeyFactory";
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PlatformKeyFactory {
        if (Object.same(PlatformKeyFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            PlatformKeyFactory.instance = Inheritance.upcast(@TypeOf(PlatformKeyFactory.instance), PlatformKeyFactory.create());
        }
        return Inheritance.cast(?*PlatformKeyFactory, PlatformKeyFactory.instance);
    }
    

    pub fn getString(self: *Self, keyCode: i32) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.callStatic(J2MEGameKey, "getString", .{ keyCode }));
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isSubmission", .{ input });
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isDelete", .{ input });
    }
    

    pub fn isBackSpace(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isBackSpace", .{ input });
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isLeft", .{ input });
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isRight", .{ input });
    }
    

    pub fn isUp(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isUp", .{ input });
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isDown", .{ input });
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        _ = self;
        return Inheritance.call(J2MEKeyFactory.getInstance().?, "isEnter", .{ input });
    }
};

