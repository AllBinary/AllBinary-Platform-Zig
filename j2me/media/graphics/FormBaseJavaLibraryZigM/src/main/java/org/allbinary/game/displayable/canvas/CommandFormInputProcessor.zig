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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const CommandCurrentSelectionForm = @import("org/allbinary/graphics/form/CommandCurrentSelectionForm.zig").CommandCurrentSelectionForm;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PrimaryPlayerQueueFactory = @import("org/allbinary/media/audio/PrimaryPlayerQueueFactory.zig").PrimaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const PrimaryThreadPool = @import("org/allbinary/thread/PrimaryThreadPool.zig").PrimaryThreadPool;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;
const CommandRunnable = @import("org/allbinary/game/displayable/canvas/CommandRunnable.zig").CommandRunnable;

//In general allow scrolling of the menu and selection the center item
pub const CommandFormInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.CommandFormInputProcessor";
    base: BasicMenuInputProcessor = undefined,
    MOTION_GESTURE_SOURCE_ID: i32 = 0,
    CLICK_DELAY: i32 = 0,
    clickTimeHelper: ?*TimeDelayHelper = null,
    DOUBLE_CLICK_DELAY: i32 = 0,
    doubleClickTimeHelper: ?*TimeDelayHelper = null,
    isSingleKeyProcessing: bool = false,
    form: ?*ScrollSelectionForm = null,
    hasPressed: bool = false,
    PROCESS_COMMAND: ?*String = null,
    NAME_LABEL: ?*String = null,

    fn initFields(this: *Self) void {
        this.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().?.MOTION_GESTURE_SOURCE_ID;
        this.CLICK_DELAY = 150;
        this.clickTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ this.CLICK_DELAY });
        this.DOUBLE_CLICK_DELAY = 1200;
        this.doubleClickTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ this.DOUBLE_CLICK_DELAY });
        this.isSingleKeyProcessing = Inheritance.receiverOf(InputFeatureFactory.getInstance().?, "isSingleKeyProcessing").isSingleKeyProcessing();
        
        this.hasPressed = false;
        this.PROCESS_COMMAND = String.literal("processCommand");
        this.NAME_LABEL = String.literal(" ScrollSelectionForm: ");
    }
    

    pub fn create4(gameKeyEventList: ?*BasicArrayList, playerInputId: i32, gameCanvas: ?*MyCanvas, form: ?*ScrollSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicMenuInputProcessor, "create3", .{ gameKeyEventList, playerInputId, gameCanvas }).*;
        this.initFields();
        this.form = form;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, key: i32) i32 {
        if (key == Canvas.LEFT or key == Canvas.RIGHT or key == Canvas.UP or key == Canvas.DOWN) {
            _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
            _ = Inheritance.call(self.form.?, "processInputKey", .{ key });
            return 1;
        } else if (key == Canvas.FIRE) {
            _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
            return self.processCommand();
        }
        return 0;
    }
    

    pub fn processCommand(self: *Self) i32 {
        const commandCurrentSelectionForm: ?*CommandCurrentSelectionForm = Inheritance.cast(?*CommandCurrentSelectionForm, self.form);
        const command: ?*Command = Inheritance.upcast(?*Command, Inheritance.receiver(commandCurrentSelectionForm.?, "getSelectedCommand").getSelectedCommand());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(command)), self, self.PROCESS_COMMAND });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        if (SWTUtil.isSWT and Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL }) and !Object.same(command, GameCommandsFactory.getInstance().?.EXIT_COMMAND)) {
            _ = Inheritance.callStatic(CommandRunnable, "create2", .{ self, command }).run();
        } else {
            _ = Inheritance.call(PrimaryThreadPool.getInstance().?, "runTask", .{ Inheritance.callStatic(CommandRunnable, "create2", .{ self, command }) });
        }
        if (Object.same(command, GameCommandsFactory.getInstance().?.QUIT_COMMAND)) {
            return -1;
        } else {
            return 1;
        }
    }
    

    // throws Exception
    pub fn processInputList(self: *Self) i32 {
        { // try
            const motionInputsIndex: i32 = self.processMotionInputs();
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
            const size: i32 = list.?.size();
            var key: i32 = 0;
            var gameKeyEvent: ?*GameKeyEvent = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                gameKeyEvent = Inheritance.cast(?*GameKeyEvent, list.?.objectArray[@intCast(index)]);
                key = Inheritance.receiver(gameKeyEvent.?, "getKey").getKey();
                if (Inheritance.receiver(gameKeyEvent.?, "getSourceId").getSourceId() != self.MOTION_GESTURE_SOURCE_ID) {
                    if (Inheritance.call(self, "processInput", .{ key }) == 1) {
                        break;
                    }
                }
                }
            }
            _ = Inheritance.receiver(self, "clear").clear();
            if (size > 0 or motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.PROCESS_INPUT, e });
//             return -1;
    }
    

    // throws Exception
    pub fn processMotionInputs(self: *Self) i32 {
        const lastIndex: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "motionGestureEventList").*.?, "size").size() - 1;
        if (lastIndex >= 0) {
            const motionGestureEvent: ?*MotionGestureEvent = Inheritance.cast(?*MotionGestureEvent, Inheritance.fieldPointer(self, "motionGestureEventList").*.?.objectArray[@intCast(lastIndex)]);
            _ = Inheritance.call(self, "processMotionInput", .{ motionGestureEvent });
        }
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "motionGestureEventList").*.?, "clear").clear();
        return lastIndex;
    }
    

    // throws Exception
    pub fn processMotionInput(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, motionGestureEvent.?.getMotionGesture());
        if (Object.same(motionGestureInput, touchMotionGestureFactory.?.RELEASED)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, motionGestureEvent.?.getCurrentPoint());
            if (Inheritance.call(self.form.?, "isInForm", .{ point })) {
                const index: i32 = Inheritance.call(self.form.?, "getSelectedIndexForPoint", .{ point });
                if (index != -1) {
                    _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
                    if (index == Inheritance.receiver(self.form.?, "getSelectedIndex").getSelectedIndex()) {
                        if (self.clickTimeHelper.?.isTimeTNT()) {
                            _ = self.processCommand();
                        }
                    } else {
                        _ = Inheritance.call(self.form.?, "setSelectedIndex", .{ index });
                    }
                } else {
                }
            }
            if (self.hasPressed) {
                if (!self.doubleClickTimeHelper.?.isTimeTNT()) {
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Double Press"), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.PROCESS_MOTION_INPUT });
                    _ = self.processCommand();
                }
                self.doubleClickTimeHelper.?.delay = Inheritance.upcast(@TypeOf(self.doubleClickTimeHelper.?.delay), self.DOUBLE_CLICK_DELAY);
                _ = self.doubleClickTimeHelper.?.setStartTimeTNT();
            }
            self.hasPressed = false;
        } else if (Object.same(motionGestureInput, touchMotionGestureFactory.?.PRESSED)) {
            self.doubleClickTimeHelper.?.delay = 0;
            self.hasPressed = true;
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ self.NAME_LABEL }).?, "append", .{ Object.toString(Object.of(self.form)) }))));
    }
};

