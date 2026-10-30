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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const TouchFeatureFactory = @import("org/allbinary/game/configuration/feature/TouchFeatureFactory.zig").TouchFeatureFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const CommandCurrentSelectionForm = @import("org/allbinary/graphics/form/CommandCurrentSelectionForm.zig").CommandCurrentSelectionForm;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ScrollSelectionFormNoneFactory = @import("org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.zig").ScrollSelectionFormNoneFactory;

pub const CommandCurrentSelectionFormFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.CommandCurrentSelectionFormFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(title: ?*String, items: []?*ABCustomItem, rectangle: ?*Rectangle, formType: ?*FormType, border: i32, moveForSmallScreen: bool, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) ?*ScrollSelectionForm {
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ TouchFeatureFactory.getInstance().?.TOUCH_ENABLED })) {
            const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.callStatic(CommandCurrentSelectionForm, "create6", .{ title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor }));
            _ = Inheritance.call(scrollSelectionForm.?, "init", .{ rectangle, formType });
            return scrollSelectionForm;
        } else {
            return Inheritance.upcast(?*ScrollSelectionForm, ScrollSelectionFormNoneFactory.getInstance());
        }
    }
};

