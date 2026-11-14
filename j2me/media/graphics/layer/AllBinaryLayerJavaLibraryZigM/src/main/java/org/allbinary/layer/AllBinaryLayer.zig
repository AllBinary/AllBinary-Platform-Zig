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
const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
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
const Exception = @import("java/lang/Exception.zig").Exception;

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
        NULL_ALLBINARY_LAYER = Inheritance.callStatic(AllBinaryLayer, "create3", .{ Inheritance.fieldPointer(StringUtil.getInstance().?, "EMPTY_STRING").*, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION });
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
        this.base = Inheritance.callStatic(Layer, "create2", .{ Inheritance.receiver(rectangle.?, "getWidth").getWidth(), Inheritance.receiver(rectangle.?, "getHeight").getHeight() }).*;
        this.initFields();
        var localName: ?*String = null;
        localName = Inheritance.upcast(@TypeOf(localName), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ name }).?, "append", .{ Inheritance.fieldPointer(CommonSeps.getInstance().?, "COLON").* }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ this }))))}) catch unreachable) }))));
        this.name = localName;
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(rectangle.?, "getPoint").getPoint());
        _ = Inheritance.call(this, "setPosition", .{ point.?.getX(), point.?.getY(), point.?.getZ() });
        _ = Inheritance.call(this, "setHalfWidth", .{ (this.getWidth() >> @intCast(1)) });
        _ = Inheritance.call(this, "setHalfHeight", .{ (this.getHeight() >> @intCast(1)) });
        this.viewPosition = viewPosition;
        _ = Inheritance.call(this.viewPosition.?, "setAllbinaryLayer", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setPosition(self: *Self, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(&self.base, "setPosition", .{ x, y, z });
    }
    

    pub fn moveDXYZ(self: *Self, dx: i32, dy: i32, dz: i32) void {
        _ = Inheritance.call(&self.base, "moveDXYZ", .{ dx, dy, dz });
    }
    

    pub fn getXP(self: *Self) i32 {
        return Inheritance.receiver(&self.base, "getXP").getXP();
    }
    

    pub fn getYP(self: *Self) i32 {
        return Inheritance.receiver(&self.base, "getYP").getYP();
    }
    

    pub fn getZP(self: *Self) i32 {
        return Inheritance.receiver(&self.base, "getZP").getZP();
    }
    

    pub fn getWidth(self: *Self) i32 {
        return Inheritance.receiver(&self.base, "getWidth").getWidth();
    }
    

    pub fn getHeight(self: *Self) i32 {
        return Inheritance.receiver(&self.base, "getHeight").getHeight();
    }
    

    pub fn setVisible(self: *Self, visible: bool) void {
        _ = Inheritance.call(&self.base, "setVisible", .{ visible });
    }
    

    pub fn isVisible(self: *Self) bool {
        return Inheritance.receiver(&self.base, "isVisible").isVisible();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
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
        return self.getXP() + self.getWidth();
    }
    

    pub fn getY2(self: *Self) i32 {
        return self.getYP() + self.getHeight();
    }
    

    pub fn getZ2(self: *Self) i32 {
        return Inheritance.number(i32, (self.getZP() + Inheritance.receiver(self, "getDepth").getDepth()));
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
        return @divTrunc(Inheritance.number(i32, Inheritance.receiver(self, "getDepth").getDepth()), 2);
    }
    

    pub fn getViewPosition(self: *Self) ?*ViewPositionBase {
        return self.viewPosition;
    }
    

    pub fn setViewPosition(self: *Self, viewPosition: ?*ViewPositionBase) void {
        self.viewPosition = viewPosition;
    }
    

    pub fn getGroupInterface(self: *Self) []?*Group {
        _ = self;
        return Inheritance.fieldPointer(BasicGroupFactory.getInstance().?, "NONE_ARRAY").*;
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
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "COLON").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AllBinaryLayer.TYPE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getType() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(positionStrings.?, "X_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getXP() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(positionStrings.?, "Y_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getYP() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(positionStrings.?, "Z_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getZP() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonLabels.?, "WIDTH_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getWidth() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonLabels.?, "HEIGHT_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getHeight() });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self, "toStringAppend", .{ stringBuffer });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

