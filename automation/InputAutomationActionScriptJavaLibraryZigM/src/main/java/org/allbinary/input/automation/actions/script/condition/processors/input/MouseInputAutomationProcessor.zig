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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MouseActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface.zig").MouseActionScriptInputInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const MouseInputAutomationProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn process(mouseActionScriptInputInterface: ?*MouseActionScriptInputInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Start - Processing Mouse Input at: ") }).?, "append", .{ Object.toString(Object.of(Inheritance.receiver(mouseActionScriptInputInterface.?, "getPoint").getPoint())) }).?, "append", .{ String.literal(" clicks: ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks())) }))), String.literal("MouseInputAutomationProcessor"), commonStrings.?.PROCESS });
        const inputRobotInterface: ?*InputRobotInterface = Inheritance.upcast(?*InputRobotInterface, Inheritance.receiver(mouseActionScriptInputInterface.?, "getInputRobotInterface").getInputRobotInterface());
        if (Inheritance.receiver(mouseActionScriptInputInterface.?, "getPoint").getPoint().?.x != -1 and Inheritance.receiver(mouseActionScriptInputInterface.?, "getPoint").getPoint().?.y != -1) {
            _ = Inheritance.call(inputRobotInterface.?, "mouseMove", .{ Inheritance.receiver(mouseActionScriptInputInterface.?, "getPoint").getPoint() });
        }
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(Inheritance.receiver(mouseActionScriptInputInterface.?, "getTime").getTime()), .awake) catch {});
        if (Inheritance.receiver(mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() != 0) {
            _ = Inheritance.call(inputRobotInterface.?, "mousePress", .{ Inheritance.receiver(mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() });
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(Inheritance.receiver(mouseActionScriptInputInterface.?, "getTime").getTime()), .awake) catch {});
            _ = Inheritance.call(inputRobotInterface.?, "mouseRelease", .{ Inheritance.receiver(mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() });
        }
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(Inheritance.receiver(mouseActionScriptInputInterface.?, "getTime").getTime()), .awake) catch {});
    }
};

