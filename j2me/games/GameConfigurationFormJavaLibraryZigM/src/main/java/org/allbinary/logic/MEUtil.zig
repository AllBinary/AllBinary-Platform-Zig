// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;

//Handle the differences in the public platform vs the raw JS build
pub const MEUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.MEUtil";
    var instance: ?*MEUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MEUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*MEUtil {
        return Inheritance.upcast(?*MEUtil, MEUtil.instance);
    }
    

    pub fn appendItem(self: *Self, form: ?*CommandForm, item: ?*Item) void {
        _ = self;
        _ = Inheritance.call(form.?, "append", .{ item });
    }
};

