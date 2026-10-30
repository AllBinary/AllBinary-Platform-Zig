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
// package org.allbinary.animation.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const Points = @import("org/allbinary/graphics/j2me/workarea/tools/Points.zig").Points;
const BasicGraphicsPipeline = @import("org/allbinary/graphics/pipeline/BasicGraphicsPipeline.zig").BasicGraphicsPipeline;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const VectorCenterGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.VectorCenterGenerator";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    minX: i32 = 0,
    minY: i32 = 0,
    maxX: i32 = 0,
    maxY: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,
    width: i32 = 0,
    height: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.minX = @as(i32, std.math.maxInt(i32));
        this.minY = @as(i32, std.math.maxInt(i32));
        this.maxX = @as(i32, std.math.minInt(i32));
        this.maxY = @as(i32, std.math.minInt(i32));
        this.dx = 0;
        this.dy = 0;
        this.width = 0;
        this.height = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn calculate(self: *Self, hashMap: ?*HashMap) void {
        const graphicItemArray: []?Object = Inheritance.receiverOf(hashMap.?.keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(hashMap.?, "get", .{ graphicItemArray[@intCast(index)] }));
            if (Object.same(item.?.getName(), LinesGraphicItem.getStaticName())) {
                _ = Inheritance.call(self, "getInstance", .{ Inheritance.receiverOf(item.?.getPointsInterface().?, "getPoints").getPoints() });
            }
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("minX: "), self.minX), String.literal(" minY: ")), self.minY), String.literal(" maxX: ")), self.maxX), String.literal(" maxY: ")), self.maxY), self, self.commonStrings.?.GET_INSTANCE });
        _ = Inheritance.call(self, "setWidth", .{ self.maxX - self.minX });
        _ = Inheritance.call(self, "setHeight", .{ self.maxY - self.minY });
        var max: i32 = self.getWidth();
        if (self.getHeight() > max) {
            max = self.getHeight();
        }
        const middle: i32 = @divTrunc(max, 2);
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const s: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonLabels.?.WIDTH_LABEL }).?, "appendint", .{ self.getWidth() }).?, "append", .{ commonLabels.?.HEIGHT_LABEL }).?, "appendint", .{ self.getHeight() }).?, "append", .{ String.literal(" max: ") }).?, "appendint", .{ max }).?, "append", .{ String.literal(" middle: ") }).?, "appendint", .{ middle }))));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ s, self, self.commonStrings.?.GET_INSTANCE });
        const currentMiddleX: i32 = self.minX + @divTrunc(self.getWidth(), 2);
        const currentMiddleY: i32 = self.minY + @divTrunc(self.getHeight(), 2);
        self.dx = middle - currentMiddleX;
        self.dy = middle - currentMiddleY;
    }
    

    // throws Exception
    pub fn transform(self: *Self, hashMap: ?*HashMap) void {
        _ = Inheritance.call(self, "calculate", .{ hashMap });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal(" dx: ") }).?, "appendint", .{ self.dx }).?, "append", .{ String.literal(" dy: ") }).?, "appendint", .{ self.dy }))), self, self.commonStrings.?.GET_INSTANCE });
        const graphicItemArray: []?Object = Inheritance.receiverOf(hashMap.?.keySet().?, "toArray").toArray();
        const size: i32 = @as(i32, @intCast(graphicItemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*GraphicItemInterface = Inheritance.cast(?*GraphicItemInterface, Inheritance.call(hashMap.?, "get", .{ graphicItemArray[@intCast(index)] }));
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(VectorCenterGenerator, "translate", .{ Inheritance.receiverOf(item.?.getPointsInterface().?, "getPoints").getPoints(), self.dx, self.dy }));
            const newPoints: ?*Points = Points.create();
            _ = Inheritance.call(newPoints.?, "addPoints", .{ list });
            _ = Inheritance.call(item.?, "setPointsInterface", .{ newPoints });
            }
        }
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, pointVector: ?*BasicArrayList) void {
        { // try
            const size: i32 = pointVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const point: ?*GPoint = Inheritance.cast(?*GPoint, Inheritance.call(pointVector.?, "get", .{ index }));
                if (point.?.getX() < self.minX) {
                    self.minX = point.?.getX();
                }
                if (point.?.getX() > self.maxX) {
                    self.maxX = point.?.getX();
                }
                if (point.?.getY() < self.minY) {
                    self.minY = point.?.getY();
                }
                if (point.?.getY() > self.maxY) {
                    self.maxY = point.?.getY();
                }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.GET_INSTANCE, e });
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn translate(list: ?*BasicArrayList, x: i32, y: i32) ?*BasicArrayList {
        const graphicsPipe: ?*BasicGraphicsPipeline = Inheritance.callStatic(BasicGraphicsPipeline, "create1", .{ list });
        _ = graphicsPipe.?.createMatrix();
        _ = Inheritance.call(graphicsPipe.?, "translate", .{ x, y });
        return Inheritance.upcast(?*BasicArrayList, graphicsPipe.?.getMatrix());
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
};

