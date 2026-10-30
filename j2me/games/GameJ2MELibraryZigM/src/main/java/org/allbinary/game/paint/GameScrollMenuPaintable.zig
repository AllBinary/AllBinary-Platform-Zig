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
// package org.allbinary.game.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ColorChangeEventHandler = @import("org/allbinary/graphics/color/ColorChangeEventHandler.zig").ColorChangeEventHandler;
const ColorChangeListener = @import("org/allbinary/graphics/color/ColorChangeListener.zig").ColorChangeListener;
const FormPaintable = @import("org/allbinary/graphics/form/FormPaintable.zig").FormPaintable;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ABStringComponent = @import("org/allbinary/graphics/form/item/ABStringComponent.zig").ABStringComponent;
const ABTextItem = @import("org/allbinary/graphics/form/item/ABTextItem.zig").ABTextItem;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicGameDemoPaintable = @import("org/allbinary/game/paint/BasicGameDemoPaintable.zig").BasicGameDemoPaintable;
const MainGameDemoStatePaintable = @import("org/allbinary/game/paint/MainGameDemoStatePaintable.zig").MainGameDemoStatePaintable;

pub const GameScrollMenuPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.GameScrollMenuPaintable";
    base: BasicGameDemoPaintable = undefined,
    // Implements ColorChangeListener
    

    pub fn create4(mainDemoStatePaintable: ?*Paintable, ownershipPaintable: ?*Paintable, helpPaintableInterface: ?*Paintable, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicGameDemoPaintable, "create3", .{ mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface }).*;
        _ = Inheritance.call(this, "setColor", .{ basicColor });
        _ = Inheritance.call(ColorChangeEventHandler.getInstance().?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setState(self: *Self, state: i32) void {
        _ = state;
        _ = Inheritance.call(self, "setCurrentStatePaintable", .{ Inheritance.receiver(self, "getMainDemoStatePaintable").getMainDemoStatePaintable() });
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = self;
    }
    

    pub fn setColor(self: *Self, basicColor: ?*BasicColor) void {
        const mainGameDemoStatePaintable: ?*MainGameDemoStatePaintable = Inheritance.cast(?*MainGameDemoStatePaintable, Inheritance.receiver(self, "getMainDemoStatePaintable").getMainDemoStatePaintable());
        const formPaintable: ?*FormPaintable = Inheritance.cast(?*FormPaintable, Inheritance.receiver(mainGameDemoStatePaintable.?, "getMenuPaintableInterface").getMenuPaintableInterface());
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.cast(?*ScrollSelectionForm, Inheritance.receiver(formPaintable.?, "getForm").getForm());
        _ = Inheritance.call(Inheritance.receiver(mainGameDemoStatePaintable.?, "getOwnershipPaintableInterface").getOwnershipPaintableInterface().?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(scrollSelectionForm.?, "setButtonBasicColor", .{ basicColor });
        var item: ?*ABTextItem = null;
        var stringComponent: ?*ABStringComponent = null;
        {
            var index: i32 = Inheritance.receiver(scrollSelectionForm.?, "size").size() - 1;
            while (index >= 0) : (index -= 1) {
            item = Inheritance.cast(?*ABTextItem, Inheritance.call(scrollSelectionForm.?, "get", .{ index }));
            stringComponent = Inheritance.upcast(@TypeOf(stringComponent), Inheritance.receiver(item.?, "getLabelStringComponent").getLabelStringComponent());
            if (stringComponent != null) {
                _ = Inheritance.call(stringComponent.?, "setForegroundBasicColor", .{ basicColor });
            }
            }
        }
    }
};

