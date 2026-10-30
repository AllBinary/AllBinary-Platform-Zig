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
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventUtil = @import("org/allbinary/game/input/event/GameKeyEventUtil.zig").GameKeyEventUtil;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const SpecialGameInputFactory = @import("org/allbinary/game/layer/special/SpecialGameInputFactory.zig").SpecialGameInputFactory;
const SpecialGameInputInterface = @import("org/allbinary/game/layer/special/SpecialGameInputInterface.zig").SpecialGameInputInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const CheatGameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.CheatGameInputProcessor";
    base: PlayerGameInput = undefined,
    PROCESS_GAME: ?*String = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    gameKeyFactory: ?*GameKeyFactory = null,
    pub var inputProcessor: ?*SpecialGameInputInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        inputProcessor = Inheritance.upcast(?*SpecialGameInputInterface, SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT);
    }

    fn initFields(this: *Self) void {
        this.PROCESS_GAME = String.literal("processGame");
        
        this.gameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
    }
    

    pub fn create1(gameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ BasicArrayListD.create(), BasicArrayListD.create(), -1 }).*;
        this.initFields();
        this.gameCanvas = gameCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const gameLayerManager: ?*AllBinaryGameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager());
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
            const size: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const anyType: ?Object = Inheritance.upcast(?Object, list.?.objectArray[@intCast(index)]);
                const key: i32 = Inheritance.callStatic(GameKeyEventUtil, "getKey", .{ anyType });
                if (key == Inheritance.receiverOf(self.gameKeyFactory.?.LEVEL_DOWN.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "strafeLeft").strafeLeft();
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.LEVEL_UP.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "strafeRight").strafeRight();
                    break;
                }
                if (key == Inheritance.receiverOf(self.gameKeyFactory.?.LEFT.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "left").left();
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.RIGHT.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "right").right();
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.UP.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "up").up();
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.DOWN.?, "getId").getId()) {
                    _ = Inheritance.receiverOf(CheatGameInputProcessor.inputProcessor.?, "down").down();
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.KEY_NUM1.?, "getId").getId()) {
                    _ = Inheritance.call(CheatGameInputProcessor.inputProcessor.?, "special1", .{ gameLayerManager, GameKeyEvent.NONE });
                    break;
                } else if (key == Inheritance.receiverOf(self.gameKeyFactory.?.KEY_NUM3.?, "getId").getId()) {
                    _ = Inheritance.call(CheatGameInputProcessor.inputProcessor.?, "special2", .{ gameLayerManager, GameKeyEvent.NONE });
                    break;
                }
                }
            }
            _ = list.?.clear();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE, e });
    }
};

