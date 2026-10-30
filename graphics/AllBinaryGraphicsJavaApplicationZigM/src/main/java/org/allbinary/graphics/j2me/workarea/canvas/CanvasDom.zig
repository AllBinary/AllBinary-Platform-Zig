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
// package org.allbinary.graphics.j2me.workarea.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const VectorCenterGenerator = @import("org/allbinary/animation/vector/VectorCenterGenerator.zig").VectorCenterGenerator;
const DomHelper = @import("org/allbinary/dom/DomHelper.zig").DomHelper;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const GraphicsStrings = @import("org/allbinary/graphics/GraphicsStrings.zig").GraphicsStrings;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const WorkAreaJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanel.zig").WorkAreaJPanel;
const GraphicItemFactory = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory.zig").GraphicItemFactory;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CanvasJPanel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel.zig").CanvasJPanel;
const Grid = @import("org/allbinary/graphics/j2me/workarea/canvas/Grid.zig").Grid;
const IntegerDimension = @import("org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension.zig").IntegerDimension;
const Integer = @import("java/lang/Integer.zig").Integer;
const Double = @import("java/lang/Double.zig").Double;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const CanvasDom = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.CanvasDom";
    graphicsStrings: ?*GraphicsStrings = null,
    graphicItemHashMap: ?*HashMap = null,
    angle: f64 = 0.0,
    dimension: ?*IntegerDimension = null,
    grid: ?*Grid = null,
    pub const FRAME: ?*String = String.literal("frame");
    pub const ROTATE: ?*String = String.literal("rotate");
    pub const SIZE: ?*String = String.literal("size");
    pub const X: ?*String = String.literal("X");
    pub const Y: ?*String = String.literal("Y");
    pub const ZOOM: ?*String = String.literal("zoom");
    pub const GRID: ?*String = String.literal("grid");
    pub const ENABLED: ?*String = String.literal("enabled");
    pub const POSSIBLE: ?*String = String.literal("possible");
    pub const GRAPHICITEMS: ?*String = String.literal("graphicItems");
    pub const REAL_SIZE: ?*String = String.literal("realSize");

    fn initFields(this: *Self) void {
        this.graphicsStrings = Inheritance.upcast(?*GraphicsStrings, GraphicsStrings.getInstance());
        
        
        
        
    }
    

    pub fn create1(canvasNode: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.grid = Grid.create();
        this.grid.?.grid = Inheritance.upcast(@TypeOf(this.grid.?.grid), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ 0, 0 }));
        this.dimension = Inheritance.callStatic(IntegerDimension, "create2", .{ 0, 0 });
        const name: ?*String = Inheritance.upcast(?*String, canvasNode.?.getNodeName());
        if (Inheritance.call(name.?, "compareTo", .{ CanvasDom.FRAME }) == 0) {
            this.graphicItemHashMap = Inheritance.upcast(@TypeOf(this.graphicItemHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const angleNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.ROTATE, canvasNode.?.getChildNodes() }));
            const angleTextNode: ?*Node = Inheritance.upcast(?*Node, angleNode.?.getFirstChild());
            const angle: f64 = Inheritance.callStatic(Double, "create1", .{ angleTextNode.?.getNodeValue() }).doubleValue();
            _ = Inheritance.call(this, "setAngle", .{ angle });
            const sizeNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.SIZE, canvasNode.?.getChildNodes() }));
            const xNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.X, sizeNode.?.getChildNodes() }));
            const xTextNode: ?*Node = Inheritance.upcast(?*Node, xNode.?.getFirstChild());
            const x: i32 = Inheritance.callStatic(Integer, "create1", .{ xTextNode.?.getNodeValue() }).intValue();
            const yNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.Y, sizeNode.?.getChildNodes() }));
            const yTextNode: ?*Node = Inheritance.upcast(?*Node, yNode.?.getFirstChild());
            const y: i32 = Inheritance.callStatic(Integer, "create1", .{ yTextNode.?.getNodeValue() }).intValue();
            _ = Inheritance.call(this, "setWorkArea", .{ x, y });
            const zoomNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.ZOOM, canvasNode.?.getChildNodes() }));
            const zoomTextNode: ?*Node = Inheritance.upcast(?*Node, zoomNode.?.getFirstChild());
            _ = Inheritance.call(this.grid.?, "setZoom", .{ Inheritance.callStatic(Integer, "create1", .{ zoomTextNode.?.getNodeValue() }).intValue() });
            const gridNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.GRID, canvasNode.?.getChildNodes() }));
            const gridSizeNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.SIZE, gridNode.?.getChildNodes() }));
            const gridXNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.X, gridSizeNode.?.getChildNodes() }));
            const gridXTextNode: ?*Node = Inheritance.upcast(?*Node, gridXNode.?.getFirstChild());
            const gridX: i32 = Inheritance.callStatic(Integer, "create1", .{ gridXTextNode.?.getNodeValue() }).intValue();
            const gridYNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.Y, gridSizeNode.?.getChildNodes() }));
            const gridYTextNode: ?*Node = Inheritance.upcast(?*Node, gridYNode.?.getFirstChild());
            const gridY: i32 = Inheritance.callStatic(Integer, "create1", .{ gridYTextNode.?.getNodeValue() }).intValue();
            _ = Inheritance.call(this, "setGrid", .{ gridX, gridY });
            const enableNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.ENABLED, gridNode.?.getChildNodes() }));
            const enableTextNode: ?*Node = Inheritance.upcast(?*Node, enableNode.?.getFirstChild());
            _ = Inheritance.call(this.grid.?, "showGrid", .{ Inheritance.callStatic(Boolean, "create1", .{ enableTextNode.?.getNodeValue() }).booleanValue() });
            const possibleNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(DomHelper.getInstance().?, "searchNodeList", .{ this.POSSIBLE, gridNode.?.getChildNodes() }));
            const possibleTextNode: ?*Node = Inheritance.upcast(?*Node, possibleNode.?.getFirstChild());
            this.grid.?.isGridPossible = Inheritance.upcast(@TypeOf(this.grid.?.isGridPossible), Inheritance.callStatic(Boolean, "create1", .{ possibleTextNode.?.getNodeValue() }).booleanValue());
            const graphicItemNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(DomHelper.getInstance().?, "getChildrenWithoutTextNodes", .{ this.GRAPHICITEMS, canvasNode.?.getChildNodes() }));
            if (graphicItemNodeList != null) {
                this.graphicItemHashMap = Inheritance.upcast(@TypeOf(this.graphicItemHashMap), Inheritance.call(GraphicItemFactory.getInstance().?, "getInstance", .{ graphicItemNodeList }));
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Frame Element Not Found but Found: "), name); break :exception error.Exception; }});
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(canvasJPanel: ?*CanvasJPanel) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.angle = Inheritance.receiver(canvasJPanel.?, "getAngle").getAngle();
        this.graphicItemHashMap = Inheritance.upcast(@TypeOf(this.graphicItemHashMap), Inheritance.receiver(canvasJPanel.?, "getGraphicItemHashMap").getGraphicItemHashMap());
        this.dimension = Inheritance.upcast(@TypeOf(this.dimension), Inheritance.receiver(canvasJPanel.?, "getCanvasDimension").getCanvasDimension());
        this.grid = Inheritance.callStatic(Grid, "create1", .{ Inheritance.receiver(canvasJPanel.?, "getGrid").getGrid() });
        this.angle = Inheritance.receiver(canvasJPanel.?, "getAngle").getAngle();
        return this;
    }
    

    pub fn getAngle(self: *Self) f64 {
        return self.angle;
    }
    

    pub fn getGraphicItemHashMap(self: *Self) ?*HashMap {
        return self.graphicItemHashMap;
    }
    

    pub fn setAngle(self: *Self, angle: f64) void {
        self.angle = angle;
    }
    

    // throws Exception
    pub fn setWorkArea(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(self, "setDimension", .{ Inheritance.callStatic(IntegerDimension, "create2", .{ x, y }) });
    }
    

    // throws Exception
    pub fn setGrid(self: *Self, gridX: i32, gridY: i32) void {
        self.grid.?.grid = Inheritance.upcast(@TypeOf(self.grid.?.grid), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ gridX, gridY }));
    }
    

    pub fn getPointNode(self: *Self, point: ?*GPoint, pointName: ?*String) ?*Node {
        const document: ?*Document = Inheritance.upcast(?*Document, WorkAreaJPanel.getDocument());
        const pointNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ pointName }));
        const xNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.X }));
        const xTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(point.?.getX()) }));
        _ = Inheritance.call(xNode.?, "appendChild", .{ xTextNode });
        const yNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.Y }));
        const yTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(point.?.getY()) }));
        _ = Inheritance.call(yNode.?, "appendChild", .{ yTextNode });
        _ = Inheritance.call(pointNode.?, "appendChild", .{ xNode });
        _ = Inheritance.call(pointNode.?, "appendChild", .{ yNode });
        return pointNode;
    }
    

    // throws Exception
    pub fn toDom(self: *Self) ?*Node {
        const document: ?*Document = Inheritance.upcast(?*Document, WorkAreaJPanel.getDocument());
        const frameNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.FRAME }));
        const angleNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.ROTATE }));
        const angleTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(Inheritance.callStatic(Double, "create1", .{ self.getAngle() }).?) }));
        _ = Inheritance.call(angleNode.?, "appendChild", .{ angleTextNode });
        const sizeNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(self, "getPointNode", .{ Inheritance.call(PointFactory.getInstance().?, "createXY", .{ Inheritance.receiverOf(self.getDimension().?, "getWidth").getWidth(), Inheritance.receiverOf(self.getDimension().?, "getHeight").getHeight() }), self.SIZE }));
        const zoomNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.ZOOM }));
        const zoomTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getGrid().?, "getZoom").getZoom() }).?) }));
        _ = Inheritance.call(zoomNode.?, "appendChild", .{ zoomTextNode });
        const gridNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.GRID }));
        const gridSizeNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(self, "getPointNode", .{ self.getGrid().?.grid, self.SIZE }));
        _ = Inheritance.call(gridNode.?, "appendChild", .{ gridSizeNode });
        const enableNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.ENABLED }));
        const enableTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(Inheritance.callStatic(Boolean, "create1", .{ Inheritance.receiverOf(self.getGrid().?, "isGridOn").isGridOn() }).?) }));
        _ = Inheritance.call(enableNode.?, "appendChild", .{ enableTextNode });
        _ = Inheritance.call(gridNode.?, "appendChild", .{ enableNode });
        const possibleNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.POSSIBLE }));
        const possibleTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(Inheritance.callStatic(Boolean, "create1", .{ Inheritance.receiverOf(self.getGrid().?, "isGridPossible").isGridPossible() }).?) }));
        _ = Inheritance.call(possibleNode.?, "appendChild", .{ possibleTextNode });
        _ = Inheritance.call(gridNode.?, "appendChild", .{ possibleNode });
        const realSizeNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ CanvasDom.REAL_SIZE }));
        const vectorCenterGenerator: ?*VectorCenterGenerator = VectorCenterGenerator.create();
        _ = Inheritance.call(vectorCenterGenerator.?, "calculate", .{ self.getGraphicItemHashMap() });
        const widthNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.graphicsStrings.?.WIDTH }));
        const widthTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(vectorCenterGenerator.?.getWidth()) }));
        _ = Inheritance.call(widthNode.?, "appendChild", .{ widthTextNode });
        _ = Inheritance.call(realSizeNode.?, "appendChild", .{ widthNode });
        const heightNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.graphicsStrings.?.HEIGHT }));
        const heightTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(vectorCenterGenerator.?.getHeight()) }));
        _ = Inheritance.call(heightNode.?, "appendChild", .{ heightTextNode });
        _ = Inheritance.call(realSizeNode.?, "appendChild", .{ heightNode });
        _ = Inheritance.call(frameNode.?, "appendChild", .{ angleNode });
        _ = Inheritance.call(frameNode.?, "appendChild", .{ sizeNode });
        _ = Inheritance.call(frameNode.?, "appendChild", .{ zoomNode });
        _ = Inheritance.call(frameNode.?, "appendChild", .{ gridNode });
        _ = Inheritance.call(frameNode.?, "appendChild", .{ realSizeNode });
        const graphicItemNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.GRAPHICITEMS }));
        const graphicItemArray: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(self.getGraphicItemHashMap().?, "keySet").keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.graphicItemHashMap.?, "get", .{ graphicItemArray[@intCast(index)] }));
            if (Object.same(item.?.getName(), LinesGraphicItem.getStaticName())) {
                if (item.?.isValid()) {
                    _ = Inheritance.call(graphicItemNode.?, "appendChild", .{ Inheritance.call(item.?, "toDom", .{ self }) });
                }
            }
            }
        }
        _ = Inheritance.call(frameNode.?, "appendChild", .{ graphicItemNode });
        return frameNode;
    }
    

    pub fn getDimension(self: *Self) ?*IntegerDimension {
        return self.dimension;
    }
    

    pub fn setDimension(self: *Self, dimension: ?*IntegerDimension) void {
        self.dimension = dimension;
    }
    

    pub fn getGrid(self: *Self) ?*Grid {
        return self.grid;
    }
};

