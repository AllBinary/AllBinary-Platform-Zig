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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const ViewPositionEvent = @import("org/allbinary/view/event/ViewPositionEvent.zig").ViewPositionEvent;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const LayerInterface = @import("org/allbinary/layer/LayerInterface.zig").LayerInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.AllBinaryLayer";
    pub const java_interfaces = .{ LayerInterface };
    base: Layer = undefined,
    viewPositionEvent: ?*ViewPositionEvent = null,
    halfWidth: i32 = 0,
    halfHeight: i32 = 0,
    name: ?*String = null,
    viewPosition: ?*ViewPositionBase = null,
    // Implements LayerInterface
    pub var NULL_ALLBINARY_LAYER: ?*AllBinaryLayer = undefined;
    const TYPE: ?*String = String.literal("Type: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ALLBINARY_LAYER = Inheritance.callStatic(AllBinaryLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION });
    }

    fn initFields(this: *Self) void {
        this.viewPositionEvent = Inheritance.callStatic(ViewPositionEvent, "create1", .{ this });
        this.halfWidth = 0;
        this.halfHeight = 0;
        
        this.viewPosition = Inheritance.upcast(?*ViewPositionBase, ViewPositionBase.NULL_VIEW_POSITION);
    }
    

    pub fn create3(name: ?*String, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Layer, "create2", .{ rectangle.?.getWidth(), rectangle.?.getHeight() }).*;
        this.initFields();
        var localName: ?*String = null;
        if (name == null) {
            localName = Inheritance.upcast(@TypeOf(localName), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?))).name));
        } else {
            localName = Inheritance.upcast(@TypeOf(localName), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ name }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ this }))))}) catch unreachable) }))));
        }
        this.name = localName;
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, rectangle.?.getPoint());
        _ = Inheritance.call(this, "setPosition", .{ point.?.getX(), point.?.getY(), point.?.getZ() });
        _ = Inheritance.call(this, "setHalfWidth", .{ (Inheritance.receiver(this, "getWidth").getWidth() >> @intCast(1)) });
        _ = Inheritance.call(this, "setHalfHeight", .{ (Inheritance.receiver(this, "getHeight").getHeight() >> @intCast(1)) });
        this.viewPosition = viewPosition;
        _ = Inheritance.call(this.viewPosition.?, "setAllbinaryLayer", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn onChangeEvent(self: *Self, layerManagerEvent: ?*ViewPositionEvent) void {
        _ = layerManagerEvent;
        _ = self;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getX2(self: *Self) i32 {
        return Inheritance.receiver(self, "getXP").getXP() + Inheritance.receiver(self, "getWidth").getWidth();
    }
    

    pub fn getY2(self: *Self) i32 {
        return Inheritance.receiver(self, "getYP").getYP() + Inheritance.receiver(self, "getHeight").getHeight();
    }
    

    pub fn getZ2(self: *Self) i32 {
        return @as(i32, @intCast((Inheritance.receiver(self, "getZP").getZP() + Inheritance.receiver(self, "getDepth").getDepth())));
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setHalfWidth(self: *Self, halfWidth: i32) void {
        self.halfWidth = halfWidth;
    }
    

    pub fn getHalfWidth(self: *Self) i32 {
        return self.halfWidth;
    }
    

    pub fn setHalfHeight(self: *Self, halfHeight: i32) void {
        self.halfHeight = halfHeight;
    }
    

    pub fn getHalfHeight(self: *Self) i32 {
        return self.halfHeight;
    }
    

    pub fn getHalfDepth(self: *Self) i32 {
        return @divTrunc(@as(i32, @intCast(Inheritance.receiver(self, "getDepth").getDepth())), 2);
    }
    

    pub fn getViewPosition(self: *Self) ?*ViewPositionBase {
        return self.viewPosition;
    }
    

    pub fn setViewPosition(self: *Self, viewPosition: ?*ViewPositionBase) void {
        self.viewPosition = viewPosition;
    }
    

    pub fn getGroupInterface(self: *Self) []?*Group {
        _ = self;
        return BasicGroupFactory.getInstance().?.NONE_ARRAY;
    }
    

    pub fn implmentsTickableInterface(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn implmentsGameInputInterface(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn implmentsArtificialIntelligenceCompositeInterface(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn implmentsCollidableInterface(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn implementsThreedInterface(self: *Self) bool {
        _ = self;
        return Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed();
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn getMultiPlayerType(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn toStringAppend(self: *Self, stringBuffer: ?*StringMaker) void {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const positionStrings: ?*PositionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COLON });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AllBinaryLayer.TYPE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getType() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getXP").getXP())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getYP").getYP())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Z_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getZP").getZP())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getWidth").getWidth())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getHeight").getHeight())) });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self, "toStringAppend", .{ stringBuffer });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

