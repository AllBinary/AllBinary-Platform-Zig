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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const SWTJOGLProcessor = @import("org/allbinary/graphics/threed/SWTJOGLProcessor.zig").SWTJOGLProcessor;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TextChangeListener = @import("org/allbinary/animation/text/TextChangeListener.zig").TextChangeListener;

pub const TextAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.TextAnimation";
    base: IndexedAnimation = undefined,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    textArrayP: []?*String = &.{},
    anchor: i32 = 0,
    fontHeight: i32 = 0,
    offsetY: i32 = 0,
    textChangeListener: ?*TextChangeListener = null,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.textArrayP = StringUtil.getInstance().?.ONE_EMPTY_STRING_ARRAY;
        this.anchor = Anchor.TOP_LEFT;
        this.fontHeight = 0;
        this.offsetY = 0;
        this.textChangeListener = Inheritance.upcast(?*TextChangeListener, TextChangeListener.getInstance());
    }
    

    pub fn create2(text: ?*String, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "setText", .{ text });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        const adjustedFontHeight: i32 = @as(i32, @intFromFloat(-(@as(f64, @floatFromInt(self.fontHeight)) * 2.00)));
        self.offsetY = (if (Inheritance.receiverOf(SWTJOGLProcessor.getInstance().?, "isJOGL").isJOGL()) adjustedFontHeight else 0);
        _ = self.textChangeListener.?.onMeasure();
        self.textChangeListener = Inheritance.upcast(@TypeOf(self.textChangeListener), TextChangeListener.getInstance());
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self, "paintXYNoUpdate", .{ graphics, x, y });
    }
    

    pub fn paintXYNoUpdate(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
        const size: i32 = @as(i32, @intCast(self.textArrayP.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(graphics.?, "drawString", .{ self.textArrayP[@intCast(index)], x, y + self.offsetY + (index * self.fontHeight), self.anchor });
            }
        }
    }
    

    pub fn setTextWithOnMeasure(self: *Self, text: ?*String, textChangeListener: ?*TextChangeListener) void {
        _ = Inheritance.call(self, "setText", .{ text });
        self.textChangeListener = textChangeListener;
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        if (text != null and text.?.length() > 0) {
            var index: i32 = 0;
            var startIndex: i32 = 0;
            var endIndex: i32 = 0;
            while (index >= 0) {
                startIndex = index;
                index = text.?.indexOf2('\n', startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = text.?.length();
                }
                _ = Inheritance.call(list.?, "add", .{ text.?.substring2(startIndex, endIndex) });
                if (index < 0) {
                    break;
                }
                index += 1;
            }
        }
        if (list.?.size() > 0) {
            const textArray: []?*String = array_N68056: { const array_N68056_array = allocator.alloc(?*String, @intCast(list.?.size())) catch unreachable; @memset(array_N68056_array, null); break :array_N68056 array_N68056_array; };
            const size: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                textArray[@intCast(index)] = Inheritance.cast(?*String, Inheritance.call(list.?, "get", .{ index }));
                }
            }
            self.textArrayP = textArray;
        } else {
            self.textArrayP = Inheritance.upcast(@TypeOf(self.textArrayP), StringUtil.getInstance().?.ONE_EMPTY_STRING_ARRAY);
        }
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn getTextArray(self: *Self) []?*String {
        return self.textArrayP;
    }
    

    pub fn getFontHeight(self: *Self) i32 {
        return self.fontHeight;
    }
};

