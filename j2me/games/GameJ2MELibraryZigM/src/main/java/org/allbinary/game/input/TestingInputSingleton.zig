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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const GameInputInterface = @import("org/allbinary/game/input/GameInputInterface.zig").GameInputInterface;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameInputProcessorUtil = @import("org/allbinary/game/input/GameInputProcessorUtil.zig").GameInputProcessorUtil;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const TestInputInterface = @import("org/allbinary/game/input/TestInputInterface.zig").TestInputInterface;

pub const TestingInputSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.TestingInputSingleton";
    pub const java_interfaces = .{ GameInputInterface };
    base: AllBinaryGameLayer = undefined,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    paintable: ?*PaintableInterface = null,
    // Implements GameInputInterface
    var instance: ?*TestingInputSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TestingInputSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.inputProcessorArray = array_N66033: { const array_N66033_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66033_array, null); break :array_N66033 array_N66033_array; };
        this.paintable = Inheritance.upcast(?*PaintableInterface, NullPaintable.getInstance());
    }
    

    pub fn getInstance() ?*TestingInputSingleton {
        return Inheritance.upcast(?*TestingInputSingleton, TestingInputSingleton.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD() }).*;
        this.initFields();
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ this.inputProcessorArray });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = self;
    }
    

    pub fn initInputProcessorsForTestInput(self: *Self, aTestInputInterface: ?*TestInputInterface) void {
        const testInputInterface: ?*TestInputInterface = aTestInputInterface;
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), testInputInterface);
        self.inputProcessorArray[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.UP)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "up").up();
//             }
);
        self.inputProcessorArray[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.DOWN)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "down").down();
//             }
);
        self.inputProcessorArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.LEFT)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "left").left();
//             }
);
        self.inputProcessorArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.RIGHT)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "right").right();
//             }
);
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM7)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM7)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "strafeLeft").strafeLeft();
//             }
);
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM9)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM9)]), GameInputProcessor.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws Exception
//             pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
//                 _ = allbinaryLayerManager;
//                 _ = gameKeyEvent;
//                 _ = self;
//                 _ = Inheritance.receiver(testInputInterface.?, "strafeRight").strafeRight();
//             }
);
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.inputProcessorArray });
    }
    

    // throws Exception
    pub fn processInputList(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, list: ?*BasicArrayList) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var key: i32 = 0;
        var gameKeyEvent: ?*GameKeyEvent = null;
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameKeyEvent = Inheritance.upcast(@TypeOf(gameKeyEvent), (Inheritance.cast(?*GameKeyEvent, list.?.objectArray[@intCast(index)])));
            key = Inheritance.receiver(gameKeyEvent.?, "getKey").getKey();
            _ = Inheritance.call(self.inputProcessorArray[@intCast(key)].?, "processEvent", .{ allbinaryLayerManager, GameKeyEvent.NONE });
            }
        }
    }
    

    // throws Exception
    pub fn processInput(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "processInputList", .{ allbinaryLayerManager, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList() });
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "clear").clear();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
    }
    

    pub fn implmentsGameInputInterface(self: *Self) bool {
        _ = self;
        return true;
    }
};

