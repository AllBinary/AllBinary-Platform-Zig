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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const RectangleAdjustedAnimation = @import("org/allbinary/animation/vector/RectangleAdjustedAnimation.zig").RectangleAdjustedAnimation;
const RectangleFilledAdjustedAnimation = @import("org/allbinary/animation/vector/RectangleFilledAdjustedAnimation.zig").RectangleFilledAdjustedAnimation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const CommandTextItem = @import("org/allbinary/graphics/form/item/CommandTextItem.zig").CommandTextItem;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const ScrollCurrentSelectionForm = @import("org/allbinary/graphics/form/ScrollCurrentSelectionForm.zig").ScrollCurrentSelectionForm;

pub const CommandCurrentSelectionForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.CommandCurrentSelectionForm";
    base: ScrollCurrentSelectionForm = undefined,
    selectedAnimationArray: []?*Animation = &.{},
    unSelectedAnimationArray: []?*Animation = &.{},
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.selectedAnimationArray = array_N65964: { const array_N65964_array = allocator.alloc(?*Animation, @intCast(16)) catch unreachable; @memset(array_N65964_array, null); break :array_N65964 array_N65964_array; };
        this.unSelectedAnimationArray = array_N66026: { const array_N66026_array = allocator.alloc(?*Animation, @intCast(16)) catch unreachable; @memset(array_N66026_array, null); break :array_N66026 array_N66026_array; };
    }
    

    pub fn create6(title: ?*String, items: []?*ABCustomItem, border: i32, moveForSmallScreen: bool, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ScrollCurrentSelectionForm, "create8", .{ title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = this.initAnimations();
        _ = Inheritance.call(this, "addAll", .{ items });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self, "updateAll", .{ graphics, Inheritance.receiver(self, "getAllitems").getAllitems() });
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
    

    pub fn initAnimations(self: *Self) void {
        const nullAnimation: ?*Animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        {
            var index: i32 = @as(i32, @intCast(self.selectedAnimationArray.len));
            while (value_N66621: { index -= 1; break :value_N66621 index; } >= 0) {
            self.selectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.selectedAnimationArray[@intCast(index)]), nullAnimation);
            }
        }
        {
            var index: i32 = @as(i32, @intCast(self.unSelectedAnimationArray.len));
            while (value_N66735: { index -= 1; break :value_N66735 index; } >= 0) {
            self.unSelectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.unSelectedAnimationArray[@intCast(index)]), nullAnimation);
            }
        }
    }
    

    pub fn addAll(self: *Self, items: []?*ABCustomItem) void {
        {
            var index: i32 = @as(i32, @intCast(items.len));
            while (value_N66880: { index -= 1; break :value_N66880 index; } >= 0) {
            _ = Inheritance.call(self, "addAt", .{ index, items[@intCast(index)] });
            }
        }
    }
    

    pub fn addAt(self: *Self, index: i32, item: ?*ABCustomItem) void {
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        const buttonColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, basicColorFactory.?.TRANSPARENT_GREY);
        const selectedButtonColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, basicColorFactory.?.TRANSPARENT_RED);
        const width: i32 = item.?.getMinimumWidth();
        const height: i32 = item.?.getMinimumHeight();
        var adjustedBorder: i32 = 3;
        const offset: i32 = -(Inheritance.fieldPointer(self, "halfBorder").* + adjustedBorder);
        const rectWidth: i32 = width + Inheritance.fieldPointer(self, "border").* - adjustedBorder;
        const rectHeight: i32 = height + Inheritance.fieldPointer(self, "border").* - adjustedBorder;
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
            self.selectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.selectedAnimationArray[@intCast(index)]), Inheritance.callStatic(RectangleAdjustedAnimation, "create5", .{ rectWidth, rectHeight, offset, offset, selectedButtonColor }));
        } else {
            self.selectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.selectedAnimationArray[@intCast(index)]), Inheritance.callStatic(RectangleFilledAdjustedAnimation, "create5", .{ rectWidth, rectHeight, offset, offset, selectedButtonColor }));
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
            self.unSelectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.unSelectedAnimationArray[@intCast(index)]), Inheritance.callStatic(RectangleAdjustedAnimation, "create5", .{ rectWidth, rectHeight, offset, offset, buttonColor }));
        } else {
            self.unSelectedAnimationArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.unSelectedAnimationArray[@intCast(index)]), Inheritance.callStatic(RectangleFilledAdjustedAnimation, "create5", .{ rectWidth, rectHeight, offset, offset, buttonColor }));
        }
    }
    

    pub fn updateAll(self: *Self, graphics: ?*Graphics, items: []?*ABCustomItem) void {
        {
            var index: i32 = @as(i32, @intCast(items.len));
            while (value_N68108: { index -= 1; break :value_N68108 index; } >= 0) {
            _ = Inheritance.call(items[@intCast(index)].?, "preMeasurement", .{ graphics });
            _ = Inheritance.call(self, "updateAt", .{ index, items[@intCast(index)] });
            }
        }
    }
    

    pub fn updateAt(self: *Self, index: i32, item: ?*ABCustomItem) void {
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        const buttonColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, basicColorFactory.?.TRANSPARENT_GREY);
        const selectedButtonColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, basicColorFactory.?.TRANSPARENT_RED);
        const width: i32 = item.?.getMinimumWidth();
        const height: i32 = item.?.getMinimumHeight();
        var adjustedBorder: i32 = 3;
        const offset: i32 = -(Inheritance.fieldPointer(self, "halfBorder").* + adjustedBorder);
        const rectWidth: i32 = width + Inheritance.fieldPointer(self, "border").* - adjustedBorder;
        const rectHeight: i32 = height + Inheritance.fieldPointer(self, "border").* - adjustedBorder;
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
            const rectangleAdjustedAnimation: ?*RectangleAdjustedAnimation = Inheritance.cast(?*RectangleAdjustedAnimation, self.selectedAnimationArray[@intCast(index)]);
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setWidth", .{ rectWidth });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setHeight", .{ rectHeight });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetX", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetY", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setBasicColorP", .{ selectedButtonColor });
        } else {
            const rectangleAdjustedAnimation: ?*RectangleFilledAdjustedAnimation = Inheritance.cast(?*RectangleFilledAdjustedAnimation, self.selectedAnimationArray[@intCast(index)]);
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setWidth", .{ rectWidth });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setHeight", .{ rectHeight });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetX", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetY", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setBasicColorP", .{ selectedButtonColor });
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
            const rectangleAdjustedAnimation: ?*RectangleAdjustedAnimation = Inheritance.cast(?*RectangleAdjustedAnimation, self.unSelectedAnimationArray[@intCast(index)]);
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setWidth", .{ rectWidth });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setHeight", .{ rectHeight });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetX", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetY", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setBasicColorP", .{ buttonColor });
        } else {
            const rectangleAdjustedAnimation: ?*RectangleFilledAdjustedAnimation = Inheritance.cast(?*RectangleFilledAdjustedAnimation, self.unSelectedAnimationArray[@intCast(index)]);
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setWidth", .{ rectWidth });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setHeight", .{ rectHeight });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetX", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setOffsetY", .{ offset });
            _ = Inheritance.call(rectangleAdjustedAnimation.?, "setBasicColorP", .{ buttonColor });
        }
    }
    

    pub fn getSelectedCommand(self: *Self) ?*Command {
        const index: i32 = self.base.getSelectedIndex();
        const commandTextItem: ?*CommandTextItem = Inheritance.cast(?*CommandTextItem, Inheritance.call(self, "get", .{ index }));
        return Inheritance.upcast(?*Command, Inheritance.receiver(commandTextItem.?, "getCommand").getCommand());
    }
    

    pub fn append(self: *Self, item: ?*ABCustomItem) i32 {
        const result: i32 = Inheritance.call(&self.base, "append", .{ item });
        _ = Inheritance.call(self, "addAt", .{ result, item });
        return result;
    }
    

    pub fn delete(self: *Self, itemNum: i32) void {
        _ = Inheritance.call(&self.base, "delete", .{ itemNum });
    }
    

    pub fn deleteAll(self: *Self) void {
        _ = self.initAnimations();
        _ = self.base.deleteAll();
    }
    

    pub fn insert(self: *Self, itemNum: i32, item: ?*ABCustomItem) void {
        _ = Inheritance.call(&self.base, "insert", .{ itemNum, item });
    }
    

    pub fn set(self: *Self, itemNum: i32, item: ?*ABCustomItem) void {
        _ = Inheritance.call(&self.base, "set", .{ itemNum, item });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
    

    // throws Exception
    pub fn paintItem(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = Inheritance.call(self.selectedAnimationArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
        return Inheritance.call(&self.base, "paintItem", .{ graphics, index, item, x, y });
    }
    

    // throws Exception
    pub fn paintUnselectedItem(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, x: i32, y: i32) i32 {
        _ = Inheritance.call(self.unSelectedAnimationArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
        return Inheritance.call(&self.base, "paintUnselectedItem", .{ graphics, index, item, x, y });
    }
};

