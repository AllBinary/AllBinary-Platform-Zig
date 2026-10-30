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
// package org.allbinary.game.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligence = @import("org/allbinary/ai/ArtificialIntelligence.zig").ArtificialIntelligence;
const CanvasUtil = @import("org/allbinary/game/displayable/canvas/CanvasUtil.zig").CanvasUtil;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ai.BasicAI";
    base: ArtificialIntelligence = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    ownerLayerInterface: ?*AllBinaryLayer = null,
    gameInput: ?*GameInput = null,
    lastKey: i32 = 0,
    // Implements GameKeyEventSourceInterface
    pub var AI_VISITOR: ?*Integer = undefined;
    pub var ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        AI_VISITOR = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }));
        ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 1 }));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        
        
        this.lastKey = -1;
    }
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ArtificialIntelligence.create().*;
        this.initFields();
        this.ownerLayerInterface = ownerLayerInterface;
        this.gameInput = gameInput;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn processKeyAI(self: *Self, key: i32) void {
        if (key != -1) {
            _ = Inheritance.call(self.gameInput.?, "add", .{ Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForKey", .{ self, key }) });
        }
    }
    

    pub fn setLastKey(self: *Self, lastKey: i32) void {
        self.lastKey = lastKey;
    }
    

    pub fn getLastKey(self: *Self) i32 {
        return self.lastKey;
    }
    

    pub fn getOwnerLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.ownerLayerInterface;
    }
    

    pub fn getGameInput(self: *Self) ?*GameInput {
        return self.gameInput;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" LastKey: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(CanvasUtil, "getKeyName", .{ self.getLastKey() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return 1;
    }
};

