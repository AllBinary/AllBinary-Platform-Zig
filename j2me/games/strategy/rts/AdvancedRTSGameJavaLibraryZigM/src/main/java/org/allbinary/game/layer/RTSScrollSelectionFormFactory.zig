// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const MultipleScrollSelectionHorizontalForm = @import("org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.zig").MultipleScrollSelectionHorizontalForm;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;

pub const RTSScrollSelectionFormFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSScrollSelectionFormFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(formLabel: ?*String, items: []?*ABCustomItem) ?*ScrollSelectionForm {
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        const touchButtonLocationHelper: ?*TouchButtonLocationHelper = TouchButtonLocationHelper.create();
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const menuX: i32 = CommonButtons.getInstance().?.STANDARD_BUTTON_SIZE + touchButtonLocationHelper.?.getColumnsRemainderHalf();
        const width: i32 = displayInfo.?.getLastWidth() - (menuX * 2);
        const menuRectangle: ?*Rectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(PointFactory.getInstance().?, "createXY", .{ menuX, 16 }), width, CommonButtons.getInstance().?.STANDARD_BUTTON_SIZE });
        return Inheritance.upcast(?*ScrollSelectionForm, Inheritance.callStatic(MultipleScrollSelectionHorizontalForm, "createForm", .{ formLabel, items, menuRectangle, FormTypeFactory.getInstance().?.HORIZONTAL_FORM, 0, basicColorFactory.?.BLACK, basicColorFactory.?.WHITE }));
    }
};

