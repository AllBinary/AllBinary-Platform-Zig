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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const KeyboardActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface.zig").KeyboardActionScriptInputInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const KeyboardInputAutomationProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn process(keyActionScriptInputInterface: ?*KeyboardActionScriptInputInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, Object.toString(Object.of(keyActionScriptInputInterface))), String.literal("KeyInputAutomationProcessor"), commonStrings.?.PROCESS });
        const inputRobotInterface: ?*InputRobotInterface = Inheritance.upcast(?*InputRobotInterface, Inheritance.receiver(keyActionScriptInputInterface.?, "getInputRobotInterface").getInputRobotInterface());
        const integer: []?*Integer = Inheritance.receiver(keyActionScriptInputInterface.?, "getKeyArray").getKeyArray();
        if (Inheritance.receiver(keyActionScriptInputInterface.?, "getDelayBetweenKeys").getDelayBetweenKeys() == 0) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(Inheritance.receiver(keyActionScriptInputInterface.?, "getKeyArray").getKeyArray().len))) : (index += 1) {
                if (Inheritance.receiver(keyActionScriptInputInterface.?, "isPress").isPress()) {
                    _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ integer[@intCast(index)] });
                }
                }
            }
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(Inheritance.receiver(keyActionScriptInputInterface.?, "getTime").getTime()), .awake) catch {});
            {
                var index: i32 = @as(i32, @intCast(Inheritance.receiver(keyActionScriptInputInterface.?, "getKeyArray").getKeyArray().len)) - 1;
                while (index >= 0) : (index -= 1) {
                if (Inheritance.receiver(keyActionScriptInputInterface.?, "isRelease").isRelease()) {
                    _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ integer[@intCast(index)] });
                }
                }
            }
        } else {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(Inheritance.receiver(keyActionScriptInputInterface.?, "getKeyArray").getKeyArray().len))) : (index += 1) {
                if (Inheritance.receiver(keyActionScriptInputInterface.?, "isPress").isPress()) {
                    _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ integer[@intCast(index)] });
                }
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(Inheritance.receiver(keyActionScriptInputInterface.?, "getTime").getTime()), .awake) catch {});
                if (Inheritance.receiver(keyActionScriptInputInterface.?, "isRelease").isRelease()) {
                    _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ integer[@intCast(index)] });
                }
                const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ Inheritance.receiver(keyActionScriptInputInterface.?, "getDelayBetweenKeys").getDelayBetweenKeys() });
                var toLong: i32 = 0;
                while (!timeHelper.?.isTimeTNT() or toLong > 6000) {
                    toLong += 1;
                    _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(50), .awake) catch {});
                }
                }
            }
        }
    }
};

