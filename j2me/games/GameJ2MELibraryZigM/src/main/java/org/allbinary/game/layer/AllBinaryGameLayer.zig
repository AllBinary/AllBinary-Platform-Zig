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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const ViewPositionEvent = @import("org/allbinary/view/event/ViewPositionEvent.zig").ViewPositionEvent;
const ViewPositionEventListenerInterface = @import("org/allbinary/view/event/ViewPositionEventListenerInterface.zig").ViewPositionEventListenerInterface;
const GameLayerUtil = @import("org/allbinary/game/layer/GameLayerUtil.zig").GameLayerUtil;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;

pub const AllBinaryGameLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AllBinaryGameLayer";
    base: AllBinaryLayer = undefined,
    commonStrings: ?*CommonStrings = null,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    RED: ?*BasicColor = null,
    paintable: ?*Paintable = null,
    gameKeyEventList: ?*BasicArrayList = null,
    // Implements ViewPositionEventListenerInterface
    // Implements OpenGLSurfaceChangedInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.RED = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.RED);
        this.paintable = Inheritance.upcast(?*Paintable, (if (SWTUtil.isSWT) Paintable.create() // Java anonymous class body: implement it as a named type
//         this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
//         this.BLACK = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
//         
// 
//         pub fn paint(self: *Self, graphics: ?*Graphics) void {
//             _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, Inheritance.fieldPointer(self, "BLACK").* });
//         }
 else NullPaintable.getInstance()));
        this.gameKeyEventList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create3(name: ?*String, layerInfo: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryLayer, "create3", .{ name, layerInfo, viewPosition }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = gl;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn move(self: *Self) void {
        _ = self;
    }
    

    pub fn getGameKeyEventList(self: *Self) ?*BasicArrayList {
        return self.gameKeyEventList;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onViewPositionChangeEvent(self: *Self) void {
        _ = Inheritance.call(self, "onChangeEvent", .{ Inheritance.fieldPointer(self, "viewPositionEvent").* });
    }
    

    // throws Exception
    pub fn onChangeEvent(self: *Self, layerManagerEvent: ?*ViewPositionEvent) void {
        _ = layerManagerEvent;
        if (Inheritance.callStatic(GameLayerUtil, "isOnScreen", .{ self })) {
            _ = Inheritance.call(self, "setVisible", .{ true });
        } else {
            _ = Inheritance.call(self, "setVisible", .{ false });
        }
    }
    

    pub fn paintFirst(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
    }
    

    pub fn paintDebug(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.RED });
        _ = Inheritance.call(graphics.?, "drawRect", .{ viewX, viewY, Inheritance.receiver(self, "getWidth").getWidth(), Inheritance.receiver(self, "getHeight").getHeight() });
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        _ = Inheritance.call(&self.base, "setLayerWidth", .{ width });
        _ = Inheritance.call(self, "setHalfWidth", .{ width >> @intCast(1) });
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        _ = Inheritance.call(&self.base, "setLayerHeight", .{ height });
        _ = Inheritance.call(self, "setHalfHeight", .{ height >> @intCast(1) });
    }
};

