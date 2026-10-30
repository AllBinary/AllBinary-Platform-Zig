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
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const WorkAreaJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanel.zig").WorkAreaJPanel;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Node = @import("org/w3c/dom/Node.zig").Node;
const PointsUtil = @import("org/allbinary/graphics/j2me/workarea/tools/PointsUtil.zig").PointsUtil;
const Integer = @import("java/lang/Integer.zig").Integer;
const Double = @import("java/lang/Double.zig").Double;

pub const PointsDomUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil";
    LINES: ?*String = null,
    POINTONE: ?*String = null,
    POINTTWO: ?*String = null,
    ROTATEDPOINTONE: ?*String = null,
    ROTATEDPOINTTWO: ?*String = null,
    LINE: ?*String = null,
    var instance: ?*PointsDomUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PointsDomUtil.create();
    }

    fn initFields(this: *Self) void {
        this.LINES = String.literal("lines");
        this.POINTONE = String.literal("pointOne");
        this.POINTTWO = String.literal("pointTwo");
        this.ROTATEDPOINTONE = String.literal("rotatedPointOne");
        this.ROTATEDPOINTTWO = String.literal("rotatedPointTwo");
        this.LINE = String.literal("line");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PointsDomUtil {
        return Inheritance.upcast(?*PointsDomUtil, PointsDomUtil.instance);
    }
    

    // throws Exception
    pub fn toDom(self: *Self, canvasDom: ?*CanvasDom, pointVector: ?*BasicArrayList) ?*Node {
        const tempPointVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(PointsUtil.getInstance().?, "doTransforms", .{ pointVector, Inheritance.callStatic(Double, "create1", .{ canvasDom.?.getAngle() }), Inheritance.call(PointFactory.getInstance().?, "createXY", .{ Inheritance.receiverOf(canvasDom.?.getDimension().?, "getWidth").getWidth(), Inheritance.receiverOf(canvasDom.?.getDimension().?, "getHeight").getHeight() }) }));
        const document: ?*Document = Inheritance.upcast(?*Document, WorkAreaJPanel.getDocument());
        const linesNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.LINES }));
        const size2: i32 = tempPointVector.?.size();
        const size: i32 = pointVector.?.size();
        var firstPoint: ?*GPoint = null;
        var rotatedFirstPoint: ?*GPoint = null;
        var index: i32 = 0;
        if (index < size and index < size2) {
            rotatedFirstPoint = Inheritance.cast(?*GPoint, Inheritance.call(tempPointVector.?, "get", .{ index }));
            firstPoint = Inheritance.cast(?*GPoint, Inheritance.call(pointVector.?, "get", .{ index }));
            index += 1;
        }
        while (index < size and index < size2) {
            const lineNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ self.LINE }));
            const rotatedSecondPoint: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(tempPointVector.?, "get", .{ index }));
            const secondPoint: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(pointVector.?, "get", .{ index }));
            const pointOneNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "getPointNode", .{ firstPoint, self.POINTONE }));
            const pointTwoNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "getPointNode", .{ secondPoint, self.POINTTWO }));
            const rotatedPointOneNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "getPointNode", .{ rotatedFirstPoint, self.ROTATEDPOINTONE }));
            const rotatedPointTwoNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "getPointNode", .{ rotatedSecondPoint, self.ROTATEDPOINTTWO }));
            _ = Inheritance.call(lineNode.?, "appendChild", .{ pointOneNode });
            _ = Inheritance.call(lineNode.?, "appendChild", .{ pointTwoNode });
            _ = Inheritance.call(lineNode.?, "appendChild", .{ rotatedPointOneNode });
            _ = Inheritance.call(lineNode.?, "appendChild", .{ rotatedPointTwoNode });
            firstPoint = secondPoint;
            rotatedFirstPoint = rotatedSecondPoint;
            _ = Inheritance.call(linesNode.?, "appendChild", .{ lineNode });
            index += 1;
        }
        return linesNode;
    }
    

    pub fn getPointNode(self: *Self, point: ?*GPoint, pointName: ?*String) ?*Node {
        _ = self;
        const document: ?*Document = Inheritance.upcast(?*Document, WorkAreaJPanel.getDocument());
        const pointNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ pointName }));
        const xNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ PositionStrings.getInstance().?.X }));
        const xTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(point.?.getX()) }));
        _ = Inheritance.call(xNode.?, "appendChild", .{ xTextNode });
        const yNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createElement", .{ PositionStrings.getInstance().?.Y }));
        const yTextNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(document.?, "createTextNode", .{ String.valueOf(point.?.getY()) }));
        _ = Inheritance.call(yNode.?, "appendChild", .{ yTextNode });
        _ = Inheritance.call(pointNode.?, "appendChild", .{ xNode });
        _ = Inheritance.call(pointNode.?, "appendChild", .{ yNode });
        return pointNode;
    }
};

