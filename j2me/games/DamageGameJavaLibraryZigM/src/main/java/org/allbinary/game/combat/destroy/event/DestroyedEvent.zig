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
// package org.allbinary.game.combat.destroy.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const NullGameCanvas = @import("org/allbinary/game/displayable/canvas/NullGameCanvas.zig").NullGameCanvas;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const DestroyedEventHandler = @import("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.zig").DestroyedEventHandler;

pub const DestroyedEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.event.DestroyedEvent";
    base: AllBinaryEventObject = undefined,
    allBinaryGameCanvas: ?*AllBinaryGameCanvas = null,
    allBinaryLayerInterface: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        this.allBinaryGameCanvas = Inheritance.upcast(?*AllBinaryGameCanvas, NullGameCanvas.getInstance());
        this.allBinaryLayerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
    }
    

    pub fn create1(combatGameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ DestroyedEventHandler.getInstance() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setAllBinaryGameCanvas", .{ combatGameCanvas });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getAllBinaryGameCanvas(self: *Self) ?*AllBinaryGameCanvas {
        return self.allBinaryGameCanvas;
    }
    

    pub fn getLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.allBinaryLayerInterface;
    }
    

    pub fn setAllBinaryGameCanvas(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        self.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    pub fn setLayerInterfaceForCircularStaticPool(self: *Self, allBinaryLayerInterface: ?*AllBinaryLayer) void {
        self.allBinaryLayerInterface = allBinaryLayerInterface;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("DestroyedEvent: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("AllBinaryLayerInterface: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.allBinaryLayerInterface)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nAllBinaryGameCanvas: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getAllBinaryGameCanvas() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

