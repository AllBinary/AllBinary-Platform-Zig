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
// package org.allbinary.game.layer.building

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const NumberStringHud = @import("org/allbinary/game/ag/layer/hud/basic/NumberStringHud.zig").NumberStringHud;
const NumberStringHudFactory = @import("org/allbinary/game/ag/layer/hud/basic/NumberStringHudFactory.zig").NumberStringHudFactory;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;

pub const BuildingInfoHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.building.BuildingInfoHudPaintable";
    base: SelectionHudPaintable = undefined,
    logUtil: ?*LogUtil = null,
    HEALTH: ?*String = null,
    productivityHud: ?*NumberStringHud = null,
    efficiencyHud: ?*NumberStringHud = null,
    healthHud: ?*NumberStringHud = null,
    maxHealthHud: ?*NumberStringHud = null,
    rtsLayer: ?*PathFindingLayerInterface = null,
    currentHealth: i32 = 0,
    var instance: ?*BuildingInfoHudPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BuildingInfoHudPaintable.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.HEALTH = String.literal("Health:");
        
        
        
        
        this.rtsLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
        this.currentHealth = 0;
    }
    

    pub fn getInstance() ?*BuildingInfoHudPaintable {
        return Inheritance.upcast(?*BuildingInfoHudPaintable, BuildingInfoHudPaintable.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SelectionHudPaintable.create().*;
        this.initFields();
        const numberStringHudFactory: ?*NumberStringHudFactory = Inheritance.upcast(?*NumberStringHudFactory, NumberStringHudFactory.getInstance());
        var productivityHud: ?*NumberStringHud = Inheritance.upcast(?*NumberStringHud, numberStringHudFactory.?.NULL_NUMBER_STRING_HUD);
        var efficiencyHud: ?*NumberStringHud = Inheritance.upcast(?*NumberStringHud, numberStringHudFactory.?.NULL_NUMBER_STRING_HUD);
        var healthHud: ?*NumberStringHud = Inheritance.upcast(?*NumberStringHud, numberStringHudFactory.?.NULL_NUMBER_STRING_HUD);
        var maxHealthHud: ?*NumberStringHud = Inheritance.upcast(?*NumberStringHud, numberStringHudFactory.?.NULL_NUMBER_STRING_HUD);
        { // try
            var index: i32 = 0;
            const basicHudFactory: ?*BasicHudFactory = Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.getInstance());
            const basicColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, Inheritance.receiver(this, "getBasicColorP").getBasicColorP());
            const textX: i32 = Inheritance.fieldPointer(this, "textX").*;
            const y: i32 = Inheritance.fieldPointer(this, "y").*;
            const firstIndex: i32 = index;
            const ProductivityNumberStringHud = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.game.layer.building.ProductivityNumberStringHud";
                base: NumberStringHud = undefined,
                

                pub fn create() *Self {
                    const this = allocator.create(Self) catch unreachable;
                    this.* = .{};
                    this.base = Inheritance.callStatic(SelectionHudPaintable, "create6", .{ String.literal("Productivity:"), 999, Inheritance.fieldPointer(this, "basicHudFactory").*.?.ABSOLUTE, Inheritance.fieldPointer(this, "basicHudFactory").*.?.HORIZONTAL, 0, Inheritance.fieldPointer(this, "basicColor").* }).*;
                    Inheritance.bindOverrides(this);
                    return this;
                }
                

                pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
                    const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
                    Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), Inheritance.fieldPointer(self, "textX").*);
                    Inheritance.fieldPointer(self, "updateMaxHeight").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxHeight").*), Inheritance.fieldPointer(self, "y").* + ((Inheritance.fieldPointer(self, "firstIndex").* + 1) * font.?.getHeight()));
                    _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
                }
            };
            productivityHud = Inheritance.upcast(@TypeOf(productivityHud), ProductivityNumberStringHud.create());
            index += 1;
            const secondIndex: i32 = index;
            const EfficiencyNumberStringHud = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.game.layer.building.EfficiencyNumberStringHud";
                base: NumberStringHud = undefined,
                

                pub fn create() *Self {
                    const this = allocator.create(Self) catch unreachable;
                    this.* = .{};
                    this.base = Inheritance.callStatic(SelectionHudPaintable, "create6", .{ String.literal("Efficiency:"), 999, Inheritance.fieldPointer(this, "basicHudFactory").*.?.ABSOLUTE, Inheritance.fieldPointer(this, "basicHudFactory").*.?.HORIZONTAL, 0, Inheritance.fieldPointer(this, "basicColor").* }).*;
                    Inheritance.bindOverrides(this);
                    return this;
                }
                

                pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
                    _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
                    const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
                    Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), Inheritance.fieldPointer(self, "textX").*);
                    Inheritance.fieldPointer(self, "updateMaxHeight").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxHeight").*), Inheritance.fieldPointer(self, "y").* + ((Inheritance.fieldPointer(self, "secondIndex").* + 1) * font.?.getHeight()));
                }
            };
            efficiencyHud = Inheritance.upcast(@TypeOf(efficiencyHud), EfficiencyNumberStringHud.create());
            index += 1;
            const HEALTH: ?*String = this.HEALTH;
            const thirdIndex: i32 = index;
            const HealthNumberStringHud = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.game.layer.building.HealthNumberStringHud";
                base: NumberStringHud = undefined,
                

                pub fn create() *Self {
                    const this = allocator.create(Self) catch unreachable;
                    this.* = .{};
                    this.base = Inheritance.callStatic(SelectionHudPaintable, "create6", .{ this.HEALTH, 99999, Inheritance.fieldPointer(this, "basicHudFactory").*.?.ABSOLUTE, Inheritance.fieldPointer(this, "basicHudFactory").*.?.HORIZONTAL, 0, Inheritance.fieldPointer(this, "basicColor").* }).*;
                    Inheritance.bindOverrides(this);
                    return this;
                }
                

                pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
                    const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
                    Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), Inheritance.fieldPointer(self, "textX").*);
                    Inheritance.fieldPointer(self, "updateMaxHeight").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxHeight").*), Inheritance.fieldPointer(self, "y").* + ((Inheritance.fieldPointer(self, "thirdIndex").* + 1) * font.?.getHeight()));
                    _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
                }
            };
            const totalLength: i32 = HEALTH.?.length() + 1;
            healthHud = Inheritance.upcast(@TypeOf(healthHud), HealthNumberStringHud.create());
            const fourthIndex: i32 = index;
            const MaxHealthNumberStringHud = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.game.layer.building.MaxHealthNumberStringHud";
                base: NumberStringHud = undefined,
                

                pub fn create() *Self {
                    const this = allocator.create(Self) catch unreachable;
                    this.* = .{};
                    this.base = Inheritance.callStatic(SelectionHudPaintable, "create6", .{ String.literal("/ "), 99999, Inheritance.fieldPointer(this, "basicHudFactory").*.?.ABSOLUTE, Inheritance.fieldPointer(this, "basicHudFactory").*.?.HORIZONTAL, 0, Inheritance.fieldPointer(this, "basicColor").* }).*;
                    Inheritance.bindOverrides(this);
                    return this;
                }
                

                pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
                    _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
                    const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
                    Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), Inheritance.fieldPointer(self, "textX").* + (Inheritance.fieldPointer(self, "totalLength").* * font.?.getHeight()));
                    Inheritance.fieldPointer(self, "updateMaxHeight").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxHeight").*), Inheritance.fieldPointer(self, "y").* + ((Inheritance.fieldPointer(self, "fourthIndex").* + 1) * font.?.getHeight()));
                }
            };
            maxHealthHud = Inheritance.upcast(@TypeOf(maxHealthHud), MaxHealthNumberStringHud.create());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        this.productivityHud = productivityHud;
        this.efficiencyHud = efficiencyHud;
        this.healthHud = healthHud;
        this.maxHealthHud = maxHealthHud;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        const totalLength: i32 = self.HEALTH.?.length() + Inheritance.call(MathUtil.getInstance().?, "getTotalDigits", .{ self.currentHealth });
        _ = Inheritance.call(self.maxHealthHud.?, "setX", .{ Inheritance.fieldPointer(self, "textX").* + Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, totalLength }) });
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), MyFontProcessor.getInstance());
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(self.productivityHud.?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(self.efficiencyHud.?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(self.healthHud.?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(self.maxHealthHud.?, "setBasicColorP", .{ basicColor });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        _ = Inheritance.call(self.productivityHud.?, "paint", .{ graphics });
        _ = Inheritance.call(self.efficiencyHud.?, "paint", .{ graphics });
        _ = Inheritance.call(self.healthHud.?, "paint", .{ graphics });
        _ = Inheritance.call(self.maxHealthHud.?, "paint", .{ graphics });
        _ = Inheritance.call(Inheritance.receiver(self, "getAnimationInterface").getAnimationInterface().?, "paintXY", .{ graphics, Inheritance.fieldPointer(self, "imageX").*, Inheritance.fieldPointer(self, "y").* });
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        const buildingLayer: ?*BuildingLayer = Inheritance.cast(?*BuildingLayer, self.rtsLayer);
        _ = Inheritance.call(self, "setName", .{ Inheritance.receiver(buildingLayer.?, "getName").getName() });
        _ = Inheritance.call(self, "setAnimationInterface", .{ Inheritance.receiver(buildingLayer.?, "getVerticleBuildAnimationInterface").getVerticleBuildAnimationInterface() });
        _ = Inheritance.call(self.productivityHud.?, "set", .{ Inheritance.receiver(buildingLayer.?, "getProductivity").getProductivity() });
        _ = Inheritance.call(self.efficiencyHud.?, "set", .{ (divide_N70037: { const left_N70037 = Inheritance.receiver(buildingLayer.?, "getEfficiency").getEfficiency(); const right_N70037 = 100; break :divide_N70037 if (comptime @typeInfo(@TypeOf(left_N70037)) == .int or @TypeOf(left_N70037) == comptime_int) @divTrunc(left_N70037, right_N70037) else left_N70037 / right_N70037; }) });
        self.currentHealth = Inheritance.receiverOf(Inheritance.receiver(buildingLayer.?, "getHealthInterface").getHealthInterface().?, "getHealth").getHealth();
        _ = Inheritance.call(self.healthHud.?, "set", .{ self.currentHealth });
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
        _ = Inheritance.call(self.maxHealthHud.?, "set", .{ Inheritance.receiverOf(Inheritance.receiver(buildingLayer.?, "getHealthInterface").getHealthInterface().?, "getMaxHealth").getMaxHealth() });
    }
    

    pub fn setRtsLayer(self: *Self, rtsLayer: ?*PathFindingLayerInterface) void {
        self.rtsLayer = rtsLayer;
    }
};

