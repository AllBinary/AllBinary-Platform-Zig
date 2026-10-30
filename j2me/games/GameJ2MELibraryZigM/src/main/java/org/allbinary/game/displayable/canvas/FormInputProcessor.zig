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
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const InputProcessor = @import("org/allbinary/game/input/InputProcessor.zig").InputProcessor;
const PlatformKeyFactory = @import("org/allbinary/game/input/PlatformKeyFactory.zig").PlatformKeyFactory;
const DownKeyEventHandler = @import("org/allbinary/game/input/event/DownKeyEventHandler.zig").DownKeyEventHandler;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const UpGameKeyEventHandler = @import("org/allbinary/game/input/event/UpGameKeyEventHandler.zig").UpGameKeyEventHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const FormInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.FormInputProcessor";
    base: InputProcessor = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    downKeyEventHandler: ?*DownKeyEventHandler = null,
    upGameKeyEventHandler: ?*UpGameKeyEventHandler = null,
    inputFactory: ?*InputFactory = null,
    platformKeyFactory: ?*PlatformKeyFactory = null,
    allBinaryGameCanvas: ?*AllBinaryGameCanvas = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        this.downKeyEventHandler = Inheritance.upcast(?*DownKeyEventHandler, DownKeyEventHandler.getInstance());
        this.upGameKeyEventHandler = Inheritance.upcast(?*UpGameKeyEventHandler, UpGameKeyEventHandler.getInstance());
        this.inputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        this.platformKeyFactory = Inheritance.upcast(?*PlatformKeyFactory, PlatformKeyFactory.getInstance());
        
    }
    

    pub fn create1(allBinaryGameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputProcessor.create().*;
        this.initFields();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.inputFactory.?.KEY_CODE_LABEL }).?, "appendint", .{ keyCode }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ self.inputFactory.?.DEVICE_ID_LABEL }).?, "appendint", .{ deviceId }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.KEY_PRESSED });
            const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(self.inputFactory.?, "getInstanceById", .{ keyCode }));
            const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self.allBinaryGameCanvas, input }));
            _ = Inheritance.call(self.downKeyEventHandler.?, "fireEventForGameKeyEvent", .{ gameKeyEvent });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT, e });
    }
    

    pub fn keyReleasedByDevice(self: *Self, canvas: ?*Canvas, keyCode: i32, deviceId: i32) void {
        { // try
            const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(self.inputFactory.?, "getInstanceById", .{ keyCode }));
            if (Inheritance.call(self.platformKeyFactory.?, "isEnter", .{ input })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.inputFactory.?.KEY_CODE_LABEL }).?, "appendint", .{ keyCode }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ self.inputFactory.?.DEVICE_ID_LABEL }).?, "appendint", .{ deviceId }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.KEY_RELEASED });
                const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.KEY_NUM0);
                const gameKeyEventSourceInterface: ?*GameKeyEventSourceInterface = Inheritance.cast(?*GameKeyEventSourceInterface, canvas);
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ gameKeyEventSourceInterface, gameKey }));
                _ = Inheritance.call(self.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.ADD_KEY_EVENT, e });
    }
};

