// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const ActivityFractureControllerUtilFactory = @import("org/allbinary/game/input/ActivityFractureControllerUtilFactory.zig").ActivityFractureControllerUtilFactory;
const AndroidGameKey = @import("org/allbinary/game/input/AndroidGameKey.zig").AndroidGameKey;
const AndroidKeyFactory = @import("org/allbinary/game/input/AndroidKeyFactory.zig").AndroidKeyFactory;

pub const PlatformKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlatformKeyFactory";
    androidKeyFactory: ?*AndroidKeyFactory = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.androidKeyFactory = Inheritance.upcast(?*AndroidKeyFactory, ActivityFractureControllerUtilFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
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
        return Inheritance.upcast(?*String, Inheritance.callStatic(AndroidGameKey, "getString", .{ keyCode }));
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isSubmission", .{ input });
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isDelete", .{ input });
    }
    

    pub fn isBackSpace(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isBackSpace", .{ input });
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isLeft", .{ input });
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isRight", .{ input });
    }
    

    pub fn isUp(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isUp", .{ input });
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isDown", .{ input });
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.androidKeyFactory.?, "isEnter", .{ input });
    }
};

