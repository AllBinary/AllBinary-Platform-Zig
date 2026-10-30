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
// package org.allbinary.game.part

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;

pub const CountedLayerInterfaceFactoryPart = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.CountedLayerInterfaceFactoryPart";
    pub const java_interfaces = .{ PartInterface };
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    animationInterface: ?*Animation = null,
    total: i32 = 0,
    totalString: []u16 = &.{},
    xOffset: i32 = 0,
    countedPickedUpLayerInterfaceFactory: ?*CountedPickedUpLayerInterfaceFactory = null,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    // Implements PartInterface
    // Implements UpdateMyFontInterface
    pub var NULL_COUNTED_LAYER_INTERFACE_FACTORY: ?*CountedLayerInterfaceFactoryPart = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COUNTED_LAYER_INTERFACE_FACTORY = Inheritance.callStatic(CountedLayerInterfaceFactoryPart, "create2", .{ 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY });
    }

    fn initFields(this: *Self) void {
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.animationInterface = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        this.total = 0;
        this.totalString = NullUtil.getInstance().?.NULL_CHAR_ARRAY;
        this.xOffset = 0;
        this.countedPickedUpLayerInterfaceFactory = Inheritance.upcast(?*CountedPickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
        
    }
    

    pub fn create2(total: i32, countedPickedUpLayerInterfaceFactory: ?*CountedPickedUpLayerInterfaceFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 1000 }));
        _ = Inheritance.call(this, "init", .{ total, countedPickedUpLayerInterfaceFactory });
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(self, "setXOffset", .{ Inheritance.call(font.?, "charsWidth", .{ self.totalString, 0, self.primitiveLongUtil.?.getCurrentTotalDigits() }) + (font.?.getSize() >> @intCast(1)) });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn init(self: *Self, total: i32, countedPickedUpLayerInterfaceFactory: ?*CountedPickedUpLayerInterfaceFactory) void {
        _ = Inheritance.call(self, "setCountedPickedUpLayerInterfaceFactory", .{ countedPickedUpLayerInterfaceFactory });
        self.total = total;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, x: i32, y: i32, z: i32) ?*AllBinaryLayer {
        if (self.total > 0) {
            _ = Inheritance.call(self, "setTotal", .{ self.total - 1 });
            return Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(self.getCountedPickedUpLayerInterfaceFactory().?, "getNextInstance", .{ hashtable, x, y, z }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No more left. Could use a listener to automatically remove"); break :exception error.Exception; }});
        }
    }
    

    pub fn getTotal(self: *Self) i32 {
        return self.total;
    }
    

    pub fn setTotal(self: *Self, total: i32) void {
        self.total = total;
        self.totalString = Inheritance.upcast(@TypeOf(self.totalString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ total }));
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn setAnimationInterface(self: *Self, animationInterface: ?*Animation) void {
        self.animationInterface = animationInterface;
    }
    

    pub fn getXOffset(self: *Self) i32 {
        return self.xOffset;
    }
    

    pub fn setXOffset(self: *Self, totalStringWidth: i32) void {
        self.xOffset = totalStringWidth;
    }
    

    pub fn getTotalString(self: *Self) []u16 {
        return self.totalString;
    }
    

    pub fn getCountedPickedUpLayerInterfaceFactory(self: *Self) ?*CountedPickedUpLayerInterfaceFactory {
        return self.countedPickedUpLayerInterfaceFactory;
    }
    

    pub fn setCountedPickedUpLayerInterfaceFactory(self: *Self, countedPickedUpLayerInterfaceFactory: ?*CountedPickedUpLayerInterfaceFactory) void {
        self.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
    }
};

