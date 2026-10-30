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
// package org.allbinary.input.media.image.capture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Dimension = @import("java/awt/Dimension.zig").Dimension;
// const Rectangle = @import("java/awt/Rectangle.zig").Rectangle;
// const Toolkit = @import("java/awt/Toolkit.zig").Toolkit;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const ScreenScavangerRobot = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.ScreenScavangerRobot";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getScreenAsBufferedImages(self: *Self) []?*BufferedImage {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getScreenAsBufferedImages") });
        const dimScreenSize: ?*Dimension = Inheritance.upcast(?*Dimension, Inheritance.receiverOf(Toolkit.getDefaultToolkit().?, "getScreenSize").getScreenSize());
        const rectScreenSize: ?*Rectangle = Inheritance.callStatic(Rectangle, "create1", .{ dimScreenSize });
        const robotHashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(InputRobotFactory.getInstance().?, "get").get());
        const bufferedImageArray: []?*BufferedImage = array_N66225: { const array_N66225_array = allocator.alloc(?*BufferedImage, @intCast(1)) catch unreachable; @memset(array_N66225_array, null); break :array_N66225 array_N66225_array; };
        const index: i32 = 0;
        const inputRobotInterface: ?*InputRobotInterface = Inheritance.cast(?*InputRobotInterface, Inheritance.call(robotHashtable.?, "get", .{ String.literal("Java Robot") }));
        bufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index)]), Inheritance.call(inputRobotInterface.?, "createScreenCapture", .{ rectScreenSize }));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Finish"), self, String.literal("getScreenAsBufferedImages") });
        return bufferedImageArray;
    }
};

