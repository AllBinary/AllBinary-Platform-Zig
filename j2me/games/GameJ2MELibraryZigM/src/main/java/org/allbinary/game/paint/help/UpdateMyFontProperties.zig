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
// package org.allbinary.game.paint.help

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const UpdateMyFontProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.help.UpdateMyFontProperties";
    actionStringArray: []?*String = &.{},
    keymappingBeginWidthArray: []i32 = &.{},
    actionStringDeltaXArray: []i32 = &.{},
    inputDeltaXArray: [][]i32 = &.{},
    sepArray: [][]?*String = &.{},
    sepWidthArray: [][]i32 = &.{},
    charHeight: i32 = 0,

    fn initFields(this: *Self) void {
        this.actionStringArray = Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
        this.keymappingBeginWidthArray = Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_INT_ARRAY").*;
        this.actionStringDeltaXArray = Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_INT_ARRAY").*;
        this.inputDeltaXArray = Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_INT_ARRAY_ARRAY").*;
        this.sepArray = Inheritance.fieldPointer(StringUtil.getInstance().?, "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS").*;
        this.sepWidthArray = Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_INT_ARRAY_ARRAY").*;
        this.charHeight = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

