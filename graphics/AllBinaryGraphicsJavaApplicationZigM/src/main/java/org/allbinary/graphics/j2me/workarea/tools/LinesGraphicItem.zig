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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const DomHelper = @import("org/allbinary/dom/DomHelper.zig").DomHelper;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const StatusFactory = @import("org/allbinary/graphics/j2me/StatusFactory.zig").StatusFactory;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const IntegerDimension = @import("org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension.zig").IntegerDimension;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const Points = @import("org/allbinary/graphics/j2me/workarea/tools/Points.zig").Points;
const PointsDomUtil = @import("org/allbinary/graphics/j2me/workarea/tools/PointsDomUtil.zig").PointsDomUtil;
const PointsUtil = @import("org/allbinary/graphics/j2me/workarea/tools/PointsUtil.zig").PointsUtil;
const Integer = @import("java/lang/Integer.zig").Integer;
const Double = @import("java/lang/Double.zig").Double;

pub const LinesGraphicItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem";
    pub const java_interfaces = .{ GraphicItemInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameInputStrings: ?*GameInputStrings = null,
    treeNode: ?*DefaultMutableTreeNode = null,
    pointTreeNodeVector: ?*BasicArrayList = null,
    currentMousePoint: ?*GPoint = null,
    fulcrumPoint: ?*GPoint = null,
    active: bool = false,
    theta: f64 = 0.0,
    color: ?*Color = null,
    points: ?*Points = null,
    // Implements GraphicItemInterface
    const RECT: ?*String = String.literal("rect");
    const ARC: ?*String = String.literal("arc");
    const STRING: ?*String = String.literal("string");
    const CHAR: ?*String = String.literal("char");
    const IMAGE: ?*String = String.literal("image");
    var item: i32 = 0;
    const NAME: ?*String = String.literal("Line Tool");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        this.treeNode = null;
        this.pointTreeNodeVector = null;
        this.currentMousePoint = null;
        this.fulcrumPoint = null;
        this.active = false;
        this.theta = 0.0;
        this.color = Inheritance.callStatic(Color, "create1", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.WHITE.?, "intValue").intValue() });
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.points = Points.create();
        { // try
            _ = this.init();
            this.active = true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    pub fn create1(linesNode: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.points = Points.create();
        _ = this.init();
        this.active = false;
        const lineNodes: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(DomHelper.getInstance().?, "getWithoutTextNodes", .{ linesNode.?.getChildNodes() }));
        const numberOfLines: i32 = lineNodes.?.size();
        {
            var index: i32 = 0;
            while (index < numberOfLines) : (index += 1) {
            const lineNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(lineNodes.?, "get", .{ index }));
            const pointNodes: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(DomHelper.getInstance().?, "getWithoutTextNodes", .{ lineNode.?.getChildNodes() }));
            const pointOneNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ PointsDomUtil.getInstance().?.POINTONE, pointNodes }));
            _ = Inheritance.call(this, "addPoint", .{ pointOneNode.?.getChildNodes() });
            if (index == numberOfLines - 1) {
                const pointTwoNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ PointsDomUtil.getInstance().?.POINTTWO, pointNodes }));
                _ = Inheritance.call(this, "addPoint", .{ pointTwoNode.?.getChildNodes() });
            }
            }
        }
        if (numberOfLines == 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Lines node does not contain a line"); break :exception error.Exception; }});
        }
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        self.treeNode = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ PointsDomUtil.getInstance().?.LINES + LinesGraphicItem.item });
        LinesGraphicItem.item += 1;
        _ = self.points.?.init();
        self.pointTreeNodeVector = Inheritance.upcast(@TypeOf(self.pointTreeNodeVector), BasicArrayListD.create());
        self.fulcrumPoint = Inheritance.upcast(@TypeOf(self.fulcrumPoint), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ 0, 0 }));
    }
    

    // throws Exception
    pub fn translate(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.plus(String.literal("Translating: "), self.points.?.getPoints()) });
        const basicGraphicsPipeline: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ self.points.?.getPoints() });
        _ = Inheritance.call(basicGraphicsPipeline.?, "translate", .{ x, y });
        self.points = Points.create();
        _ = Inheritance.call(self.points.?, "addPoints", .{ basicGraphicsPipeline.?.getMatrix() });
    }
    

    pub fn setRotate(self: *Self, thetaParameter: f64) void {
        var theta = thetaParameter;
        while (theta > 2 * Math.PI) {
            theta -= 2 * Math.PI;
        }
        while (theta < 0.0) {
            theta += 2 * Math.PI;
        }
        self.theta = theta;
    }
    

    pub fn addRotate(self: *Self, theta: f64) void {
        _ = Inheritance.call(self, "setRotate", .{ self.theta + theta });
    }
    

    pub fn setAngle(self: *Self, angle: f64) void {
        _ = Inheritance.call(self, "setRotate", .{ std.math.degreesToRadians(angle) });
    }
    

    pub fn addAngle(self: *Self, angle: f64) void {
        _ = Inheritance.call(self, "setRotate", .{ self.theta + std.math.degreesToRadians(angle) });
    }
    

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        return Inheritance.cast(?*MutableTreeNode, self.treeNode);
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, LinesGraphicItem.NAME);
    }
    

    pub fn getStaticName() ?*String {
        return Inheritance.upcast(?*String, LinesGraphicItem.NAME);
    }
    

    // throws Exception
    pub fn addPoint(self: *Self, pointNodes: ?*NodeList) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(DomHelper.getInstance().?, "getWithoutTextNodes", .{ pointNodes }));
        const xNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ PositionStrings.getInstance().?.X, list }));
        const xTextNode: ?*Node = Inheritance.upcast(?*Node, xNode.?.getFirstChild());
        const xInteger: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ xTextNode.?.getNodeValue() });
        const yNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ PositionStrings.getInstance().?.Y, list }));
        const yTextNode: ?*Node = Inheritance.upcast(?*Node, yNode.?.getFirstChild());
        const yInteger: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ yTextNode.?.getNodeValue() });
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ xInteger.?.intValue(), yInteger.?.intValue() }));
        _ = Inheritance.call(self, "addPoint", .{ point });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn addPoint(self: *Self, point: ?*GPoint) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.points.?.getPoints().?, "add", .{ point });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(point)), self, String.literal("addPoint") });
        _ = Inheritance.call(self.pointTreeNodeVector.?, "add", .{ Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ Object.toString(Object.of(point)) }) });
        _ = Inheritance.call(self.treeNode.?, "add", .{ Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(self.pointTreeNodeVector.?, "get", .{ self.pointTreeNodeVector.?.size() - 1 })) });
    }
    

    pub fn removePoint(self: *Self) ?*GPoint {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var point: ?*GPoint = null;
        if (self.points.?.getSize() > 0) {
            const lastPoint: i32 = self.points.?.getSize() - 1;
            point = Inheritance.cast(?*GPoint, Inheritance.call(self.points.?.getPoints().?, "removeAt", .{ lastPoint }));
            const index: i32 = self.pointTreeNodeVector.?.size() - 1;
            if (index > 0) {
                _ = Inheritance.call(self.treeNode.?, "remove", .{ Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(self.pointTreeNodeVector.?, "get", .{ index })) });
                _ = Inheritance.call(self.pointTreeNodeVector.?, "remove", .{ index });
            }
        }
        return point;
    }
    

    pub fn isActive(self: *Self) bool {
        return self.active;
    }
    

    pub fn deactivate(self: *Self) void {
        self.active = false;
    }
    

    pub fn activate(self: *Self) void {
        self.active = true;
    }
    

    // throws Exception
    pub fn duplicatePoints(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const point: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(list.?, "get", .{ index }));
            if (point != null) {
                _ = Inheritance.call(self.points.?.getPoints().?, "add", .{ Inheritance.call(PointFactory.getInstance().?, "createXY", .{ point.?.getX(), point.?.getY() }) });
                _ = Inheritance.call(self.pointTreeNodeVector.?, "add", .{ Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ Object.toString(Object.of(point)) }) });
                _ = Inheritance.call(self.treeNode.?, "add", .{ Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(self.pointTreeNodeVector.?, "get", .{ self.pointTreeNodeVector.?.size() - 1 })) });
            }
            }
        }
    }
    

    // throws Exception
    pub fn duplicate(self: *Self) ?*GraphicItemInterface {
        const linesGraphicItem: ?*LinesGraphicItem = LinesGraphicItem.create();
        _ = Inheritance.call(linesGraphicItem.?, "duplicatePoints", .{ self.points.?.getPoints() });
        _ = linesGraphicItem.?.deactivate();
        return Inheritance.upcast(?*GraphicItemInterface, linesGraphicItem);
    }
    

    pub fn getAngle(self: *Self) f64 {
        return std.math.radiansToDegrees(self.theta);
    }
    

    pub fn setFulcrumPoint(self: *Self, point: ?*GPoint) void {
        self.fulcrumPoint = point;
    }
    

    pub fn paint(self: *Self, g: ?*Graphics, canvasAngle: ?*Double, dimension: ?*IntegerDimension, x: i32, y: i32) void {
        { // try
            const graphics: ?*Graphics2D = Inheritance.cast(?*Graphics2D, g);
            _ = Inheritance.call(graphics.?, "setColor", .{ self.getColor() });
            _ = Inheritance.call(graphics.?, "setStroke", .{ Inheritance.callStatic(BasicStroke, "create1", .{ x }) });
            if (self.isActive() and self.currentMousePoint != null) {
                _ = Inheritance.call(self.points.?.getPoints().?, "add", .{ self.currentMousePoint });
            }
            const tempPointVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(PointsUtil.getInstance().?, "doTransforms", .{ self.points.?.getPoints(), canvasAngle, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ dimension.?.getWidth(), dimension.?.getHeight() }) }));
            if (self.isActive() and self.currentMousePoint != null) {
                self.currentMousePoint = Inheritance.cast(?*GPoint, Inheritance.call(self.points.?.getPoints().?, "removeAt", .{ self.points.?.getSize() - 1 }));
            }
            const size: i32 = tempPointVector.?.size();
            var firstPoint: ?*GPoint = null;
            if (size > 0) {
                firstPoint = Inheritance.cast(?*GPoint, Inheritance.call(tempPointVector.?, "get", .{ 0 }));
            }
            {
                var index: i32 = 1;
                while (index < size) : (index += 1) {
                const secondPoint: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(tempPointVector.?, "get", .{ index }));
                _ = Inheritance.call(graphics.?, "drawLine", .{ (firstPoint.?.getX() * x) - (@divTrunc(x, 4)), (firstPoint.?.getY() * y) - (@divTrunc(y, 4)), (secondPoint.?.getX() * x) - (@divTrunc(x, 4)), (secondPoint.?.getY() * y) - (@divTrunc(y, 4)) });
                firstPoint = secondPoint;
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("mouseMoved"), e });
    }
    

    // throws Exception
    pub fn toDom(self: *Self, canvasDom: ?*CanvasDom) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.call(PointsDomUtil.getInstance().?, "toDom", .{ canvasDom, self.points.?.getPoints() }));
    }
    

    pub fn isValid(self: *Self) bool {
        return self.points.?.isValid();
    }
    

    pub fn getPointsInterface(self: *Self) ?*Points {
        return self.points;
    }
    

    pub fn setPointsInterface(self: *Self, points: ?*Points) void {
        self.points = points;
    }
    

    pub fn getColor(self: *Self) ?*Color {
        return self.color;
    }
    

    pub fn setColor(self: *Self, color: ?*Color) void {
        self.color = color;
    }
    

    pub fn mouseClicked(self: *Self, mouseEvent: ?*MouseEvent, x: i32, y: i32) void {
        { // try
            const mousePoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ mouseEvent.?.getPoint().?.x, mouseEvent.?.getPoint().?.y }));
            if (Object.same((mouseEvent.?.getModifiers() & mouseEvent.?.BUTTON1_MASK), mouseEvent.?.BUTTON1_MASK)) {
                const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ (divide_N73366: { const left_N73366 = mousePoint.?.getX(); const right_N73366 = x; break :divide_N73366 if (comptime @typeInfo(@TypeOf(left_N73366)) == .int or @TypeOf(left_N73366) == comptime_int) @divTrunc(left_N73366, right_N73366) else left_N73366 / right_N73366; }), (divide_N73395: { const left_N73395 = mousePoint.?.getY(); const right_N73395 = y; break :divide_N73395 if (comptime @typeInfo(@TypeOf(left_N73395)) == .int or @TypeOf(left_N73395) == comptime_int) @divTrunc(left_N73395, right_N73395) else left_N73395 / right_N73395; }) }));
                _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.plus(String.literal("Line Point Added: "), Object.toString(Object.of(point))) });
                _ = Inheritance.call(self, "addPoint", .{ point });
            } else if (Object.same((mouseEvent.?.getModifiers() & mouseEvent.?.BUTTON3_MASK), mouseEvent.?.BUTTON3_MASK)) {
                _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Line Point Removed") });
                _ = self.removePoint();
            }
            self.currentMousePoint = mousePoint;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("mouseMoved"), e });
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
        _ = mouseEvent;
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = self;
    }
    

    pub fn mouseReleased(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = mouseEvent;
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = self;
    }
    

    pub fn mouseDragged(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        _ = mouseEvent;
        _ = xPixelsPerCell;
        _ = yPixelsPerCell;
        _ = self;
    }
    

    pub fn mouseMoved(self: *Self, mouseEvent: ?*MouseEvent, x: i32, y: i32) void {
        { // try
            const mousePoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ mouseEvent.?.getPoint().?.x, mouseEvent.?.getPoint().?.y }));
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ (divide_N74297: { const left_N74297 = mousePoint.?.getX(); const right_N74297 = x; break :divide_N74297 if (comptime @typeInfo(@TypeOf(left_N74297)) == .int or @TypeOf(left_N74297) == comptime_int) @divTrunc(left_N74297, right_N74297) else left_N74297 / right_N74297; }), (divide_N74326: { const left_N74326 = mousePoint.?.getY(); const right_N74326 = y; break :divide_N74326 if (comptime @typeInfo(@TypeOf(left_N74326)) == .int or @TypeOf(left_N74326) == comptime_int) @divTrunc(left_N74326, right_N74326) else left_N74326 / right_N74326; }) }));
            self.currentMousePoint = point;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("mouseMoved"), e });
    }
    

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        { // try
            const keyCode: i32 = keyEvent.?.getKeyCode();
            if (keyCode == keyEvent.?.VK_ESCAPE) {
                _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Deactivated") });
                _ = self.deactivate();
            } else if (keyCode == keyEvent.?.VK_UP) {
                _ = Inheritance.call(self, "translate", .{ 0, -1 });
            } else if (keyCode == keyEvent.?.VK_DOWN) {
                _ = Inheritance.call(self, "translate", .{ 0, 1 });
            } else if (keyCode == keyEvent.?.VK_LEFT) {
                _ = Inheritance.call(self, "translate", .{ -1, 0 });
            } else if (keyCode == keyEvent.?.VK_RIGHT) {
                _ = Inheritance.call(self, "translate", .{ 1, 0 });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.gameInputStrings.?.KEY_PRESSED, e });
    }
    

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
};

