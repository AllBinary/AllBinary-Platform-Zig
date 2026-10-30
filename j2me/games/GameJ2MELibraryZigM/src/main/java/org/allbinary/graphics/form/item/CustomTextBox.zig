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
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const PlatformKeyFactory = @import("org/allbinary/game/input/PlatformKeyFactory.zig").PlatformKeyFactory;
const RawKeyEventListener = @import("org/allbinary/game/input/event/RawKeyEventListener.zig").RawKeyEventListener;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const TextItemVisitor = @import("org/allbinary/graphics/form/item/validation/TextItemVisitor.zig").TextItemVisitor;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ABTextFieldItem = @import("org/allbinary/graphics/form/item/ABTextFieldItem.zig").ABTextFieldItem;

pub const CustomTextBox = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.CustomTextBox";
    base: GameCommandCanvas = undefined,
    textFieldItem: ?*ABTextFieldItem = null,
    inputFactory: ?*InputFactory = null,
    // Implements RawKeyEventListener

    fn initFields(this: *Self) void {
        
        this.inputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
    }
    

    pub fn create8(cmdListener: ?*CommandListener, label: ?*String, text: ?*String, maxSize: i32, constraints: i32, font: ?*Font, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = constraints;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameCommandCanvas, "create4", .{ cmdListener, label, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const textFieldItem: ?*ABTextFieldItem = Inheritance.callStatic(ABTextFieldItem, "create10", .{ this, TextItemVisitor.create(), stringUtil.?.EMPTY_STRING, stringUtil.?.EMPTY_STRING, maxSize, 0, stringUtil.?.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor });
        _ = Inheritance.call(textFieldItem.?, "setString", .{ text });
        this.textFieldItem = textFieldItem;
        _ = Inheritance.call(this, "setTitle", .{ label });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn submit(self: *Self) void {
        _ = self;
    }
    

    pub fn onEventRaw(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = repeated;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START }).?, "appendint", .{ keyCode }))), self, String.literal("onEvent") });
        _ = Inheritance.call(self, "keyPressedByDevice", .{ keyCode, deviceId });
    }
    

    pub fn keyPressed(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyPressedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyReleased(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyReleasedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyRepeated(self: *Self, keyCode: i32) void {
        _ = Inheritance.call(self, "keyRepeatedByDevice", .{ keyCode, 0 });
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = deviceId;
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "appendint", .{ keyCode }))), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.KEY_PRESSED });
            const platformKeyFactory: ?*PlatformKeyFactory = Inheritance.upcast(?*PlatformKeyFactory, PlatformKeyFactory.getInstance());
            const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(self.inputFactory.?, "getInstanceById", .{ keyCode }));
            if (Inheritance.call(platformKeyFactory.?, "isSubmission", .{ input })) {
                _ = self.submit();
            } else {
                _ = Inheritance.call(self.textFieldItem.?, "keyPressed", .{ keyCode });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.KEY_PRESSED, e });
    }
    

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "backgroundColor").* });
        _ = Inheritance.call(graphics.?, "fillRect", .{ 0, 0, Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastWidth").getLastWidth(), Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastHeight").getLastHeight() });
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "foregroundColor").* });
        if (!J2MEUtil.isJ2ME()) {
            _ = Inheritance.call(graphics.?, "drawString", .{ Inheritance.receiver(self, "getTitle").getTitle(), 8, 1, 0 });
        }
        _ = Inheritance.call(self, "paintXY", .{ graphics, 8, Inheritance.receiverOf(graphics.?.getFont().?, "getHeight").getHeight() + 2 });
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.textFieldItem.?, "paintXY", .{ graphics, x, y });
    }
    

    pub fn getTextFieldItem(self: *Self) ?*ABTextFieldItem {
        return self.textFieldItem;
    }
};

