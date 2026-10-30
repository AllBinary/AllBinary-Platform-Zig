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
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const VectorExplosionGenerator = @import("org/allbinary/animation/VectorExplosionGenerator.zig").VectorExplosionGenerator;
const VectorMirrorGenerator = @import("org/allbinary/animation/VectorMirrorGenerator.zig").VectorMirrorGenerator;
const VectorCenterGenerator = @import("org/allbinary/animation/vector/VectorCenterGenerator.zig").VectorCenterGenerator;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const GraphicsException = @import("org/allbinary/graphics/j2me/GraphicsException.zig").GraphicsException;
const StatusFactory = @import("org/allbinary/graphics/j2me/StatusFactory.zig").StatusFactory;
const WorkAreaJTreeJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel.zig").WorkAreaJTreeJPanel;
const GraphicItemFactory = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory.zig").GraphicItemFactory;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const MouseStrings = @import("org/allbinary/graphics/j2me/workarea/tools/MouseStrings.zig").MouseStrings;
const Points = @import("org/allbinary/graphics/j2me/workarea/tools/Points.zig").Points;
const ToolFactory = @import("org/allbinary/graphics/j2me/workarea/tools/ToolFactory.zig").ToolFactory;
const MyGraphicItemEvent = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent.zig").MyGraphicItemEvent;
const MyGraphicItemEventListener = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventListener.zig").MyGraphicItemEventListener;
const MyGraphicItemEventService = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService.zig").MyGraphicItemEventService;
const RandomRotationFactory = @import("org/allbinary/graphics/pipeline/RandomRotationFactory.zig").RandomRotationFactory;
const LOGGING = @import("org/allbinary/log/LOGGING.zig").LOGGING;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const GuiLog = @import("org/allbinary/logic/communication/log/GuiLog.zig").GuiLog;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const CanvasTreeLabel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel.zig").CanvasTreeLabel;
const Grid = @import("org/allbinary/graphics/j2me/workarea/canvas/Grid.zig").Grid;
const IntegerDimension = @import("org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension.zig").IntegerDimension;
const Integer = @import("java/lang/Integer.zig").Integer;
const Double = @import("java/lang/Double.zig").Double;

pub const CanvasJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    guiLog: ?*GuiLog = null,
    gameInputStrings: ?*GameInputStrings = null,
    selectedTool: ?*GraphicItemInterface = null,
    graphicItemHashMap: ?*HashMap = null,
    canvasDimension: ?*IntegerDimension = null,
    angle: f64 = 0.0,
    canvasTreeNode: ?*DefaultMutableTreeNode = null,
    frameLabel: ?*CanvasTreeLabel = null,
    workAreaJTreeJPanel: ?*WorkAreaJTreeJPanel = null,
    grid: ?*Grid = null,
    // Implements MouseListener
    // Implements MouseMotionListener
    // Implements KeyListener
    // Implements MyGraphicItemEventListener
    var frame: i32 = 0;
    var gridColor: ?*Color = undefined;
    var backgroundColor: ?*Color = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        gridColor = Inheritance.callStatic(Color, "create1", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.WHITE.?, "intValue").intValue() });
        backgroundColor = Inheritance.callStatic(Color, "create1", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.CLEAR_COLOR.?, "intValue").intValue() });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.guiLog = Inheritance.upcast(?*GuiLog, GuiLog.getInstance());
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        this.selectedTool = null;
        this.graphicItemHashMap = null;
        this.canvasDimension = null;
        this.angle = 0.0;
        this.canvasTreeNode = null;
        this.frameLabel = null;
        this.workAreaJTreeJPanel = null;
        
    }
    

    pub fn create4(workAreaJTreeJPanel: ?*WorkAreaJTreeJPanel, dimension: ?*Dimension, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        this.grid = Grid.create();
        { // try
            this.workAreaJTreeJPanel = workAreaJTreeJPanel;
            _ = this.initComponents();
            _ = this.initMyComponents();
            _ = Inheritance.call(this, "setSize", .{ dimension });
            _ = Inheritance.call(this, "setCanvasSize", .{ x, y });
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.GRAPHICSCREATION })) {
//                 _ = Inheritance.call(this.guiLog.?, "put", .{ String.literal("Constructor Error"), this, String.literal("contructor"), e });
//             }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(workAreaJTreeJPanel: ?*WorkAreaJTreeJPanel, dimension: ?*Dimension, canvasDom: ?*CanvasDom) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        this.grid = Inheritance.callStatic(Grid, "create1", .{ canvasDom.?.getGrid() });
        { // try
            this.workAreaJTreeJPanel = workAreaJTreeJPanel;
            _ = this.initComponents();
            _ = this.initMyComponents();
            _ = Inheritance.call(this, "setSize", .{ dimension });
            _ = Inheritance.call(this, "setCanvasSize", .{ Inheritance.receiverOf(canvasDom.?.getDimension().?, "getWidth").getWidth(), Inheritance.receiverOf(canvasDom.?.getDimension().?, "getHeight").getHeight() });
            this.graphicItemHashMap = Inheritance.upcast(@TypeOf(this.graphicItemHashMap), canvasDom.?.getGraphicItemHashMap());
            const graphicItemArray: []?Object = Inheritance.receiverOf(this.graphicItemHashMap.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(graphicItemArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const graphicItemTreeNode: ?*MutableTreeNode = Inheritance.cast(?*MutableTreeNode, graphicItemArray[@intCast(index)]);
                _ = Inheritance.call(this.canvasTreeNode.?, "add", .{ graphicItemTreeNode });
                }
            }
            _ = this.repaint();
            _ = Inheritance.call(this, "setAngle", .{ canvasDom.?.getAngle() });
            _ = Inheritance.receiver(this.workAreaJTreeJPanel.?, "updateTree").updateTree();
            _ = Inheritance.receiver(this.workAreaJTreeJPanel.?, "expand").expand();
            _ = Inheritance.receiver(this.workAreaJTreeJPanel.?, "repaint").repaint();
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.GRAPHICSCREATION })) {
//                 _ = Inheritance.call(this.guiLog.?, "put", .{ String.literal("Constructor Error"), this, String.literal("contructor"), e });
//             }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn initMyComponents(self: *Self) void {
        self.frameLabel = Inheritance.callStatic(CanvasTreeLabel, "create1", .{ String.plus(String.literal("FrameLabel"), String.valueOf(Inheritance.callStatic(Integer, "create1", .{ CanvasJPanel.frame }).?)) });
        self.canvasTreeNode = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ self.frameLabel });
        CanvasJPanel.frame += 1;
        _ = Inheritance.call(self.workAreaJTreeJPanel.?, "add", .{ self.getTreeNode() });
        self.graphicItemHashMap = Inheritance.upcast(@TypeOf(self.graphicItemHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        self.grid.?.grid = Inheritance.upcast(@TypeOf(self.grid.?.grid), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ 0, 0 }));
        _ = Inheritance.call(self, "setCanvasDimension", .{ Inheritance.callStatic(IntegerDimension, "create2", .{ 0, 0 }) });
        self.selectedTool = null;
        _ = Inheritance.call(self, "addKeyListener", .{ self });
        _ = Inheritance.call(self, "addMouseListener", .{ self });
        _ = Inheritance.call(self, "addMouseMotionListener", .{ self });
        _ = Inheritance.callStatic(MyGraphicItemEventService, "addListener", .{ self });
    }
    

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        return Inheritance.upcast(?*MutableTreeNode, self.canvasTreeNode);
    }
    

    pub fn initComponents(self: *Self) void {
        _ = self;
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
    }
    

    // throws Exception
    pub fn setCanvasSize(self: *Self, x: i32, y: i32) void {
        self.grid.?.isGridPossible = true;
        if (x <= 0) {
            self.grid.?.isGridPossible = false;
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("X Size Error: "), x); _ = self; _ = String.literal("setWorkAreaSize"); break :exception error.GraphicsException; }});
        }
        if (y <= 0) {
            self.grid.?.isGridPossible = false;
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Y Size Error: "), y); _ = self; _ = String.literal("setWorkAreaSize"); break :exception error.GraphicsException; }});
        }
        if (x > Inheritance.receiver(self, "getWidth").getWidth()) {
            self.grid.?.isGridPossible = false;
        }
        if (y > Inheritance.receiver(self, "getHeight").getHeight()) {
            self.grid.?.isGridPossible = false;
        }
        _ = Inheritance.call(self, "setCanvasDimension", .{ Inheritance.callStatic(IntegerDimension, "create2", .{ x, y }) });
        self.grid.?.isChanged = true;
    }
    

    pub fn setGrid(self: *Self, point: ?*GPoint) void {
        _ = Inheritance.call(self, "setGrid", .{ point.?.getX(), point.?.getY() });
    }
    

    pub fn setGrid2(self: *Self, xSize: i32, ySize: i32) void {
        { // try
            if (xSize >= (divide_N69887: { const left_N69887 = Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth(); const right_N69887 = 2; break :divide_N69887 if (comptime @typeInfo(@TypeOf(left_N69887)) == .int or @TypeOf(left_N69887) == comptime_int) @divTrunc(left_N69887, right_N69887) else left_N69887 / right_N69887; }) or xSize < 1) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.plus(String.literal("X Size Error: "), xSize), String.literal(" WorkArea X: ")), Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth()); _ = self; _ = String.literal("setGrid"); break :exception error.GraphicsException; }});
            }
            if (ySize >= (divide_N70031: { const left_N70031 = Inheritance.receiverOf(self.getCanvasDimension().?, "getHeight").getHeight(); const right_N70031 = 2; break :divide_N70031 if (comptime @typeInfo(@TypeOf(left_N70031)) == .int or @TypeOf(left_N70031) == comptime_int) @divTrunc(left_N70031, right_N70031) else left_N70031 / right_N70031; }) or ySize < 1) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.plus(String.literal("Y Size Error"), ySize), String.literal(" WorkArea Y: ")), Inheritance.receiverOf(self.getCanvasDimension().?, "getHeight").getHeight()); _ = self; _ = String.literal("setGrid"); break :exception error.GraphicsException; }});
            }
            self.grid.?.grid = Inheritance.upcast(@TypeOf(self.grid.?.grid), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ xSize, ySize }));
            self.grid.?.isChanged = true;
        }
        // catch (Exception e):
    }
    

    // throws Exception
    pub fn setDefaultGrid(self: *Self) void {
        const xPixelsPerWorkAreaPixel: i32 = (divide_N70358: { const left_N70358 = Inheritance.receiver(self, "getWidth").getWidth(); const right_N70358 = Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth(); break :divide_N70358 if (comptime @typeInfo(@TypeOf(left_N70358)) == .int or @TypeOf(left_N70358) == comptime_int) @divTrunc(left_N70358, right_N70358) else left_N70358 / right_N70358; }); _ = xPixelsPerWorkAreaPixel;
        const yPixelsPerWorkAreaPixel: i32 = (divide_N70416: { const left_N70416 = Inheritance.receiver(self, "getHeight").getHeight(); const right_N70416 = Inheritance.receiverOf(self.getCanvasDimension().?, "getHeight").getHeight(); break :divide_N70416 if (comptime @typeInfo(@TypeOf(left_N70416)) == .int or @TypeOf(left_N70416) == comptime_int) @divTrunc(left_N70416, right_N70416) else left_N70416 / right_N70416; }); _ = yPixelsPerWorkAreaPixel;
        _ = Inheritance.call(self, "setGrid", .{ 1, 1 });
        self.grid.?.isChanged = true;
    }
    

    pub fn getAngle(self: *Self) f64 {
        return self.angle;
    }
    

    pub fn setAngle(self: *Self, angle: f64) void {
        self.angle = angle;
    }
    

    pub fn addAngle(self: *Self, angle: f64) void {
        _ = Inheritance.call(self, "setAngle", .{ self.angle + angle });
    }
    

    pub fn explodeAll(self: *Self) void {
        const newPoints: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const graphicItemArray: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(self.getGraphicItemHashMap().?, "keySet").keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const graphicItemNode: ?*MutableTreeNode = Inheritance.cast(?*MutableTreeNode, graphicItemArray[@intCast(index)]);
            const graphicItem: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ graphicItemNode }));
            if (Object.same(graphicItem.?.getName(), LinesGraphicItem.getStaticName())) {
                while (Inheritance.receiverOf(graphicItem.?.getPointsInterface().?, "getSize").getSize() > 2) {
                    const newGraphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, Inheritance.call(Inheritance.call(GraphicItemFactory.getInstance().?, "getInstance", .{ graphicItem.?.getName() }).?, "getInstance", .{ self }));
                    const pointOne: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.callStatic(GPoint, "getInstance", .{ graphicItem.?.removePoint() }));
                    const pointTwo: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.callStatic(GPoint, "getInstance", .{ graphicItem.?.removePoint() }));
                    if (pointOne != null and pointTwo != null) {
                        _ = Inheritance.call(newGraphicItem.?, "addPoint", .{ pointOne });
                        _ = Inheritance.call(newGraphicItem.?, "addPoint", .{ pointTwo });
                    }
                    _ = Inheritance.call(newPoints.?, "add", .{ newGraphicItem });
                }
            }
            }
        }
        const size2: i32 = newPoints.?.size();
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            const newGraphicItem: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(newPoints.?, "get", .{ index }));
            _ = Inheritance.call(self.canvasTreeNode.?, "add", .{ newGraphicItem.?.getTreeNode() });
            _ = Inheritance.call(self.getGraphicItemHashMap().?, "put", .{ newGraphicItem.?.getTreeNode(), newGraphicItem });
            }
        }
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "updateTree").updateTree();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "expand").expand();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
    }
    

    // throws Exception
    pub fn explode(self: *Self, howMuch: i32, explosionType: i32) void {
        _ = explosionType;
        const graphicItemArray: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(self.getGraphicItemHashMap().?, "keySet").keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ graphicItemArray[@intCast(index)] }));
            const basicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(VectorExplosionGenerator.getInstance().?, "createList", .{ Inheritance.receiverOf(item.?.getPointsInterface().?, "getPoints").getPoints(), howMuch, VectorExplosionGenerator.getInstance().?.RANDOM }));
            const newPoints: ?*Points = Points.create();
            _ = Inheritance.call(newPoints.?, "addPoints", .{ basicArrayList });
            _ = Inheritance.call(item.?, "setPointsInterface", .{ newPoints });
            const angleDelta: i32 = Inheritance.call(RandomRotationFactory.getInstance().?, "getNextRandomAngle", .{ howMuch });
            _ = Inheritance.call(item.?, "setAngle", .{ angleDelta });
            }
        }
        _ = self.repaint();
    }
    

    // throws Exception
    pub fn mirror(self: *Self) void {
        const width: i32 = Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth();
        const graphicItemArray: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(self.getGraphicItemHashMap().?, "keySet").keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ graphicItemArray[@intCast(index)] }));
            const basicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(VectorMirrorGenerator.getInstance().?, "getInstance", .{ Inheritance.receiverOf(item.?.getPointsInterface().?, "getPoints").getPoints(), width }));
            const newPoints: ?*Points = Points.create();
            _ = Inheritance.call(newPoints.?, "addPoints", .{ basicArrayList });
            _ = Inheritance.call(item.?, "setPointsInterface", .{ newPoints });
            }
        }
        _ = self.repaint();
    }
    

    // throws Exception
    pub fn center(self: *Self) void {
        _ = Inheritance.call(VectorCenterGenerator.create(), "transform", .{ self.getGraphicItemHashMap() });
        _ = self.repaint();
    }
    

    pub fn setNewTool(self: *Self) void {
        { // try
            _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Tool Selected") });
            self.selectedTool = Inheritance.upcast(@TypeOf(self.selectedTool), Inheritance.call(Inheritance.receiverOf(ToolFactory.getInstance().?, "getSelectedToolFactory").getSelectedToolFactory().?, "getInstance", .{ self }));
            const newNode: ?*MutableTreeNode = Inheritance.upcast(?*MutableTreeNode, self.selectedTool.?.getTreeNode());
            _ = Inheritance.call(self.getGraphicItemHashMap().?, "put", .{ newNode, self.selectedTool });
            _ = Inheritance.call(self.canvasTreeNode.?, "add", .{ newNode });
            if (self.getSelectedTool() == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Tool Selected"); _ = self; _ = String.literal("setSelectedTool"); break :exception error.GraphicsException; }});
            }
        }
        // catch (Exception e):
    }
    

    // throws Exception
    pub fn duplicateGraphicItem(self: *Self, graphicItem: ?*GraphicItemInterface) void {
        const graphicItemClone: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, graphicItem.?.duplicate());
        _ = Inheritance.call(self.getGraphicItemHashMap().?, "put", .{ graphicItemClone.?.getTreeNode(), graphicItemClone });
        _ = Inheritance.call(self.canvasTreeNode.?, "add", .{ graphicItemClone.?.getTreeNode() });
    }
    

    // throws Exception
    pub fn duplicateGraphicItemHashMap(self: *Self, hashMap: ?*HashMap) void {
        const mutableTreeNodeArray: []?Object = Inheritance.receiverOf(hashMap.?.keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(mutableTreeNodeArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const treeNode: ?*MutableTreeNode = Inheritance.cast(?*MutableTreeNode, mutableTreeNodeArray[@intCast(index)]);
            const graphicItem: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(hashMap.?, "get", .{ treeNode }));
            _ = Inheritance.call(self, "duplicateGraphicItem", .{ graphicItem });
            }
        }
    }
    

    pub fn getGraphicItemHashMap(self: *Self) ?*HashMap {
        return self.graphicItemHashMap;
    }
    

    pub fn getXPixelsPerWorkAreaPixel(self: *Self) i32 {
        const x: i32 = (divide_N74221: { const left_N74221 = Inheritance.receiverOf(self.getGrid().?.grid.?, "getX").getX() * (Inheritance.receiver(self, "getWidth").getWidth() - 10); const right_N74221 = Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth(); break :divide_N74221 if (comptime @typeInfo(@TypeOf(left_N74221)) == .int or @TypeOf(left_N74221) == comptime_int) @divTrunc(left_N74221, right_N74221) else left_N74221 / right_N74221; });
        if (Inheritance.receiverOf(self.getGrid().?, "getZoom").getZoom() == 1) {
            return 1;
        } else {
            return x;
        }
    }
    

    pub fn getYPixelsPerWorkAreaPixel(self: *Self) i32 {
        const y: i32 = (divide_N74420: { const left_N74420 = Inheritance.receiverOf(self.getGrid().?.grid.?, "getY").getY() * (Inheritance.receiver(self, "getHeight").getHeight() - 10); const right_N74420 = Inheritance.receiverOf(self.getCanvasDimension().?, "getHeight").getHeight(); break :divide_N74420 if (comptime @typeInfo(@TypeOf(left_N74420)) == .int or @TypeOf(left_N74420) == comptime_int) @divTrunc(left_N74420, right_N74420) else left_N74420 / right_N74420; });
        if (Inheritance.receiverOf(self.getGrid().?, "getZoom").getZoom() == 1) {
            return 1;
        } else {
            return y;
        }
    }
    

    pub fn getSelectedTool(self: *Self) ?*GraphicItemInterface {
        return self.selectedTool;
    }
    

    pub fn drawItems(self: *Self, graphics: ?*Graphics) void {
        const angleDouble: ?*Double = Inheritance.callStatic(Double, "create1", .{ self.angle });
        const graphicItemArray: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(self.getGraphicItemHashMap().?, "keySet").keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ graphicItemArray[@intCast(index)] }));
            _ = Inheritance.call(item.?, "paint", .{ graphics, angleDouble, self.getCanvasDimension(), self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
            }
        }
    }
    

    pub fn drawGrid(self: *Self, graphics: ?*Graphics) void {
        const xAdjust: i32 = (divide_N75101: { const left_N75101 = (@rem(Inheritance.receiver(self, "getWidth").getWidth(), self.getXPixelsPerWorkAreaPixel())); const right_N75101 = 2; break :divide_N75101 if (comptime @typeInfo(@TypeOf(left_N75101)) == .int or @TypeOf(left_N75101) == comptime_int) @divTrunc(left_N75101, right_N75101) else left_N75101 / right_N75101; });
        const yAdjust: i32 = (divide_N75164: { const left_N75164 = (@rem(Inheritance.receiver(self, "getHeight").getHeight(), self.getYPixelsPerWorkAreaPixel())); const right_N75164 = 2; break :divide_N75164 if (comptime @typeInfo(@TypeOf(left_N75164)) == .int or @TypeOf(left_N75164) == comptime_int) @divTrunc(left_N75164, right_N75164) else left_N75164 / right_N75164; });
        const xLeft: i32 = xAdjust;
        const yUpper: i32 = yAdjust;
        const xRight: i32 = Inheritance.receiver(self, "getWidth").getWidth() - xAdjust;
        const yLower: i32 = Inheritance.receiver(self, "getHeight").getHeight() - yAdjust;
        _ = Inheritance.call(graphics.?, "setColor", .{ CanvasJPanel.gridColor });
        {
            var value: i32 = yAdjust;
            while (value <= Inheritance.receiver(self, "getHeight").getHeight() - yAdjust) : (value += self.getYPixelsPerWorkAreaPixel()) {
            _ = Inheritance.call(graphics.?, "drawLine", .{ xLeft, value, xRight, value });
            }
        }
        {
            var value: i32 = xAdjust;
            while (value <= Inheritance.receiver(self, "getWidth").getWidth() - xAdjust) : (value += self.getYPixelsPerWorkAreaPixel()) {
            _ = Inheritance.call(graphics.?, "drawLine", .{ value, yUpper, value, yLower });
            }
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        { // try
            if (self.getGrid().?.isChanged) {
                _ = Inheritance.call(graphics.?, "setColor", .{ CanvasJPanel.backgroundColor });
                _ = Inheritance.call(graphics.?, "fillRect", .{ 0, 0, Inheritance.receiver(self, "getWidth").getWidth(), Inheritance.receiver(self, "getHeight").getHeight() });
                if (Inheritance.receiverOf(self.getGrid().?, "getZoom").getZoom() > 2 and self.getGrid().?.isGridOn and self.getGrid().?.isGridPossible) {
                    _ = self.setDefaultGrid();
                    _ = Inheritance.call(self, "drawGrid", .{ graphics });
                }
                _ = Inheritance.call(self, "drawItems", .{ graphics });
                _ = Inheritance.call(graphics.?, "drawString", .{ String.valueOf(Inheritance.callStatic(Double, "create1", .{ self.getAngle() }).?), Inheritance.receiver(self, "getWidth").getWidth() - 75, Inheritance.receiver(self, "getHeight").getHeight() - 15 });
                self.grid.?.isChanged = false;
            }
        }
        // catch (Exception e):
    }
    

    pub fn repaint(self: *Self) void {
        if (self.grid != null) {
            self.grid.?.isChanged = true;
        }
        _ = self.base.repaint();
    }
    

    // throws Exception
    pub fn toDom(self: *Self) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(CanvasDom, "create1", .{ self }).toDom());
    }
    

    pub fn changed(self: *Self) void {
        self.grid.?.isChanged = true;
    }
    

    pub fn mouseClicked(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ MouseStrings.getInstance().?.MOUSE_CLICKED_LABEL + Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
        if (self.getSelectedTool() != null and Inheritance.receiverOf(self.getSelectedTool().?, "isActive").isActive()) {
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
            _ = Inheritance.call(graphicItem.?, "mouseClicked", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
        } else {
            _ = self.setNewTool();
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
            if (graphicItem != null) {
                _ = Inheritance.call(graphicItem.?, "mouseClicked", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
            }
        }
        self.grid.?.isChanged = true;
        _ = self.repaint();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "updateTree").updateTree();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "expand").expand();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
    }
    

    pub fn mouseEntered(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
    }
    

    pub fn mouseExited(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
    }
    

    pub fn mousePressed(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ MouseStrings.getInstance().?.MOUSE_PRESSED_LABEL + Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
        if (self.getSelectedTool() != null) {
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
            _ = Inheritance.call(graphicItem.?, "mousePressed", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
        }
        _ = Inheritance.receiver(self, "requestFocus").requestFocus();
        self.grid.?.isChanged = true;
        _ = self.repaint();
    }
    

    pub fn mouseReleased(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ MouseStrings.getInstance().?.MOUSE_RELEASED_LABEL + Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
        const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
        if (graphicItem != null) {
            _ = Inheritance.call(graphicItem.?, "mouseReleased", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
        }
        _ = Inheritance.receiver(self, "requestFocus").requestFocus();
        self.grid.?.isChanged = true;
        _ = self.repaint();
    }
    

    pub fn mouseDragged(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ MouseStrings.getInstance().?.MOUSE_DRAGGED_LABEL + Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
        const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
        if (graphicItem != null) {
            _ = Inheritance.call(graphicItem.?, "mouseDragged", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
        }
        _ = Inheritance.receiver(self, "requestFocus").requestFocus();
        self.grid.?.isChanged = true;
        _ = self.repaint();
    }
    

    pub fn mouseMoved(self: *Self, mouseEvent: ?*MouseEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatusNoLog", .{ MouseStrings.getInstance().?.MOUSE_MOVED_LABEL + Inheritance.call(self, "logMouseEvent", .{ mouseEvent }) });
        if (self.getSelectedTool() != null and Inheritance.receiverOf(self.getSelectedTool().?, "isActive").isActive()) {
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
            _ = Inheritance.call(graphicItem.?, "mouseMoved", .{ mouseEvent, self.getXPixelsPerWorkAreaPixel(), self.getYPixelsPerWorkAreaPixel() });
        }
        _ = Inheritance.receiver(self, "requestFocus").requestFocus();
        self.grid.?.isChanged = true;
        _ = self.repaint();
    }
    

    pub fn logMouseEvent(self: *Self, mouseEvent: ?*MouseEvent) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ PositionStrings.getInstance().?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast((divide_N78779: { const left_N78779 = mouseEvent.?.getX(); const right_N78779 = self.getXPixelsPerWorkAreaPixel(); break :divide_N78779 if (comptime @typeInfo(@TypeOf(left_N78779)) == .int or @TypeOf(left_N78779) == comptime_int) @divTrunc(left_N78779, right_N78779) else left_N78779 / right_N78779; }))) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PositionStrings.getInstance().?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast((divide_N78928: { const left_N78928 = mouseEvent.?.getY(); const right_N78928 = self.getYPixelsPerWorkAreaPixel(); break :divide_N78928 if (comptime @typeInfo(@TypeOf(left_N78928)) == .int or @TypeOf(left_N78928) == comptime_int) @divTrunc(left_N78928, right_N78928) else left_N78928 / right_N78928; }))) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Key Pressed") });
        { // try
            const graphicItemArray: []?Object = Inheritance.receiverOf(self.graphicItemHashMap.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(graphicItemArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const graphicItemInterface: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.graphicItemHashMap.?, "get", .{ graphicItemArray[@intCast(index)] }));
                const keyCode: i32 = keyEvent.?.getKeyCode();
                if (graphicItemInterface.?.isActive()) {
                    if (keyCode == keyEvent.?.VK_UP) {
                        _ = Inheritance.call(graphicItemInterface.?, "translate", .{ 0, -1 });
                    } else if (keyCode == keyEvent.?.VK_DOWN) {
                        _ = Inheritance.call(graphicItemInterface.?, "translate", .{ 0, 1 });
                    } else if (keyCode == keyEvent.?.VK_LEFT) {
                        _ = Inheritance.call(graphicItemInterface.?, "translate", .{ -1, 0 });
                    } else if (keyCode == keyEvent.?.VK_RIGHT) {
                        _ = Inheritance.call(graphicItemInterface.?, "translate", .{ 1, 0 });
                    }
                }
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, self.gameInputStrings.?.KEY_PRESSED, e });
        if (self.getSelectedTool() != null and Inheritance.receiverOf(self.getSelectedTool().?, "isActive").isActive()) {
            _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Key Pressed for Tool") });
            const graphicItem: ?*GraphicItemInterface = Inheritance.upcast(?*GraphicItemInterface, self.getSelectedTool());
            _ = Inheritance.call(graphicItem.?, "keyPressed", .{ keyEvent });
        } else {
            _ = self.setNewTool();
        }
        self.grid.?.isChanged = true;
        _ = self.repaint();
    }
    

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn delete(self: *Self, evt: ?*MyGraphicItemEvent) void {
        _ = Inheritance.call(self.getGraphicItemHashMap().?, "remove", .{ Inheritance.receiver(evt.?, "getTreeNode").getTreeNode() });
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "updateTree").updateTree();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "expand").expand();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
    }
    

    pub fn deselect(self: *Self, evt: ?*MyGraphicItemEvent) void {
        const graphicItemInterface: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ Inheritance.receiver(evt.?, "getTreeNode").getTreeNode() }));
        if (graphicItemInterface != null) {
            _ = Inheritance.call(graphicItemInterface.?, "setColor", .{ Color.WHITE });
            _ = graphicItemInterface.?.deactivate();
            _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
        }
    }
    

    pub fn highlight(self: *Self, evt: ?*MyGraphicItemEvent) void {
        const graphicItemInterface: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ Inheritance.receiver(evt.?, "getTreeNode").getTreeNode() }));
        if (graphicItemInterface != null) {
            _ = Inheritance.call(graphicItemInterface.?, "setColor", .{ Color.YELLOW });
            _ = graphicItemInterface.?.activate();
            _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
        }
    }
    

    // throws Exception
    pub fn duplicate(self: *Self) ?*CanvasJPanel {
        const newCanvasJPanel: ?*CanvasJPanel = Inheritance.callStatic(CanvasJPanel, "create4", .{ self.workAreaJTreeJPanel, Inheritance.receiver(self, "getSize").getSize(), Inheritance.receiverOf(self.getCanvasDimension().?, "getWidth").getWidth(), Inheritance.receiverOf(self.getCanvasDimension().?, "getHeight").getHeight() });
        _ = Inheritance.call(newCanvasJPanel.?, "setGrid", .{ Inheritance.receiverOf(self.getGrid().?, "getGrid").getGrid() });
        _ = Inheritance.call(newCanvasJPanel.?, "setAngle", .{ self.getAngle() });
        _ = Inheritance.call(newCanvasJPanel.?, "duplicateGraphicItemHashMap", .{ self.getGraphicItemHashMap() });
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "updateTree").updateTree();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "expand").expand();
        _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
        return newCanvasJPanel;
    }
    

    // throws Exception
    pub fn duplicate1(self: *Self, event: ?*MyGraphicItemEvent) void {
        const treeNode: ?*MutableTreeNode = Inheritance.upcast(?*MutableTreeNode, Inheritance.receiver(event.?, "getTreeNode").getTreeNode());
        const graphicItem: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ treeNode }));
        if (graphicItem != null) {
            _ = Inheritance.call(self, "duplicateGraphicItem", .{ graphicItem });
            _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "updateTree").updateTree();
            _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "expand").expand();
            _ = Inheritance.receiver(self.workAreaJTreeJPanel.?, "repaint").repaint();
        }
    }
    

    pub fn rotate(self: *Self, event: ?*MyGraphicItemEvent) void {
        const treeNode: ?*MutableTreeNode = Inheritance.upcast(?*MutableTreeNode, Inheritance.receiver(event.?, "getTreeNode").getTreeNode());
        const graphicItem: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(self.getGraphicItemHashMap().?, "get", .{ treeNode }));
        if (graphicItem != null) {
            _ = Inheritance.call(graphicItem.?, "addAngle", .{ Inheritance.receiver(event.?, "getAngle").getAngle() });
        }
    }
    

    pub fn getCanvasDimension(self: *Self) ?*IntegerDimension {
        return self.canvasDimension;
    }
    

    pub fn setCanvasDimension(self: *Self, canvasDimension: ?*IntegerDimension) void {
        self.canvasDimension = canvasDimension;
    }
    

    pub fn getGrid(self: *Self) ?*Grid {
        return self.grid;
    }
};

