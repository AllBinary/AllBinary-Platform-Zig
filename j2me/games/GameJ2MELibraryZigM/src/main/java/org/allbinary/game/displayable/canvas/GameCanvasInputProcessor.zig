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
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const InputProcessor = @import("org/allbinary/game/input/InputProcessor.zig").InputProcessor;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const DownGameKeyEventHandler = @import("org/allbinary/game/input/event/DownGameKeyEventHandler.zig").DownGameKeyEventHandler;
const DownKeyEventHandler = @import("org/allbinary/game/input/event/DownKeyEventHandler.zig").DownKeyEventHandler;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const UpGameKeyEventHandler = @import("org/allbinary/game/input/event/UpGameKeyEventHandler.zig").UpGameKeyEventHandler;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameCanvasInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameCanvasInputProcessor";
    base: InputProcessor = undefined,
    logUtil: ?*LogUtil = null,
    allBinaryGameCanvas: ?*AllBinaryGameCanvas = null,
    downGameKeyEventHandler: ?*DownGameKeyEventHandler = null,
    upGameKeyEventHandler: ?*UpGameKeyEventHandler = null,
    downKeyEventHandler: ?*DownKeyEventHandler = null,
    smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = null,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,
    NONE: ?*GameKey = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.downGameKeyEventHandler = Inheritance.upcast(?*DownGameKeyEventHandler, DownGameKeyEventHandler.getInstance());
        this.upGameKeyEventHandler = Inheritance.upcast(?*UpGameKeyEventHandler, UpGameKeyEventHandler.getInstance());
        this.downKeyEventHandler = Inheritance.upcast(?*DownKeyEventHandler, DownKeyEventHandler.getInstance());
        this.smallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        this.inputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping());
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
    }
    

    pub fn create1(allBinaryGameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputProcessor.create().*;
        this.initFields();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        _ = Inheritance.call(this.inputToGameKeyMapping.?, "init", .{ this.allBinaryGameCanvas });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ self.allBinaryGameCanvas, keyCode }));
            if (!Object.same(gameKey, self.NONE)) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self.allBinaryGameCanvas, gameKey }));
                _ = Inheritance.call(self.downGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.downGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "gameInputStrings").*.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT });
            }
            const keyCodeAsInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(self.smallIntegerSingletonFactory.?, "getAtNoThrow", .{ keyCode }));
            _ = Inheritance.call(self.downKeyEventHandler.?, "fireEventI", .{ keyCodeAsInteger });
            _ = Inheritance.call(Inheritance.call(self.downKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEventI", .{ keyCodeAsInteger });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Key Event Error"), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT, e });
    }
    

    pub fn keyReleasedByDevice(self: *Self, canvas: ?*Canvas, keyCode: i32, deviceId: i32) void {
        _ = Inheritance.call(self, "removeGameKeyEvent", .{ canvas, keyCode, deviceId, false });
    }
    

    pub fn removeGameKeyEvent(self: *Self, canvas: ?*Canvas, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = repeated;
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(self.inputToGameKeyMapping.?, "getInstanceForCanvas", .{ canvas, keyCode }));
            if (!Object.same(gameKey, self.NONE)) {
                const gameKeyEventSourceInterface: ?*GameKeyEventSourceInterface = Inheritance.cast(?*GameKeyEventSourceInterface, canvas);
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ gameKeyEventSourceInterface, gameKey }));
                _ = Inheritance.call(self.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "gameInputStrings").*.?.NO_KEY }).?, "appendint", .{ keyCode }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.REMOVE_KEY_EVENT });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Key Event Error"), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.REMOVE_KEY_EVENT, e });
    }
};

