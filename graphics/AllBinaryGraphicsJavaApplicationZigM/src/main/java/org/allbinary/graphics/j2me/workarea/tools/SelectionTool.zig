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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const CanvasJPanel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel.zig").CanvasJPanel;
const IntegerDimension = @import("org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension.zig").IntegerDimension;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const RectangleCollisionPointUtil = @import("org/allbinary/math/RectangleCollisionPointUtil.zig").RectangleCollisionPointUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const MouseStrings = @import("org/allbinary/graphics/j2me/workarea/tools/MouseStrings.zig").MouseStrings;
const Points = @import("org/allbinary/graphics/j2me/workarea/tools/Points.zig").Points;
const Double = @import("java/lang/Double.zig").Double;

pub const SelectionTool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.SelectionTool";
    pub const java_interfaces = .{ GraphicItemInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    canvasJPanel: ?*CanvasJPanel = null,
    active: bool = false,
    controlIdDown: bool = false,
    rectColor: ?*Color = null,
    startPoint: ?*GPoint = null,
    endPoint: ?*GPoint = null,
    // Implements GraphicItemInterface
    const NAME: ?*String = String.literal("Selection Tool");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.active = true;
        this.controlIdDown = false;
        this.rectColor = Inheritance.callStatic(Color, "create1", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue() });
        this.startPoint = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.endPoint = this.startPoint;
    }
    

    pub fn create1(canvasJPanel: ?*CanvasJPanel) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.canvasJPanel = canvasJPanel;
        return this;
    }
    

    pub fn setColor(self: *Self, color: ?*Color) void {
        _ = color;
        _ = self;
    }
    

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        _ = self;
        return null;
    }
    

    pub fn getPointsInterface(self: *Self) ?*Points {
        _ = self;
        return null;
    }
    

    pub fn setPointsInterface(self: *Self, points: ?*Points) void {
        _ = points;
        _ = self;
    }
    

    pub fn isValid(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn isActive(self: *Self) bool {
        return self.active;
    }
    

    pub fn deactivate(self: *Self) void {
        _ = self;
    }
    

    pub fn activate(self: *Self) void {
        _ = self;
    }
    

    pub fn setFulcrumPoint(self: *Self, point: ?*GPoint) void {
        _ = point;
        _ = self;
    }
    

    // throws Exception
    pub fn translate(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn setRotate(self: *Self, theta: f64) void {
        _ = theta;
        _ = self;
    }
    

    pub fn addRotate(self: *Self, theta: f64) void {
        _ = theta;
        _ = self;
    }
    

    pub fn setAngle(self: *Self, angle: f64) void {
        _ = angle;
        _ = self;
    }
    

    pub fn addAngle(self: *Self, angle: f64) void {
        _ = angle;
        _ = self;
    }
    

    pub fn getAngle(self: *Self) f64 {
        _ = self;
        return 0.0;
    }
    

    pub fn makeSelection(self: *Self) void {
        const xRect: i32 = self.getXRect();
        const xRect2: i32 = @abs(self.endPoint.?.getX() - self.startPoint.?.getX()) + xRect;
        const yRect: i32 = self.getYRect();
        const yRect2: i32 = @abs(self.endPoint.?.getY() - self.startPoint.?.getY()) + yRect;
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.canvasJPanel.?, "getGraphicItemHashMap").getGraphicItemHashMap());
        const graphicItemArray: []?Object = Inheritance.receiverOf(hashMap.?.keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(hashMap.?, "get", .{ graphicItemArray[@intCast(index)] }));
            if (Object.same(item.?.getName(), LinesGraphicItem.getStaticName())) {
                if (Inheritance.callStatic(RectangleCollisionPointUtil, "allPointsInsideCell", .{ xRect, yRect, xRect2, yRect2, Inheritance.receiverOf(item.?.getPointsInterface().?, "getPoints").getPoints(), Inheritance.receiver(self.canvasJPanel.?, "getXPixelsPerWorkAreaPixel").getXPixelsPerWorkAreaPixel(), Inheritance.receiver(self.canvasJPanel.?, "getYPixelsPerWorkAreaPixel").getYPixelsPerWorkAreaPixel() })) {
                    _ = Inheritance.call(item.?, "setColor", .{ Color.YELLOW });
                    _ = item.?.activate();
                } else if (!self.controlIdDown) {
                    _ = Inheritance.call(item.?, "setColor", .{ Color.WHITE });
                    _ = item.?.deactivate();
                }
            }
            }
        }
    }
    

    pub fn getXRect(self: *Self) i32 {
        const xDiff: i32 = self.endPoint.?.getX() - self.startPoint.?.getX();
        var xRect: i32 = self.startPoint.?.getX();
        if (xDiff < 0) {
            xRect = self.endPoint.?.getX();
        }
        return xRect;
    }
    

    pub fn getYRect(self: *Self) i32 {
        const yDiff: i32 = self.endPoint.?.getY() - self.startPoint.?.getY();
        var yRect: i32 = self.startPoint.?.getY();
        if (yDiff < 0) {
            yRect = self.endPoint.?.getY();
        }
        return yRect;
    }
    

    pub fn paint(self: *Self, g: ?*Graphics, canvasAngle: ?*Double, dimension: ?*IntegerDimension, x: i32, y: i32) void {
        _ = canvasAngle;
        _ = dimension;
        _ = x;
        _ = y;
        _ = Inheritance.call(g.?, "setColor", .{ self.rectColor });
        const xRect: i32 = self.getXRect();
        const width: i32 = @abs(self.endPoint.?.getX() - self.startPoint.?.getX());
        const yRect: i32 = self.getYRect();
        const height: i32 = @abs(self.endPoint.?.getY() - self.startPoint.?.getY());
        _ = Inheritance.call(g.?, "drawRect", .{ xRect, yRect, width, height });
    }
    

    // throws Exception
    pub fn toDom(self: *Self, canvasDom: ?*CanvasDom) ?*Node {
        _ = canvasDom;
        _ = self;
        return null;
    }
    

    pub fn removePoint(self: *Self) ?*GPoint {
        _ = self;
        return null;
    }
    

    pub fn addPoint(self: *Self, point: ?*GPoint) void {
        _ = point;
        _ = self;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, SelectionTool.NAME);
    }
    

    pub fn getStaticName() ?*String {
        return Inheritance.upcast(?*String, SelectionTool.NAME);
    }
    

    pub fn mouseClicked(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = mouseEvent;
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = self;
    }
    

    pub fn mouseMoved(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = mouseEvent;
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = self;
    }
    

    pub fn mouseEntered(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = mouseEvent;
        _ = self;
    }
    

    pub fn mouseExited(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = mouseEvent;
        _ = self;
    }
    

    pub fn mousePressed(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, MouseStrings.getInstance().?.MOUSE_PRESSED });
        self.startPoint = Inheritance.upcast(@TypeOf(self.startPoint), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ mouseEvent.?.getX(), mouseEvent.?.getY() }));
        self.endPoint = self.startPoint;
    }
    

    pub fn mouseReleased(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, MouseStrings.getInstance().?.MOUSE_RELEASED });
        self.endPoint = Inheritance.upcast(@TypeOf(self.endPoint), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ mouseEvent.?.getX(), mouseEvent.?.getY() }));
        self.active = false;
        _ = self.makeSelection();
    }
    

    pub fn mouseDragged(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        self.endPoint = Inheritance.upcast(@TypeOf(self.endPoint), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ mouseEvent.?.getX(), mouseEvent.?.getY() }));
    }
    

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        if (Object.same(keyEvent.?.getKeyCode(), keyEvent.?.VK_CONTROL)) {
            self.controlIdDown = true;
        }
    }
    

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        if (Object.same(keyEvent.?.getKeyCode(), keyEvent.?.VK_CONTROL)) {
            self.controlIdDown = false;
        }
    }
    

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn duplicate(self: *Self) ?*GraphicItemInterface {
        _ = self;
        return null;
    }
};

