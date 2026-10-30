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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;

pub const FormTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.FormTypeFactory";
    UNK: ?*String = null,
    NULL_FORM_TYPE: ?*FormType = null,
    TEMP_HORIZONTAL_FORM: ?*FormType = null,
    HORIZONTAL_FORM: ?*FormType = null,
    VERTICAL_CENTER_FORM: ?*FormType = null,
    var instance: ?*FormTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FormTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.UNK = String.literal("Unknown FormType");
        this.NULL_FORM_TYPE = Inheritance.callStatic(FormType, "create1", .{ StringUtil.getInstance().?.NULL_STRING });
        this.TEMP_HORIZONTAL_FORM = Inheritance.callStatic(FormType, "create1", .{ String.literal("TempHorizontal") });
        this.HORIZONTAL_FORM = Inheritance.callStatic(FormType, "create1", .{ String.literal("Horizontal") });
        this.VERTICAL_CENTER_FORM = Inheritance.callStatic(FormType, "create1", .{ String.literal("Vertical") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FormTypeFactory {
        return Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.instance);
    }
    

    pub fn getFormType(self: *Self) ?*FormType {
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        var formType: ?*FormType = null;
        if (displayInfo.?.isPortrait()) {
            formType = self.VERTICAL_CENTER_FORM;
        } else {
            formType = self.HORIZONTAL_FORM;
        }
        return formType;
    }
};

