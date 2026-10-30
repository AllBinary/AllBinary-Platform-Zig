// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CustomTextBox = @import("org/allbinary/graphics/form/item/CustomTextBox.zig").CustomTextBox;

pub const CustomTextBox2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.CustomTextBox2";
    base: CustomTextBox = undefined,
    

    pub fn create8(cmdListener: ?*CommandListener, label: ?*String, text: ?*String, maxSize: i32, constraints: i32, font: ?*Font, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CustomTextBox, "create8", .{ cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor }).*;
        _ = Inheritance.call(Inheritance.receiver(this, "getTextFieldItem").getTextFieldItem().?, "setFocus", .{ true });
        Inheritance.bindOverrides(this);
        return this;
    }
};

