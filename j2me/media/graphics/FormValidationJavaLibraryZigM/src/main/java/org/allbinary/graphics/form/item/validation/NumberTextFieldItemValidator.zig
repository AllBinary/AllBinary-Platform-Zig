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
// package org.allbinary.graphics.form.item.validation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABTextFieldItem = @import("org/allbinary/graphics/form/item/ABTextFieldItem.zig").ABTextFieldItem;
const ValidatorBase = @import("org/allbinary/logic/control/validate/ValidatorBase.zig").ValidatorBase;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const NumberTextFieldItemValidator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator";
    base: ValidatorBase = undefined,
    textFieldItem: ?*ABTextFieldItem = null,
    min: i32 = 0,
    max: i32 = 0,
    maxChars: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(textFieldItem: ?*ABTextFieldItem, maxChars: i32, min: i32, max: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ValidatorBase.create().*;
        this.initFields();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.maxChars = maxChars;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isNumberValid(self: *Self, value: ?*Integer) ?*Boolean {
        _ = value;
        _ = self;
        return Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.TRUE);
    }
    

    pub fn toNumberVector(self: *Self, value: ?*Integer) ?*BasicArrayList {
        _ = value;
        _ = self;
        return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        var result: ?*Boolean = Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.TRUE);
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getString").getString());
        const textLength: i32 = string.?.length();
        if (textLength > 0 and textLength < self.maxChars) {
            { // try
                _ = (std.fmt.parseInt(i32, Inheritance.receiver(self.textFieldItem.?, "getString").getString().?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
            }
            // catch (NumberFormatException e):
//                 result = Inheritance.upcast(@TypeOf(result), BooleanFactory.getInstance().?.FALSE);
        } else {
            if (textLength < 1) {
                result = Inheritance.upcast(@TypeOf(result), BooleanFactory.getInstance().?.FALSE);
            } else if (textLength > self.maxChars) {
                result = Inheritance.upcast(@TypeOf(result), BooleanFactory.getInstance().?.FALSE);
            }
        }
        return result;
    }
    

    pub fn toList(self: *Self) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getString").getString());
        const textLength: i32 = string.?.length();
        const label: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getLabel").getLabel());
        const name: ?*String = Inheritance.upcast(?*String, label.?.substring2(0, label.?.length() - 2));
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const stringMaker: ?*StringMaker = StringMaker.create();
        if (textLength > 0 and textLength < self.maxChars) {
            { // try
                const number: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(smallIntegerSingletonFactory.?, "createInstance", .{ (std.fmt.parseInt(i32, Inheritance.receiver(self.textFieldItem.?, "getString").getString().?.bytes, 10) catch @panic("java.lang.NumberFormatException")) }));
                if (number.?.intValue() > self.min) {
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ String.literal(" is to small") }))) });
                } else if (number.?.intValue() > self.max) {
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ String.literal(" is to large") }))) });
                }
            }
            // catch (NumberFormatException e):
//                 _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
//                 _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ String.literal(" is not a number") }))) });
        } else {
            if (textLength < 1) {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ String.literal(" is to short") }))) });
            } else if (textLength > self.maxChars) {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ String.literal(" is to long") }))) });
            }
        }
        return list;
    }
};

