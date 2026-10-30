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
// package org.allbinary.android.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AndroidResources = @import("org/allbinary/AndroidResources.zig").AndroidResources;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const Init = @import("org/allbinary/init/Init.zig").Init;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButtonBlankResource = @import("org/allbinary/input/motion/button/TouchButtonBlankResource.zig").TouchButtonBlankResource;
const TouchButtonDownResource = @import("org/allbinary/input/motion/button/TouchButtonDownResource.zig").TouchButtonDownResource;
const TouchButtonGenericActionResource = @import("org/allbinary/input/motion/button/TouchButtonGenericActionResource.zig").TouchButtonGenericActionResource;
const TouchButtonResource = @import("org/allbinary/input/motion/button/TouchButtonResource.zig").TouchButtonResource;
const TouchButtonStartResource = @import("org/allbinary/input/motion/button/TouchButtonStartResource.zig").TouchButtonStartResource;
const TouchButtonStrafeLeftResource = @import("org/allbinary/input/motion/button/TouchButtonStrafeLeftResource.zig").TouchButtonStrafeLeftResource;
const TouchButtonStrafeRightResource = @import("org/allbinary/input/motion/button/TouchButtonStrafeRightResource.zig").TouchButtonStrafeRightResource;
const TouchButtonTurnLeftResource = @import("org/allbinary/input/motion/button/TouchButtonTurnLeftResource.zig").TouchButtonTurnLeftResource;
const TouchButtonTurnRightResource = @import("org/allbinary/input/motion/button/TouchButtonTurnRightResource.zig").TouchButtonTurnRightResource;
const TouchButtonUpResource = @import("org/allbinary/input/motion/button/TouchButtonUpResource.zig").TouchButtonUpResource;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const TouchButtonAndroidResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.button.TouchButtonAndroidResources";
    base: Init = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Init.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
        const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        const androidResources: ?*AndroidResources = Inheritance.upcast(?*AndroidResources, AndroidResources.getInstance());
        const RESOURCE_STRING_ARRAY: []?*TouchButtonResource = @constCast(&[_]?*TouchButtonResource{ TouchButtonBlankResource.getInstance(), TouchButtonGenericActionResource.getInstance(), TouchButtonStartResource.getInstance(), TouchButtonUpResource.getInstance(), TouchButtonDownResource.getInstance(), TouchButtonTurnLeftResource.getInstance(), TouchButtonTurnRightResource.getInstance(), TouchButtonStrafeLeftResource.getInstance(), TouchButtonStrafeRightResource.getInstance() })[0..];
        const RESOURCE_ARRAY: []i32 = array_N66415: { const array_N66415_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(RESOURCE_STRING_ARRAY.len)))) catch unreachable; @memset(array_N66415_array, 0); break :array_N66415 array_N66415_array; };
        if (CommonButtons.getInstance().?.STANDARD_BUTTON_SIZE == 128) {
            RESOURCE_ARRAY[@intCast(0)] = androidResources.?.raw.?.touch_button_128_by_128;
            RESOURCE_ARRAY[@intCast(1)] = androidResources.?.raw.?.touch_button_generic_action_128_by_128;
            RESOURCE_ARRAY[@intCast(2)] = androidResources.?.raw.?.touch_button_start_128_by_128;
            RESOURCE_ARRAY[@intCast(3)] = androidResources.?.raw.?.touch_button_up_arrow_128_by_128;
            RESOURCE_ARRAY[@intCast(4)] = androidResources.?.raw.?.touch_button_down_arrow_128_by_128;
            RESOURCE_ARRAY[@intCast(5)] = androidResources.?.raw.?.touch_button_turn_left_arrow_128_by_128;
            RESOURCE_ARRAY[@intCast(6)] = androidResources.?.raw.?.touch_button_turn_right_arrow_128_by_128;
            RESOURCE_ARRAY[@intCast(7)] = androidResources.?.raw.?.touch_button_strafe_left_arrow_128_by_128;
            RESOURCE_ARRAY[@intCast(8)] = androidResources.?.raw.?.touch_button_strafe_right_arrow_128_by_128;
            if (Inheritance.receiverOf(Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance().?, "isOverScan").isOverScan()) {
                _ = Inheritance.call(resourceUtil.?, "addResource", .{ RESOURCE_STRING_ARRAY[@intCast(2)].?.HINT, Inheritance.callStatic(Integer, "valueOf", .{ androidResources.?.raw.?.ouya_o }) });
            }
        } else {
            RESOURCE_ARRAY[@intCast(0)] = androidResources.?.raw.?.touch_button_64_by_64;
            RESOURCE_ARRAY[@intCast(1)] = androidResources.?.raw.?.touch_button_generic_action_64_by_64;
            RESOURCE_ARRAY[@intCast(2)] = androidResources.?.raw.?.touch_button_start_64_by_64;
            RESOURCE_ARRAY[@intCast(3)] = androidResources.?.raw.?.touch_button_up_arrow_64_by_64;
            RESOURCE_ARRAY[@intCast(4)] = androidResources.?.raw.?.touch_button_down_arrow_64_by_64;
            RESOURCE_ARRAY[@intCast(5)] = androidResources.?.raw.?.touch_button_turn_left_arrow_64_by_64;
            RESOURCE_ARRAY[@intCast(6)] = androidResources.?.raw.?.touch_button_turn_right_arrow_64_by_64;
            RESOURCE_ARRAY[@intCast(7)] = androidResources.?.raw.?.touch_button_strafe_left_arrow_64_by_64;
            RESOURCE_ARRAY[@intCast(8)] = androidResources.?.raw.?.touch_button_strafe_right_arrow_64_by_64;
        }
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(RESOURCE_ARRAY.len))) : (index += 1) {
            _ = Inheritance.call(resourceUtil.?, "addResource", .{ RESOURCE_STRING_ARRAY[@intCast(index)].?.RESOURCE, Inheritance.callStatic(Integer, "valueOf", .{ RESOURCE_ARRAY[@intCast(index)] }) });
            }
        }
    }
};

