// 
// AllBinary Open License Version 1 
// Copyright (c) 2007 AllBinary 
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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BaseTouchInput = @import("org/allbinary/input/motion/button/BaseTouchInput.zig").BaseTouchInput;

pub const TouchButtonsListBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsListBuilder";
    base: BaseTouchInput = undefined,
    baseTouchInputList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.baseTouchInputList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseTouchInput.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addList(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = self.baseTouchInputList.?.size();
        var baseTouchInput: ?*BaseTouchInput = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            baseTouchInput = Inheritance.cast(?*BaseTouchInput, Inheritance.call(self.baseTouchInputList.?, "get", .{ index }));
            _ = Inheritance.call(list.?, "addAllList", .{ baseTouchInput.?.getList() });
            }
        }
    }
    

    pub fn add(self: *Self, baseTouchInput: ?*BaseTouchInput) void {
        _ = Inheritance.call(self.baseTouchInputList.?, "add", .{ baseTouchInput });
    }
};

