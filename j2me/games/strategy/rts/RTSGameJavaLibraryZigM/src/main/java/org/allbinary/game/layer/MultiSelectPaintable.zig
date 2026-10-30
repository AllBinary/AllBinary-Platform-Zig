// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;

pub const MultiSelectPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.MultiSelectPaintable";
    base: SelectionHudPaintable = undefined,
    rootNameList: ?*BasicArrayList = null,
    totalCharArray: []u16 = &.{},
    rootNamesString: ?*String = null,
    TOTAL: ?*String = null,
    backgroundColor: i32 = 0,
    totalWidth: i32 = 0,
    textLine2Y: i32 = 0,

    fn initFields(this: *Self) void {
        this.rootNameList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.totalCharArray = NullUtil.getInstance().?.NULL_CHAR_ARRAY;
        this.rootNamesString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.TOTAL = String.literal("Total Selected: ");
        this.backgroundColor = Inheritance.receiverOf(BasicColorFactory.getInstance().?.GREY.?, "intValue").intValue();
        this.totalWidth = 0;
        this.textLine2Y = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SelectionHudPaintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.totalWidth = Inheritance.call(font.?, "stringWidth", .{ self.TOTAL });
        self.textLine2Y = (Inheritance.fieldPointer(self, "y").* + font.?.getHeight());
    }
    

    pub fn update(self: *Self, list: ?*BasicArrayList) void {
        _ = self.clear();
        const size: i32 = list.?.size();
        self.totalCharArray = Inheritance.upcast(@TypeOf(self.totalCharArray), Inheritance.call(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCharArray", .{ size }));
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ index }));
            if (!Inheritance.call(self.rootNameList.?, "contains", .{ Inheritance.receiver(rtsLayer.?, "getRootName").getRootName() })) {
                _ = Inheritance.call(self.rootNameList.?, "add", .{ Inheritance.receiver(rtsLayer.?, "getRootName").getRootName() });
            }
            }
        }
        const COMMA_SEP: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.COMMA_SEP);
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = self.rootNameList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rootName: ?*String = Inheritance.cast(?*String, Inheritance.call(self.rootNameList.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ rootName });
            if (index != 0) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ COMMA_SEP });
            }
            }
        }
        self.rootNamesString = Inheritance.upcast(@TypeOf(self.rootNamesString), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn clear(self: *Self) void {
        _ = self.rootNameList.?.clear();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "setColor", .{ self.backgroundColor });
        _ = Inheritance.call(graphics.?, "drawRect", .{ Inheritance.receiver(self, "getX").getX(), Inheritance.fieldPointer(self, "y").*, Inheritance.receiver(self, "getWidth").getWidth(), Inheritance.receiver(self, "getHeight").getHeight() });
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiver(self, "getColor").getColor() });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.TOTAL, Inheritance.fieldPointer(self, "textX").*, Inheritance.fieldPointer(self, "y").*, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.totalCharArray, 0, Inheritance.receiverOf(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCurrentTotalDigits").getCurrentTotalDigits(), Inheritance.fieldPointer(self, "textX").* + self.totalWidth, Inheritance.fieldPointer(self, "y").*, 0 });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.rootNamesString, Inheritance.fieldPointer(self, "textX").*, self.textLine2Y, 0 });
    }
};

