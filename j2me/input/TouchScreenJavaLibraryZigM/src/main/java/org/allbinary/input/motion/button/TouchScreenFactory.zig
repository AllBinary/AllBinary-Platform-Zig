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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TouchScreenType = @import("org/allbinary/input/motion/button/TouchScreenType.zig").TouchScreenType;
const TouchScreenTypesFactory = @import("org/allbinary/input/motion/button/TouchScreenTypesFactory.zig").TouchScreenTypesFactory;

pub const TouchScreenFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchScreenFactory";
    logUtil: ?*LogUtil = null,
    touch: bool = false,
    multiTouch: bool = false,
    multiTouchDistinct: bool = false,
    touchScreenType: ?*TouchScreenType = null,
    var SINGLETON: ?*TouchScreenFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = TouchScreenFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.touch = false;
        this.multiTouch = false;
        this.multiTouchDistinct = false;
        this.touchScreenType = Inheritance.upcast(?*TouchScreenType, TouchScreenTypesFactory.getInstance().?.NOTOUCH);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            _ = Inheritance.call(this, "setTouch", .{ true });
            _ = Inheritance.call(this, "setMultiTouch", .{ false });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, TouchScreenFactory.SINGLETON, commonStrings.?.GET_INSTANCE, e });
        return this;
    }
    

    pub fn getInstance() ?*TouchScreenFactory {
        return Inheritance.upcast(?*TouchScreenFactory, TouchScreenFactory.SINGLETON);
    }
    

    pub fn setMultiTouch(self: *Self, multiTouch: bool) void {
        self.multiTouch = multiTouch;
    }
    

    pub fn isMultiTouch(self: *Self) bool {
        return self.multiTouch;
    }
    

    pub fn setTouch(self: *Self, touch: bool) void {
        self.touch = touch;
    }
    

    pub fn isTouch(self: *Self) bool {
        return self.touch;
    }
    

    pub fn setMultiTouchDistinct(self: *Self, multiTouchDistinct: bool) void {
        self.multiTouchDistinct = multiTouchDistinct;
    }
    

    pub fn isMultiTouchDistinct(self: *Self) bool {
        return self.multiTouchDistinct;
    }
    

    pub fn setTouchScreenType(self: *Self, touchScreenType: ?*TouchScreenType) void {
        self.touchScreenType = touchScreenType;
    }
    

    pub fn getTouchScreenType(self: *Self) ?*TouchScreenType {
        return self.touchScreenType;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TouchScreen: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isTouch() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" MultiTouch: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isMultiTouch() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Distinct MultiTouch: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isMultiTouchDistinct() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" TouchScreenType: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getTouchScreenType() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

