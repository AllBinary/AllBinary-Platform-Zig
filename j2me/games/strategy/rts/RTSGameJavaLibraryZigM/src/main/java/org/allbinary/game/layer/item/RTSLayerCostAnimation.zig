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
// package org.allbinary.game.layer.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const CostLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/CostLayerInterfaceFactoryInterface.zig").CostLayerInterfaceFactoryInterface;
const TechEventListenerInterface = @import("org/allbinary/game/rts/technology/event/TechEventListenerInterface.zig").TechEventListenerInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;

pub const RTSLayerCostAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.item.RTSLayerCostAnimation";
    base: Animation = undefined,
    logUtil: ?*LogUtil = null,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    DOLLAR: ?*String = null,
    image: ?*Image = null,
    layerInterfaceFactoryInterface: ?*CostLayerInterfaceFactoryInterface = null,
    myFontProcessor: ?*MyFontProcessor = null,
    costString: []u16 = &.{},
    len: i32 = 0,
    adjustedCostX: i32 = 0,
    fontHeight: i32 = 0,
    // Implements TechEventListenerInterface
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.primitiveLongUtil = Inheritance.upcast(?*PrimitiveLongUtil, Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 10000 }));
        this.DOLLAR = String.literal("$");
        
        
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.costString = NullUtil.getInstance().?.NULL_CHAR_ARRAY;
        this.len = 0;
        this.adjustedCostX = 0;
        this.fontHeight = 0;
    }
    

    pub fn create2(image: ?*Image, layerInterfaceFactoryInterface: ?*CostLayerInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.image = image;
        this.layerInterfaceFactoryInterface = layerInterfaceFactoryInterface;
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.adjustedCostX = Inheritance.call(font.?, "stringWidth", .{ self.DOLLAR });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn onEvent(self: *Self, event: ?*AllBinaryEventObject) void {
        _ = event;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onTechEvent(self: *Self, event: ?*AllBinaryEventObject) void {
        _ = event;
        { // try
            _ = self.update();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("onTechEvent"), e });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        self.len = 0;
        self.costString = Inheritance.upcast(@TypeOf(self.costString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ Inheritance.receiver(self.layerInterfaceFactoryInterface.?, "getCost").getCost() }));
        self.len = self.primitiveLongUtil.?.getCurrentTotalDigits();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x, y });
        const adjustedCostY: i32 = self.image.?.getHeight() - self.fontHeight;
        const xa: i32 = x + 2;
        _ = Inheritance.call(graphics.?, "drawString", .{ self.DOLLAR, xa, y + adjustedCostY, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.costString, 0, self.len, x + self.adjustedCostX, y + adjustedCostY, 0 });
    }
};

