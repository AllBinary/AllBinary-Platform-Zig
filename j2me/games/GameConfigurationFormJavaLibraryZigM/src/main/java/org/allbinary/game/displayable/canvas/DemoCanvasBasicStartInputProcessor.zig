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
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;

pub const DemoCanvasBasicStartInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor";
    base: BasicMenuInputProcessor = undefined,
    

    pub fn create2(gameKeyEventList: ?*BasicArrayList, gameCanvas: ?*RunnableCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicMenuInputProcessor, "create3", .{ gameKeyEventList, -1, gameCanvas }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processInputList(self: *Self) i32 {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
        const size: i32 = list.?.size();
        var gameKeyEvent: ?*GameKeyEvent = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameKeyEvent = Inheritance.cast(?*GameKeyEvent, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Start GameKey: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ gameKeyEvent }) }))), self, GameInputStrings.getInstance().?.PROCESS_INPUT });
            }
        }
        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getCanvas").getCanvas().?, "getCustomCommandListener").getCustomCommandListener().?, "commandAction", .{ GameCommandsFactory.getInstance().?.START_COMMAND, NullCanvas.NULL_CANVAS });
        return size;
    }
};

