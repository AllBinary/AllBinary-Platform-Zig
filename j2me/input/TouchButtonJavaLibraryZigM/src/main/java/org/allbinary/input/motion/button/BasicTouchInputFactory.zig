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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;

pub const BasicTouchInputFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.BasicTouchInputFactory";
    logUtil: ?*LogUtil = null,
    SPECIAL_BUTTON_SEVEN_TESTING_ONLY: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_EIGHT_TESTING_ONLY: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_SIX: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_FIVE: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_FOUR: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_THREE: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_TWO: ?*TouchButtonInput = null,
    SPECIAL_BUTTON_ONE: ?*TouchButtonInput = null,
    UP: ?*TouchButtonInput = null,
    LEFT: ?*TouchButtonInput = null,
    RIGHT: ?*TouchButtonInput = null,
    DOWN: ?*TouchButtonInput = null,
    NONE: ?*TouchButtonInput = null,
    initialized: bool = false,
    list: ?*BasicArrayList = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
        
        
        
        
        
        
        
        this.initialized = false;
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*BasicTouchInputFactory {
        if (Object.same(BasicTouchInputFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            BasicTouchInputFactory.instance = Inheritance.upcast(@TypeOf(BasicTouchInputFactory.instance), BasicTouchInputFactory.create());
        }
        return Inheritance.cast(?*BasicTouchInputFactory, BasicTouchInputFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const MAX: i32 = InputFactory.getInstance().?.MAX;
        this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 41, String.literal("Button 7 - Testing Only May Cross Over Key Values") });
        this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 42, String.literal("Button 8 - Testing Only May Cross Over Key Values") });
        this.SPECIAL_BUTTON_SIX = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 30, String.literal("Button 6") });
        this.SPECIAL_BUTTON_FIVE = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 31, String.literal("Button 5") });
        this.SPECIAL_BUTTON_FOUR = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 32, String.literal("Button 4") });
        this.SPECIAL_BUTTON_THREE = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 33, String.literal("Button 3") });
        this.SPECIAL_BUTTON_TWO = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 34, String.literal("Button 2") });
        this.SPECIAL_BUTTON_ONE = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 35, String.literal("Button 1") });
        this.UP = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 36, String.literal("Up Button") });
        this.LEFT = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 37, String.literal("Left Button") });
        this.RIGHT = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 38, String.literal("Right Button") });
        this.DOWN = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 39, String.literal("Down Button") });
        this.NONE = Inheritance.callStatic(TouchButtonInput, "create2", .{ MAX - 40, String.literal("No Button") });
        return this;
    }
    

    pub fn init(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!self.initialized) {
            self.initialized = true;
            _ = Inheritance.call(self.list.?, "add", .{ self.UP });
            _ = Inheritance.call(self.list.?, "add", .{ self.LEFT });
            _ = Inheritance.call(self.list.?, "add", .{ self.RIGHT });
            _ = Inheritance.call(self.list.?, "add", .{ self.DOWN });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_TWO });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_FOUR });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_THREE });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_ONE });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_FIVE });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_SIX });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_SIX });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_SEVEN_TESTING_ONLY });
            _ = Inheritance.call(self.list.?, "add", .{ self.SPECIAL_BUTTON_EIGHT_TESTING_ONLY });
            _ = Inheritance.call(self, "updateAllFromList", .{ self.list, inputToGameKeyMapping });
        }
    }
    

    pub fn updateAll(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        _ = Inheritance.call(self, "updateAllFromList", .{ self.list, inputToGameKeyMapping });
    }
    

    pub fn updateAllFromList(self: *Self, list: ?*BasicArrayList, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "appendint", .{ list.?.size() }))), self, String.literal("updateAll") });
        var touchButtonInput: ?*TouchButtonInput = null;
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            touchButtonInput = Inheritance.cast(?*TouchButtonInput, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(touchButtonInput.?, "update", .{ inputToGameKeyMapping });
            }
        }
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

