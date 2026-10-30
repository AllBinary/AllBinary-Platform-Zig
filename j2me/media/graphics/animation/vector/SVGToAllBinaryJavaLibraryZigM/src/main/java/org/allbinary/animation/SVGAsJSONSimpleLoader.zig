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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const GraphicsStrings = @import("org/allbinary/graphics/GraphicsStrings.zig").GraphicsStrings;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const JSONArray = @import("org/json/me/JSONArray.zig").JSONArray;
const JSONException = @import("org/json/me/JSONException.zig").JSONException;
const JSONObject = @import("org/json/me/JSONObject.zig").JSONObject;
const ShapeType = @import("org/allbinary/animation/ShapeType.zig").ShapeType;
const ShapeTypeFactory = @import("org/allbinary/animation/ShapeTypeFactory.zig").ShapeTypeFactory;
const System = @import("java/lang/System.zig").System;
const Double = @import("java/lang/Double.zig").Double;

pub const SVGAsJSONSimpleLoader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.SVGAsJSONSimpleLoader";
    graphicsStrings: ?*GraphicsStrings = null,
    shapeTypeFactory: ?*ShapeTypeFactory = null,
    KEY_SVG: ?*String = null,
    KEY_X1: ?*String = null,
    KEY_Y1: ?*String = null,
    KEY_X2: ?*String = null,
    KEY_Y2: ?*String = null,
    KEY_CX: ?*String = null,
    KEY_CY: ?*String = null,
    KEY_R: ?*String = null,
    KEY_X: ?*String = null,
    KEY_Y: ?*String = null,
    ERROR_PARSE_SVG_JSON: ?*String = null,
    ERROR_MISSING_KEY_PREFIX: ?*String = null,
    ERROR_INVALID_NUMBER_PREFIX: ?*String = null,
    ERROR_EXPECTED_OBJECT_PREFIX: ?*String = null,
    EMPTY_POINTS: [][]i32 = &.{},
    SHAPE_SEPARATOR: []i32 = &.{},
    CIRCLE_SEGMENTS: i32 = 0,
    var instance: ?*SVGAsJSONSimpleLoader = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SVGAsJSONSimpleLoader.create();
    }

    fn initFields(this: *Self) void {
        this.graphicsStrings = Inheritance.upcast(?*GraphicsStrings, GraphicsStrings.getInstance());
        this.shapeTypeFactory = Inheritance.upcast(?*ShapeTypeFactory, ShapeTypeFactory.getInstance());
        this.KEY_SVG = String.literal("svg");
        this.KEY_X1 = String.literal("x1");
        this.KEY_Y1 = String.literal("y1");
        this.KEY_X2 = String.literal("x2");
        this.KEY_Y2 = String.literal("y2");
        this.KEY_CX = String.literal("cx");
        this.KEY_CY = String.literal("cy");
        this.KEY_R = String.literal("r");
        this.KEY_X = Inheritance.upcast(?*String, PositionStrings.getInstance().?.X);
        this.KEY_Y = Inheritance.upcast(?*String, PositionStrings.getInstance().?.Y);
        this.ERROR_PARSE_SVG_JSON = String.literal("Unable to parse SVG JSON");
        this.ERROR_MISSING_KEY_PREFIX = String.literal("Missing key: ");
        this.ERROR_INVALID_NUMBER_PREFIX = String.literal("Invalid number for key: ");
        this.ERROR_EXPECTED_OBJECT_PREFIX = String.literal("Expected object for: ");
        this.EMPTY_POINTS = PrimitiveIntUtil.getTwoDimensionalArrayInstance();
        this.SHAPE_SEPARATOR = @constCast(&[_]i32{ 1000, 1000 })[0..];
        this.CIRCLE_SEGMENTS = 16;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SVGAsJSONSimpleLoader {
        return Inheritance.upcast(?*SVGAsJSONSimpleLoader, SVGAsJSONSimpleLoader.instance);
    }
    

    // throws Exception
    pub fn load(self: *Self, svgAsJson: ?*String) [][]i32 {
        if (svgAsJson == null) {
            return self.EMPTY_POINTS;
        }
        { // try
            const root: ?*JSONObject = Inheritance.callStatic(JSONObject, "create1", .{ svgAsJson });
            const svgValue: ?Object = Inheritance.upcast(?Object, Inheritance.call(root.?, "opt", .{ self.KEY_SVG }));
            const svg: ?*JSONObject = Inheritance.upcast(?*JSONObject, (if (svgValue == null) root else Inheritance.call(self, "asObject", .{ svgValue, self.KEY_SVG })));
            const pointVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const keys: ?*Enumeration = Inheritance.upcast(?*Enumeration, svg.?.keys());
            while (keys.?.hasMoreElements()) {
                const key: ?*String = Inheritance.cast(?*String, keys.?.nextElement());
                const value: ?Object = Inheritance.upcast(?Object, Inheritance.call(svg.?, "opt", .{ key }));
                if (Object.equals(Object.of(self.shapeTypeFactory.?.KEY_LINE), key)) {
                    _ = Inheritance.call(self, "addShapes", .{ pointVector, value, self.shapeTypeFactory.?.LINE });
                } else if (Object.equals(Object.of(self.shapeTypeFactory), key)) {
                    _ = Inheritance.call(self, "addShapes", .{ pointVector, value, self.shapeTypeFactory.?.CIRCLE });
                } else if (Object.equals(Object.of(self.shapeTypeFactory.?.KEY_RECT), key) or Object.equals(Object.of(self.shapeTypeFactory.?.KEY_RECTANGLE), key)) {
                    _ = Inheritance.call(self, "addShapes", .{ pointVector, value, self.shapeTypeFactory.?.RECTANGLE });
                }
            }
            return Inheritance.call(self, "toPoints", .{ pointVector });
        }
        // catch (JSONException e):
//             std.debug.panic("{any}", .{exception: { _ = self.ERROR_PARSE_SVG_JSON; _ = e; break :exception error.IllegalArgumentException; }});
    }
    

    // throws Exception
    pub fn addShapes(self: *Self, pointVector: ?*BasicArrayList, value: ?Object, shapeType: ?*ShapeType) void {
        if (Object.instanceOf(Object.of(value), JSONArray)) {
            const array: ?*JSONArray = Inheritance.cast(?*JSONArray, value);
            const size: i32 = array.?.length();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(self, "addShape", .{ pointVector, Inheritance.call(array.?, "opt", .{ index }), shapeType });
                }
            }
        } else {
            _ = Inheritance.call(self, "addShape", .{ pointVector, value, shapeType });
        }
    }
    

    // throws Exception
    pub fn addShape(self: *Self, pointVector: ?*BasicArrayList, value: ?Object, shapeType: ?*ShapeType) void {
        const shape: ?*JSONObject = Inheritance.upcast(?*JSONObject, Inheritance.call(self, "asObject", .{ value, shapeType.?.getName() }));
        if (Object.same(shapeType, self.shapeTypeFactory.?.LINE)) {
            _ = Inheritance.call(self, "addLine", .{ pointVector, shape });
        } else if (Object.same(shapeType, self.shapeTypeFactory.?.CIRCLE)) {
            _ = Inheritance.call(self, "addCircle", .{ pointVector, shape });
        } else {
            _ = Inheritance.call(self, "addRectangle", .{ pointVector, shape });
        }
    }
    

    // throws Exception
    pub fn addLine(self: *Self, pointVector: ?*BasicArrayList, line: ?*JSONObject) void {
        _ = Inheritance.call(self, "addPoint", .{ pointVector, Inheritance.call(self, "readInt", .{ line, self.KEY_X1 }), Inheritance.call(self, "readInt", .{ line, self.KEY_Y1 }) });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, Inheritance.call(self, "readInt", .{ line, self.KEY_X2 }), Inheritance.call(self, "readInt", .{ line, self.KEY_Y2 }) });
        _ = Inheritance.call(self, "addSeparator", .{ pointVector });
    }
    

    // throws Exception
    pub fn addCircle(self: *Self, pointVector: ?*BasicArrayList, circle: ?*JSONObject) void {
        const cx: i32 = Inheritance.call(self, "readInt", .{ circle, self.KEY_CX });
        const cy: i32 = Inheritance.call(self, "readInt", .{ circle, self.KEY_CY });
        const radius: i32 = Inheritance.call(self, "readInt", .{ circle, self.KEY_R });
        {
            var index: i32 = 0;
            while (index <= self.CIRCLE_SEGMENTS) : (index += 1) {
            const angle: f64 = (divide_N69101: { const left_N69101 = (Math.PI * 2.0 * index); const right_N69101 = self.CIRCLE_SEGMENTS; break :divide_N69101 if (comptime @typeInfo(@TypeOf(left_N69101)) == .int or @TypeOf(left_N69101) == comptime_int) @divTrunc(left_N69101, right_N69101) else left_N69101 / right_N69101; });
            const x: i32 = @as(i32, @intCast(@round(cx + (@cos(angle) * radius))));
            const y: i32 = @as(i32, @intCast(@round(cy + (@sin(angle) * radius))));
            _ = Inheritance.call(self, "addPoint", .{ pointVector, x, y });
            }
        }
        _ = Inheritance.call(self, "addSeparator", .{ pointVector });
    }
    

    // throws Exception
    pub fn addRectangle(self: *Self, pointVector: ?*BasicArrayList, rectangle: ?*JSONObject) void {
        const x: i32 = Inheritance.call(self, "readInt", .{ rectangle, self.KEY_X, 0 });
        const y: i32 = Inheritance.call(self, "readInt", .{ rectangle, self.KEY_Y, 0 });
        const width: i32 = Inheritance.call(self, "readInt", .{ rectangle, self.graphicsStrings.?.WIDTH });
        const height: i32 = Inheritance.call(self, "readInt", .{ rectangle, self.graphicsStrings.?.HEIGHT });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, x, y });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, x + width, y });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, x + width, y + height });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, x, y + height });
        _ = Inheritance.call(self, "addPoint", .{ pointVector, x, y });
        _ = Inheritance.call(self, "addSeparator", .{ pointVector });
    }
    

    pub fn addPoint(self: *Self, pointVector: ?*BasicArrayList, x: i32, y: i32) void {
        _ = self;
        _ = Inheritance.call(pointVector.?, "add", .{ @constCast(&[_]i32{ x, y })[0..] });
    }
    

    pub fn addSeparator(self: *Self, pointVector: ?*BasicArrayList) void {
        _ = Inheritance.call(pointVector.?, "add", .{ @constCast(&[_]i32{ self.SHAPE_SEPARATOR[@intCast(0)], self.SHAPE_SEPARATOR[@intCast(1)] })[0..] });
    }
    

    // throws Exception
    pub fn readInt(self: *Self, anyType: ?*JSONObject, key: ?*String) i32 {
        const value: ?Object = Inheritance.upcast(?Object, Inheritance.call(anyType.?, "get", .{ key }));
        if (value == null) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(self.ERROR_MISSING_KEY_PREFIX, key); break :exception error.IllegalArgumentException; }});
        }
        return Inheritance.call(self, "toInt", .{ value, key });
    }
    

    pub fn readInt3(self: *Self, anyType: ?*JSONObject, key: ?*String, defaultValue: i32) i32 {
        { // try
            if (Inheritance.call(anyType.?, "has", .{ key })) {
                const value: ?Object = Inheritance.upcast(?Object, Inheritance.call(anyType.?, "get", .{ key }));
                return Inheritance.call(self, "toInt", .{ value, key });
            }
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
        return defaultValue;
    }
    

    pub fn toInt(self: *Self, value: ?Object, key: ?*String) i32 {
        if (Object.instanceOf(Object.of(value), Number)) {
            return @as(i32, @intCast(@round(Inheritance.receiverOf((Inheritance.cast(?*Number, value)).?, "doubleValue").doubleValue())));
        }
        if (Object.instanceOf(Object.of(value), String)) {
            return @as(i32, @intCast(@round((std.fmt.parseFloat(f64, Inheritance.cast(?*String, value).?.bytes) catch @panic("java.lang.NumberFormatException")))));
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(self.ERROR_INVALID_NUMBER_PREFIX, key); break :exception error.IllegalArgumentException; }});
    }
    

    pub fn asObject(self: *Self, value: ?Object, name: ?*String) ?*JSONObject {
        if (Object.instanceOf(Object.of(value), JSONObject)) {
            return Inheritance.cast(?*JSONObject, value);
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(self.ERROR_EXPECTED_OBJECT_PREFIX, name); break :exception error.IllegalArgumentException; }});
    }
    

    pub fn toPoints(self: *Self, pointVector: ?*BasicArrayList) [][]i32 {
        if (pointVector.?.size() == 0) {
            return self.EMPTY_POINTS;
        }
        const points: [][]i32 = array_N71644: { const array_N71644_array = allocator.alloc([]i32, @intCast(pointVector.?.size())) catch unreachable; for (array_N71644_array) |*array_N71644_row| { array_N71644_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N71644_row.*, 0); } break :array_N71644 array_N71644_array; };
        {
            var index: i32 = 0;
            while (index < pointVector.?.size()) : (index += 1) {
            const point: []i32 = Inheritance.cast([]i32, Inheritance.call(pointVector.?, "get", .{ index }));
            points[@intCast(index)] = Inheritance.upcast(@TypeOf(points[@intCast(index)]), point);
            }
        }
        return points;
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        _ = args;
        const svgAsJson: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("{\"svg\": {\n"), String.literal("    \"rect\": {\n")), String.literal("        \"width\": 20,\n")), String.literal("        \"fill\": \"#008c00\",\n")), String.literal("        \"height\": 20\n")), String.literal("    },\n")), String.literal("    \"xmlns\": \"http://www.w3.org/2000/svg\",\n")), String.literal("    \"width\": 20,\n")), String.literal("    \"height\": 20\n")), String.literal("}}\n")));
        const points: [][]i32 = Inheritance.call(SVGAsJSONSimpleLoader.getInstance().?, "load", .{ svgAsJson });
        const stringBuilder: ?*StringMaker = StringMaker.create();
        const size: i32 = @as(i32, @intCast(points.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const size2: i32 = @as(i32, @intCast(points[@intCast(index)].len));
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                _ = Inheritance.call(stringBuilder.?, "appendint", .{ @as(i32, @intCast(points[@intCast(index)][@intCast(index2)])) });
                _ = Inheritance.call(stringBuilder.?, "append", .{ CommonSeps.getInstance().?.COMMA });
                }
            }
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(stringBuilder)))});
    }
};

