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
// package org.allbinary.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnalogLocationInputProcessor = @import("org/allbinary/android/input/motion/AnalogLocationInputProcessor.zig").AnalogLocationInputProcessor;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const AnalogLocationInput = @import("org/allbinary/game/input/analog/AnalogLocationInput.zig").AnalogLocationInput;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const CustomGPoint = @import("org/allbinary/graphics/CustomGPoint.zig").CustomGPoint;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const DirectionalAnalogLocationInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.DirectionalAnalogLocationInputProcessor";
    base: AnalogLocationInputProcessor = undefined,
    logUtil: ?*LogUtil = null,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    gameKeyFactory: ?*GameKeyFactory = null,
    leftGameKeyEvent: ?*GameKeyEvent = null,
    rightGameKeyEvent: ?*GameKeyEvent = null,
    upGameKeyEvent: ?*GameKeyEvent = null,
    downGameKeyEvent: ?*GameKeyEvent = null,
    leftTriggerGameKeyEvent: ?*GameKeyEvent = null,
    rightTriggerGameKeyEvent: ?*GameKeyEvent = null,
    // Implements GameKeyEventSourceInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.gameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        this.leftGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        this.rightGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        this.upGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        this.downGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        this.leftTriggerGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        this.rightTriggerGameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
    }
    

    pub fn create1(inputProcessorArray: []?*GameInputProcessor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AnalogLocationInputProcessor.create().*;
        this.initFields();
        this.inputProcessorArray = inputProcessorArray;
        { // try
            this.leftGameKeyEvent = Inheritance.upcast(@TypeOf(this.leftGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.LEFT }));
            this.rightGameKeyEvent = Inheritance.upcast(@TypeOf(this.rightGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.RIGHT }));
            this.upGameKeyEvent = Inheritance.upcast(@TypeOf(this.upGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.UP }));
            this.downGameKeyEvent = Inheritance.upcast(@TypeOf(this.downGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.DOWN }));
            this.leftTriggerGameKeyEvent = Inheritance.upcast(@TypeOf(this.leftTriggerGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.KEY_NUM0 }));
            this.rightTriggerGameKeyEvent = Inheritance.upcast(@TypeOf(this.rightTriggerGameKeyEvent), Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.gameKeyFactory.?.KEY_NUM5 }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, analogLocationInput: ?*AnalogLocationInput) void {
        { // try
            var customGPoint: ?*CustomGPoint = null;
            customGPoint = Inheritance.upcast(@TypeOf(customGPoint), analogLocationInput.?.getCustomGPoint());
            const x: i32 = Inheritance.receiver(customGPoint.?, "getX").getX();
            const y: i32 = Inheritance.receiver(customGPoint.?, "getY").getY();
            const leftTrigger: i32 = analogLocationInput.?.getLeftTrigger();
            const rightTrigger: i32 = analogLocationInput.?.getRightTrigger();
            if (x < 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.leftGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.leftGameKeyEvent, x });
            } else if (x > 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.rightGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.rightGameKeyEvent, x });
            }
            if (y < 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.downGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.downGameKeyEvent, y });
            } else if (y > 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.upGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.upGameKeyEvent, y });
            }
            if (leftTrigger > 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.leftTriggerGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.leftTriggerGameKeyEvent, leftTrigger });
            }
            if (rightTrigger > 0) {
                _ = Inheritance.call(self.inputProcessorArray[@intCast(Inheritance.receiver(self.rightTriggerGameKeyEvent.?, "getKey").getKey())].?, "processAnalog", .{ allbinaryLayerManager, self.rightTriggerGameKeyEvent, rightTrigger });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to process analog input"), self, commonStrings.?.PROCESS, e });
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

