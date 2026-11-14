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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const ScrollCurrentSelectionForm = @import("org/allbinary/graphics/form/ScrollCurrentSelectionForm.zig").ScrollCurrentSelectionForm;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const VerticalFormProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.VerticalFormProcessor";
    base: Processor = undefined,
    scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.receiver(self.scrollCurrentSelectionForm.?, "processVerticalForm").processVerticalForm();
        Inheritance.fieldPointer(self.scrollCurrentSelectionForm.?, "processor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self.scrollCurrentSelectionForm.?, "processor").*), Processor.getInstance());
    }
};

