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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const MouseStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.MouseStrings";
    MOUSE_PRESSED: ?*String = null,
    MOUSE_RELEASED: ?*String = null,
    MOUSE_CLICKED: ?*String = null,
    MOUSE_DRAGGED: ?*String = null,
    MOUSE_MOVED: ?*String = null,
    MOUSE_PRESSED_LABEL: ?*String = null,
    MOUSE_RELEASED_LABEL: ?*String = null,
    MOUSE_CLICKED_LABEL: ?*String = null,
    MOUSE_DRAGGED_LABEL: ?*String = null,
    MOUSE_MOVED_LABEL: ?*String = null,
    var instance: ?*MouseStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MouseStrings.create();
    }

    fn initFields(this: *Self) void {
        this.MOUSE_PRESSED = String.literal("mousePressed");
        this.MOUSE_RELEASED = String.literal("mouseReleased");
        this.MOUSE_CLICKED = String.literal("mouseClicked");
        this.MOUSE_DRAGGED = String.literal("mouseDragged");
        this.MOUSE_MOVED = String.literal("mouseMoved");
        this.MOUSE_PRESSED_LABEL = Inheritance.upcast(?*String, String.plus(String.literal("MousePressed"), CommonSeps.getInstance().?.COLON_SEP));
        this.MOUSE_RELEASED_LABEL = Inheritance.upcast(?*String, String.plus(String.literal("MouseReleased"), CommonSeps.getInstance().?.COLON_SEP));
        this.MOUSE_CLICKED_LABEL = Inheritance.upcast(?*String, String.plus(String.literal("MouseClicked"), CommonSeps.getInstance().?.COLON_SEP));
        this.MOUSE_DRAGGED_LABEL = Inheritance.upcast(?*String, String.plus(String.literal("MouseDragged"), CommonSeps.getInstance().?.COLON_SEP));
        this.MOUSE_MOVED_LABEL = Inheritance.upcast(?*String, String.plus(String.literal("MouseMoved"), CommonSeps.getInstance().?.COLON_SEP));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MouseStrings {
        return Inheritance.upcast(?*MouseStrings, MouseStrings.instance);
    }
};

