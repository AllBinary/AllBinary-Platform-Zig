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
// package org.allbinary.logic.visual.dhtml.style.css

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CssElementValidation = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementValidation.zig").CssElementValidation;

pub const CssElementValidationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(node: ?*Node) ?*ValidationInterface {
        return Inheritance.cast(?*ValidationInterface, Inheritance.callStatic(CssElementValidation, "create1", .{ node }));
    }
};

