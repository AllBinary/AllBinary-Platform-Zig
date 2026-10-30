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
// package org.allbinary.logic.visual.dhtml.html

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HtmlForm = @import("org/allbinary/logic/visual/dhtml/html/HtmlForm.zig").HtmlForm;

pub const HtmlPostForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.HtmlPostForm";
    base: HtmlForm = undefined,
    

    pub fn create1(action: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HtmlForm, "create1", .{ action }).*;
        _ = Inheritance.receiver(this, "setPost").setPost();
        Inheritance.bindOverrides(this);
        return this;
    }
};

