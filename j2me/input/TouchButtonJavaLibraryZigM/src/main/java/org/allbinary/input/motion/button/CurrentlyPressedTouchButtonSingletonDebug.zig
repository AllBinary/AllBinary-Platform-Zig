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
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CurrentlyPressedTouchButtonSingleton = @import("org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.zig").CurrentlyPressedTouchButtonSingleton;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;

pub const CurrentlyPressedTouchButtonSingletonDebug = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug";
    base: CurrentlyPressedTouchButtonSingleton = undefined,
    string: ?*String = null,
    listString: ?*String = null,
    append: ?*String = null,
    PRESSED_AND_FIRED: ?*String = null,
    PRESSED_AND_NOT_FIRED: ?*String = null,
    ASSOCIATED_RELEASED_AND_FIRED: ?*String = null,
    RELEASED_AND_FIRED: ?*String = null,
    RELEASED_AND_FIRED_2: ?*String = null,
    RELEASED_AND_NOT_FIRED: ?*String = null,
    var instanceC: ?*CurrentlyPressedTouchButtonSingletonDebug = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = CurrentlyPressedTouchButtonSingletonDebug.create();
    }

    fn initFields(this: *Self) void {
        this.string = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.listString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.append = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.PRESSED_AND_FIRED = String.literal("pressed & fired");
        this.PRESSED_AND_NOT_FIRED = String.literal("pressed in button but not fired");
        this.ASSOCIATED_RELEASED_AND_FIRED = String.literal("assoc. rel & fired");
        this.RELEASED_AND_FIRED = String.literal("rel & fired 1");
        this.RELEASED_AND_FIRED_2 = String.literal("rel & fired 2");
        this.RELEASED_AND_NOT_FIRED = String.literal("rel & not fired");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CurrentlyPressedTouchButtonSingleton.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*CurrentlyPressedTouchButtonSingleton {
        return Inheritance.upcast(?*CurrentlyPressedTouchButtonSingleton, CurrentlyPressedTouchButtonSingletonDebug.instanceC);
    }
    

    pub fn appendTouchButtonInput(self: *Self, append_: ?*String, touchButtonInput: ?*TouchButtonInput) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(touchButtonInput)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ append_ });
        self.append = Inheritance.upcast(@TypeOf(self.append), Object.toString(Object.of(stringBuffer)));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
    }
    

    pub fn append(self: *Self, append_: ?*String) void {
        self.append = Inheritance.upcast(@TypeOf(self.append), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.append }).?, "append", .{ append_ }))));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
    }
    

    pub fn clearLog(self: *Self, x: i32, y: i32) void {
        self.append = Inheritance.upcast(@TypeOf(self.append), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.callStatic(GPoint, "toStringStatic", .{ x, y, 0 }) }).?, "append", .{ CommonSeps.getInstance().?.SPACE }))));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
    }
    

    pub fn releaseAndNotFired(self: *Self) void {
        _ = Inheritance.call(self, "append", .{ self.RELEASED_AND_NOT_FIRED });
    }
    

    pub fn releaseAndFired(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self, "appendTouchButtonInput", .{ self.RELEASED_AND_FIRED, touchButtonInput });
    }
    

    pub fn releaseAndFired2(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self, "appendTouchButtonInput", .{ self.RELEASED_AND_FIRED_2, touchButtonInput });
    }
    

    pub fn releaseAndFiredAssociated(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self, "appendTouchButtonInput", .{ self.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput });
    }
    

    pub fn pressedAndFired(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self, "appendTouchButtonInput", .{ self.PRESSED_AND_FIRED, touchButtonInput });
    }
    

    pub fn pressedAndNotFired(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(self, "appendTouchButtonInput", .{ self.PRESSED_AND_NOT_FIRED, touchButtonInput });
    }
    

    pub fn removeAt(self: *Self, index: i32) ?*TouchButtonInput {
        const touchButtonInput: ?*TouchButtonInput = Inheritance.upcast(?*TouchButtonInput, Inheritance.call(&self.base, "removeAt", .{ index }));
        self.listString = Inheritance.upcast(@TypeOf(self.listString), Object.toString(Object.of(Inheritance.fieldPointer(self, "list").*)));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
        return touchButtonInput;
    }
    

    pub fn remove(self: *Self, touchButtonInput: ?*TouchButtonInput) bool {
        const isRemoved: bool = Inheritance.call(&self.base, "remove", .{ touchButtonInput });
        self.listString = Inheritance.upcast(@TypeOf(self.listString), Object.toString(Object.of(Inheritance.fieldPointer(self, "list").*)));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
        return isRemoved;
    }
    

    pub fn add(self: *Self, touchButtonInput: ?*TouchButtonInput) void {
        _ = Inheritance.call(&self.base, "add", .{ touchButtonInput });
        self.listString = Inheritance.upcast(@TypeOf(self.listString), Object.toString(Object.of(Inheritance.fieldPointer(self, "list").*)));
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.listString }).?, "append", .{ self.append }))));
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.string;
    }
};

