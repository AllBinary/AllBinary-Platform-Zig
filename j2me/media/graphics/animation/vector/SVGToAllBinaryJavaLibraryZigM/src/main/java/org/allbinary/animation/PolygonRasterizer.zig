// Generated Code Do Not Modify
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FixedPoint = @import("org/allbinary/animation/FixedPoint.zig").FixedPoint;
const PathParser = @import("org/allbinary/animation/PathParser.zig").PathParser;

pub const PolygonRasterizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.PolygonRasterizer";
    var instance: ?*PolygonRasterizer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PolygonRasterizer.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PolygonRasterizer {
        return Inheritance.upcast(?*PolygonRasterizer, PolygonRasterizer.instance);
    }
    

    pub fn getPixelBuffer(self: *Self, svgPath: ?*String, pathX: []i32, pathY: []i32, pixelBuffer: []i32, width: i32, height: i32) []i32 {
        _ = self;
        const pointCount: i32 = Inheritance.callStatic(PathParser, "parsePath", .{ svgPath, pathX, pathY, @as(i32, @intCast(pathX.len)) });
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(pixelBuffer.len))) : (i += 1) {
            pixelBuffer[@intCast(i)] = @as(i32, @bitCast(@as(u32, 0xFFFFFFFF)));
            }
        }
        _ = Inheritance.call(PolygonRasterizer.getInstance().?, "fillPolygon", .{ pathX, pathY, pointCount, pixelBuffer, width, height, @as(i32, @bitCast(@as(u32, 0xFFFF00FF))) });
        return pixelBuffer;
    }
    

    pub fn fillPolygon(self: *Self, polyX: []i32, polyY: []i32, numPoints: i32, buffer: []i32, width: i32, height: i32, colorRGB: i32) void {
        _ = self;
        if (numPoints < 3) {
            return;
        }
        const fixedPoint: ?*FixedPoint = Inheritance.upcast(?*FixedPoint, FixedPoint.getInstance());
        const x: []i32 = array_N66244: { const array_N66244_array = allocator.alloc(i32, @intCast(numPoints)) catch unreachable; @memset(array_N66244_array, 0); break :array_N66244 array_N66244_array; };
        const y: []i32 = array_N66299: { const array_N66299_array = allocator.alloc(i32, @intCast(numPoints)) catch unreachable; @memset(array_N66299_array, 0); break :array_N66299 array_N66299_array; };
        var minY: i32 = height;
        var maxY: i32 = 0;
        {
            var i: i32 = 0;
            while (i < numPoints) : (i += 1) {
            x[@intCast(i)] = Inheritance.call(fixedPoint.?, "toInt", .{ polyX[@intCast(i)] });
            y[@intCast(i)] = Inheritance.call(fixedPoint.?, "toInt", .{ polyY[@intCast(i)] });
            if (y[@intCast(i)] < minY) {
                minY = y[@intCast(i)];
            }
            if (y[@intCast(i)] > maxY) {
                maxY = y[@intCast(i)];
            }
            }
        }
        if (minY < 0) {
            minY = 0;
        }
        if (maxY >= height) {
            maxY = height - 1;
        }
        const scanlineX: []i32 = array_N66860: { const array_N66860_array = allocator.alloc(i32, @intCast(numPoints)) catch unreachable; @memset(array_N66860_array, 0); break :array_N66860 array_N66860_array; };
        {
            var scanY: i32 = minY;
            while (scanY <= maxY) : (scanY += 1) {
            var intersectCount: i32 = 0;
            {
                var i: i32 = 0;
                while (i < numPoints) : (i += 1) {
                const next: i32 = @rem((i + 1), numPoints);
                const x1: i32 = x[@intCast(i)];
                const y1: i32 = y[@intCast(i)];
                const x2: i32 = x[@intCast(next)];
                const y2: i32 = y[@intCast(next)];
                if ((y1 < scanY and y2 >= scanY) or (y2 < scanY and y1 >= scanY)) {
                    if (y2 != y1) {
                        const interX: i32 = x1 + @divTrunc((scanY - y1) * (x2 - x1), (y2 - y1));
                        scanlineX[@intCast(value_N67429: { const value_N67429_value = intersectCount; intersectCount += 1; break :value_N67429 value_N67429_value; })] = interX;
                    }
                }
                }
            }
            {
                var i: i32 = 0;
                while (i < intersectCount - 1) : (i += 1) {
                {
                    var j: i32 = i + 1;
                    while (j < intersectCount) : (j += 1) {
                    if (scanlineX[@intCast(i)] > scanlineX[@intCast(j)]) {
                        const temp: i32 = scanlineX[@intCast(i)];
                        scanlineX[@intCast(i)] = scanlineX[@intCast(j)];
                        scanlineX[@intCast(j)] = temp;
                    }
                    }
                }
                }
            }
            {
                var i: i32 = 0;
                while (i < intersectCount) : (i += 2) {
                if (i + 1 >= intersectCount) {
                    break;
                }
                var startX: i32 = scanlineX[@intCast(i)];
                var endX: i32 = scanlineX[@intCast(i + 1)];
                if (startX < 0) {
                    startX = 0;
                }
                if (endX >= width) {
                    endX = width - 1;
                }
                const rowOffset: i32 = scanY * width;
                {
                    var pixelX: i32 = startX;
                    while (pixelX <= endX) : (pixelX += 1) {
                    buffer[@intCast(rowOffset + pixelX)] = colorRGB;
                    }
                }
                }
            }
            }
        }
    }
    

    pub fn main(self: *Self, args: []?*String) void {
        _ = args;
        _ = self;
        const width: i32 = 100;
        const height: i32 = 100;
        const pathX: []i32 = array_N68730: { const array_N68730_array = allocator.alloc(i32, @intCast(200)) catch unreachable; @memset(array_N68730_array, 0); break :array_N68730 array_N68730_array; };
        const pathY: []i32 = array_N68784: { const array_N68784_array = allocator.alloc(i32, @intCast(200)) catch unreachable; @memset(array_N68784_array, 0); break :array_N68784 array_N68784_array; };
        const pixelBuffer: []i32 = array_N68838: { const array_N68838_array = allocator.alloc(i32, @intCast(width * height)) catch unreachable; @memset(array_N68838_array, 0); break :array_N68838 array_N68838_array; };
        const svgPath: ?*String = String.literal("M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z");
        _ = Inheritance.call(PolygonRasterizer.getInstance().?, "getPixelBuffer", .{ svgPath, pathX, pathY, pixelBuffer, width, height });
    }
};

