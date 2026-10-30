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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const TextFieldItemValidator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.validation.TextFieldItemValidator";
    base: ValidatorBase = undefined,
    textFieldItem: ?*ABTextFieldItem = null,
    min: i32 = 0,
    max: i32 = 0,
    allowOnEmpty: bool = false,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(textFieldItem: ?*ABTextFieldItem, min: i32, max: i32, allowOnEmpty: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ValidatorBase.create().*;
        this.initFields();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.allowOnEmpty = allowOnEmpty;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        var result: ?*Boolean = Inheritance.upcast(?*Boolean, booleanFactory.?.TRUE);
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getString").getString());
        const textLength: i32 = string.?.length();
        if ((textLength == 0 and self.allowOnEmpty) or textLength > self.min and textLength < self.max) {
        } else {
            if (textLength < self.min) {
                result = Inheritance.upcast(@TypeOf(result), booleanFactory.?.FALSE);
            } else if (textLength > self.max) {
                result = Inheritance.upcast(@TypeOf(result), booleanFactory.?.FALSE);
            }
        }
        return result;
    }
    

    pub fn toList(self: *Self) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getString").getString());
        const textLength: i32 = string.?.length();
        if (textLength > self.min and textLength < self.max) {
        } else {
            const label: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.textFieldItem.?, "getLabel").getLabel());
            const name: ?*String = Inheritance.upcast(?*String, label.?.substring2(0, label.?.length() - 2));
            if (textLength < self.min) {
                _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ name }).?, "append", .{ String.literal(" is to short") }))) });
            } else if (textLength > self.max) {
                _ = Inheritance.call(list.?, "add", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ name }).?, "append", .{ String.literal(" is to long") }))) });
            }
        }
        return list;
    }
};

