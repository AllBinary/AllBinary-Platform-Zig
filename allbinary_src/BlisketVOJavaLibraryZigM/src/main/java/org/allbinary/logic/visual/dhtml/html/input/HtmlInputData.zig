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

pub const HtmlInputData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.input.HtmlInputData";
    TEXT: ?*String = null,
    RADIO: ?*String = null,
    CHECKBOX: ?*String = null,
    HIDDEN: ?*String = null,
    IMAGE: ?*String = null,
    PASSWORD: ?*String = null,
    RESET: ?*String = null,
    SUBMIT: ?*String = null,
    TYPES: []?*String = &.{},
    var instance: ?*HtmlInputData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HtmlInputData.create();
    }

    fn initFields(this: *Self) void {
        this.TEXT = String.literal("text");
        this.RADIO = String.literal("radio");
        this.CHECKBOX = String.literal("checkbox");
        this.HIDDEN = String.literal("hidden");
        this.IMAGE = String.literal("image");
        this.PASSWORD = String.literal("password");
        this.RESET = String.literal("reset");
        this.SUBMIT = String.literal("submit");
        this.TYPES = @constCast(&[_]?*String{ this.TEXT, this.RADIO, this.CHECKBOX, this.HIDDEN, this.IMAGE, this.PASSWORD, this.RADIO, this.RESET, this.SUBMIT })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*HtmlInputData {
        return Inheritance.upcast(?*HtmlInputData, HtmlInputData.instance);
    }
};

