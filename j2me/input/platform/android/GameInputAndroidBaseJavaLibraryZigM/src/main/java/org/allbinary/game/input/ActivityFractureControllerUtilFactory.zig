// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const AndroidAPI12KeyFactory = @import("org/allbinary/game/input/AndroidAPI12KeyFactory.zig").AndroidAPI12KeyFactory;
const AndroidAPI1KeyFactory = @import("org/allbinary/game/input/AndroidAPI1KeyFactory.zig").AndroidAPI1KeyFactory;
const AndroidAPI9KeyFactory = @import("org/allbinary/game/input/AndroidAPI9KeyFactory.zig").AndroidAPI9KeyFactory;
const AndroidKeyFactory = @import("org/allbinary/game/input/AndroidKeyFactory.zig").AndroidKeyFactory;

pub const ActivityFractureControllerUtilFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.ActivityFractureControllerUtilFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AndroidKeyFactory {
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION <= 8) {
            return Inheritance.upcast(?*AndroidKeyFactory, AndroidAPI1KeyFactory.getInstance());
        } else if (SDK_VERSION <= 11) {
            return Inheritance.upcast(?*AndroidKeyFactory, AndroidAPI9KeyFactory.getInstance());
        } else {
            return Inheritance.upcast(?*AndroidKeyFactory, AndroidAPI12KeyFactory.getAPI12Instance());
        }
    }
};

