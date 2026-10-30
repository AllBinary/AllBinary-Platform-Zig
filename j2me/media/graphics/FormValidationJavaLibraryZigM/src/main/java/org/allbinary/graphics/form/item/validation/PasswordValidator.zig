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
const TextFieldItemValidator = @import("org/allbinary/graphics/form/item/validation/TextFieldItemValidator.zig").TextFieldItemValidator;

pub const PasswordValidator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.validation.PasswordValidator";
    base: TextFieldItemValidator = undefined,
    

    pub fn create4(textFieldItem: ?*ABTextFieldItem, min: i32, max: i32, allowOnEmpty: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TextFieldItemValidator, "create4", .{ textFieldItem, min, max, allowOnEmpty }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

