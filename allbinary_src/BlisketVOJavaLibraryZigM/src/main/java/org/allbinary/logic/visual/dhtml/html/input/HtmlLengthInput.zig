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
// package org.allbinary.logic.visual.dhtml.html.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HtmlValueInput = @import("org/allbinary/logic/visual/dhtml/html/input/HtmlValueInput.zig").HtmlValueInput;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const HtmlLengthInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput";
    base: HtmlValueInput = undefined,
    MAXLENGTH: ?*String = null,
    SIZE: ?*String = null,
    length: ?*String = null,
    size: ?*String = null,

    fn initFields(this: *Self) void {
        this.MAXLENGTH = String.literal("MAXLENGTH");
        this.SIZE = String.literal("SIZE");
        this.length = null;
        this.size = null;
    }
    

    pub fn create5(before: ?*String, @"type": ?*String, name: ?*String, value: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HtmlValueInput, "create5", .{ before, @"type", name, value, after }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setMaxLength(self: *Self, length: ?*Integer) void {
        @as(i32, @intCast(self.len)) = Inheritance.callStatic(String, "create1", .{ length.?.toString() });
        _ = Inheritance.call(self, "addAttribute", .{ self.MAXLENGTH, @as(i32, @intCast(self.len)) });
    }
    

    pub fn setSize(self: *Self, size: ?*Integer) void {
        self.size = Inheritance.callStatic(String, "create1", .{ size.?.toString() });
        _ = Inheritance.call(self, "addAttribute", .{ self.MAXLENGTH, self.size });
    }
};

