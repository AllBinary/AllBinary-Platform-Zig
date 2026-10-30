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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/CommandFormInputProcessor.zig").CommandFormInputProcessor;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;

pub const ImmediateCommandFormInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor";
    base: CommandFormInputProcessor = undefined,
    timeHelper: ?*TimeDelayHelper = null,
    gameCommandCanvas: ?*GameCommandCanvas = null,

    fn initFields(this: *Self) void {
        this.timeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 25 });
        
    }
    

    pub fn create4(gameKeyEventList: ?*BasicArrayList, playerInputId: i32, gameCommandCanvas: ?*GameCommandCanvas, form: ?*ScrollSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandFormInputProcessor, "create4", .{ gameKeyEventList, playerInputId, gameCommandCanvas, form }).*;
        this.initFields();
        this.gameCommandCanvas = gameCommandCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onPressGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(&self.base, "onPressGameKeyEvent", .{ gameKeyEvent });
            if (self.timeHelper.?.isTimeTNT()) {
                _ = Inheritance.receiver(self, "processInputList").processInputList();
                _ = Inheritance.call(self.gameCommandCanvas.?.repaintBehavior.?, "onChangeRepaint", .{ Inheritance.receiver(self, "getCanvas").getCanvas() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ON_PRESS_GAME_KEY, e });
    }
    

    pub fn onDownGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(&self.base, "onDownGameKeyEvent", .{ gameKeyEvent });
            if (self.timeHelper.?.isTimeTNT()) {
                _ = Inheritance.receiver(self, "processInputList").processInputList();
                _ = Inheritance.call(self.gameCommandCanvas.?.repaintBehavior.?, "onChangeRepaint", .{ Inheritance.receiver(self, "getCanvas").getCanvas() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ON_DOWN_GAME_KEY, e });
    }
    

    pub fn onUpGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(&self.base, "onUpGameKeyEvent", .{ gameKeyEvent });
            if (self.timeHelper.?.isTimeTNT()) {
                _ = Inheritance.receiver(self, "processInputList").processInputList();
                _ = Inheritance.call(self.gameCommandCanvas.?.repaintBehavior.?, "onChangeRepaint", .{ Inheritance.receiver(self, "getCanvas").getCanvas() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ON_UP_GAME_KEY, e });
    }
    

    pub fn onMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        { // try
            _ = Inheritance.call(&self.base, "onMotionGestureEvent", .{ motionGestureEvent });
            if (self.timeHelper.?.isTimeTNT()) {
                _ = Inheritance.receiver(self, "processInputList").processInputList();
                _ = Inheritance.call(self.gameCommandCanvas.?.repaintBehavior.?, "onChangeRepaint", .{ Inheritance.receiver(self, "getCanvas").getCanvas() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onMotionGestureEvent"), e });
    }
};

