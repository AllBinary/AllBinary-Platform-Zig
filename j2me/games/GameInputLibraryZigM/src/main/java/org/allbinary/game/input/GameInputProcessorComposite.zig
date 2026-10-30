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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameInputProcessorInterface = @import("org/allbinary/game/input/GameInputProcessorInterface.zig").GameInputProcessorInterface;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;

pub const GameInputProcessorComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInputProcessorComposite";
    base: PlayerGameInput = undefined,
    name: ?*String = null,
    gameInputProcessorInterface: ?*GameInputProcessorInterface = null,
    NAME_LABEL: ?*String = null,

    fn initFields(this: *Self) void {
        
        
        this.NAME_LABEL = String.literal(" GameInputProcessorInterface: ");
    }
    

    pub fn create2(name: ?*String, gameInputProcessorInterface: ?*GameInputProcessorInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ BasicArrayListD.create(), BasicArrayListD.create(), -1 }).*;
        this.initFields();
        this.name = name;
        this.gameInputProcessorInterface = gameInputProcessorInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
            _ = Inheritance.call(self.gameInputProcessorInterface.?, "onInput", .{ list });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE, e });
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ self.NAME_LABEL }).?, "append", .{ self.name }))));
    }
};

