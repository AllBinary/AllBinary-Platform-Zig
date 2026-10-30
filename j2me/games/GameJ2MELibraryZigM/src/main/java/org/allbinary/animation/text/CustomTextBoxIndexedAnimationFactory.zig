// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const CustomTextBox = @import("org/allbinary/graphics/form/item/CustomTextBox.zig").CustomTextBox;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ABToGBUtil = @import("org/allbinary/game/canvas/ABToGBUtil.zig").ABToGBUtil;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const CustomTextBox2 = @import("org/allbinary/animation/text/CustomTextBox2.zig").CustomTextBox2;
const CustomTextBoxIndexedAnimation = @import("org/allbinary/animation/text/CustomTextBoxIndexedAnimation.zig").CustomTextBoxIndexedAnimation;

pub const CustomTextBoxIndexedAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory";
    logUtil: ?*LogUtil = null,
    scaleProperties: ?*ScaleProperties = null,
    maxLength: i32 = 0,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create2(fontSize: i32, maxLength: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.scaleProperties = ScaleProperties.create();
        this.scaleProperties.?.scaleHeight = Inheritance.upcast(@TypeOf(this.scaleProperties.?.scaleHeight), fontSize);
        this.maxLength = maxLength;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const abToGBUtil: ?*ABToGBUtil = Inheritance.upcast(?*ABToGBUtil, ABToGBUtil.getInstance());
        const abCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, abToGBUtil.?.abCanvas);
        const font: ?*Font = Inheritance.upcast(?*Font, Inheritance.callStatic(Font, "getFont", .{ Font.FACE_SYSTEM, Font.STYLE_PLAIN, self.scaleProperties.?.scaleHeight }));
        const customTextBox: ?*CustomTextBox = Inheritance.upcast(?*CustomTextBox, Inheritance.callStatic(CustomTextBox2, "create8", .{ Inheritance.receiver(abCanvas.?, "getCustomCommandListener").getCustomCommandListener(), StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, self.maxLength, TextField.ANY, font, Inheritance.receiverOf(Inheritance.receiver(abCanvas.?, "getLayerManager").getLayerManager().?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiverOf(Inheritance.receiver(abCanvas.?, "getLayerManager").getLayerManager().?, "getForegroundBasicColor").getForegroundBasicColor() }));
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(CustomTextBoxIndexedAnimation, "create1", .{ customTextBox }));
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        const fontSize: i32 = self.scaleProperties.?.scaleHeight;
        self.scaleProperties = scaleProperties;
        if (self.scaleProperties.?.scaleHeight < 6) {
            self.scaleProperties.?.scaleHeight = Inheritance.upcast(@TypeOf(self.scaleProperties.?.scaleHeight), fontSize);
        }
    }
};

