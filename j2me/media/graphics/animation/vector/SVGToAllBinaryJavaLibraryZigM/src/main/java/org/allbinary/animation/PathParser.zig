// Generated Code Do Not Modify
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const FixedPoint = @import("org/allbinary/animation/FixedPoint.zig").FixedPoint;
const PGUtil = @import("org/allbinary/animation/PGUtil.zig").PGUtil;
const Double = @import("java/lang/Double.zig").Double;

pub const PathParser = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.PathParser";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn tokenize(d: ?*String) []?*String {
        const tokens: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const sb: std.ArrayList(u8) = std.ArrayList(u8).init(allocator);
        {
            var i: i32 = 0;
            while (i < d.?.length()) : (i += 1) {
            const c: u16 = Inheritance.call(d.?, "charAt", .{ i });
            if (c == ' ' or c == ',' or c == '\t' or c == '\n' or c == '\r') {
                if (sb.?.length() > 0) {
                    _ = Inheritance.call(tokens.?, "add", .{ Object.toString(Object.of(sb)) });
                    _ = Inheritance.call(sb.?, "setLength", .{ 0 });
                }
            } else if (c == 'M' or c == 'm' or c == 'L' or c == 'l' or c == 'V' or c == 'v' or c == 'C' or c == 'c' or c == 'Z' or c == 'z') {
                if (sb.?.length() > 0) {
                    _ = Inheritance.call(tokens.?, "add", .{ Object.toString(Object.of(sb)) });
                    _ = Inheritance.call(sb.?, "setLength", .{ 0 });
                }
                _ = Inheritance.call(tokens.?, "add", .{ String.valueOf(c) });
            } else {
                _ = Inheritance.call(sb.?, "append", .{ c });
            }
            }
        }
        if (sb.?.length() > 0) {
            _ = Inheritance.call(tokens.?, "add", .{ Object.toString(Object.of(sb)) });
        }
        const res: []?*String = array_N66601: { const array_N66601_array = allocator.alloc(?*String, @intCast(tokens.?.size())) catch unreachable; @memset(array_N66601_array, null); break :array_N66601 array_N66601_array; };
        _ = Inheritance.call(tokens.?, "toArrayType", .{ res });
        return res;
    }
    

    pub fn parsePath(d: ?*String, outX: []i32, outY: []i32, maxPoints: i32) i32 {
        const tokens: []?*String = Inheritance.callStatic(PathParser, "tokenize", .{ d });
        const count: []i32 = @constCast(&[_]i32{ 0 })[0..];
        const fixedPoint: ?*FixedPoint = Inheritance.upcast(?*FixedPoint, FixedPoint.getInstance());
        var curX: i32 = 0;
        var curY: i32 = 0;
        var startX: i32 = 0;
        var startY: i32 = 0;
        var idx: i32 = 0;
        while (idx < @as(i32, @intCast(tokens.len))) {
            const tok: ?*String = Inheritance.upcast(?*String, tokens[@intCast(value_N67052: { const value_N67052_value = idx; idx += 1; break :value_N67052 value_N67052_value; })]);
            const cmd: u16 = Inheritance.call(tok.?, "charAt", .{ 0 });
            if (cmd == 'M' or cmd == 'm') {
                var x: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N69161: { const value_N69161_value = idx; idx += 1; break :value_N69161 value_N69161_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var y: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N69247: { const value_N69247_value = idx; idx += 1; break :value_N69247 value_N69247_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                if (cmd == 'm') {
                    x += curX;
                    y += curY;
                }
                curX = x;
                curY = y;
                startX = x;
                startY = y;
                outX[@intCast(count[@intCast(0)])] = curX;
                outY[@intCast(count[@intCast(0)])] = curY;
                count[@intCast(0)] += 1;
            } else if (cmd == 'L' or cmd == 'l') {
                var x: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N68738: { const value_N68738_value = idx; idx += 1; break :value_N68738 value_N68738_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var y: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N68824: { const value_N68824_value = idx; idx += 1; break :value_N68824 value_N68824_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                if (cmd == 'l') {
                    x += curX;
                    y += curY;
                }
                curX = x;
                curY = y;
                outX[@intCast(count[@intCast(0)])] = curX;
                outY[@intCast(count[@intCast(0)])] = curY;
                count[@intCast(0)] += 1;
            } else if (cmd == 'V' or cmd == 'v') {
                var y: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N68451: { const value_N68451_value = idx; idx += 1; break :value_N68451 value_N68451_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                if (cmd == 'v') {
                    y += curY;
                }
                curY = y;
                outX[@intCast(count[@intCast(0)])] = curX;
                outY[@intCast(count[@intCast(0)])] = curY;
                count[@intCast(0)] += 1;
            } else if (cmd == 'C' or cmd == 'c') {
                var x1: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N67572: { const value_N67572_value = idx; idx += 1; break :value_N67572 value_N67572_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var y1: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N67658: { const value_N67658_value = idx; idx += 1; break :value_N67658 value_N67658_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var x2: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N67744: { const value_N67744_value = idx; idx += 1; break :value_N67744 value_N67744_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var y2: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N67830: { const value_N67830_value = idx; idx += 1; break :value_N67830 value_N67830_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var x3: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N67916: { const value_N67916_value = idx; idx += 1; break :value_N67916 value_N67916_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                var y3: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N68002: { const value_N68002_value = idx; idx += 1; break :value_N68002 value_N68002_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                if (cmd == 'c') {
                    x1 += curX;
                    y1 += curY;
                    x2 += curX;
                    y2 += curY;
                    x3 += curX;
                    y3 += curY;
                }
                _ = Inheritance.call(PGUtil.getInstance().?, "flattenCubicBezier", .{ curX, curY, x1, y1, x2, y2, x3, y3, outX, outY, count, maxPoints });
                curX = x3;
                curY = y3;
            } else if (cmd == 'Z' or cmd == 'z') {
                curX = startX;
                curY = startY;
                outX[@intCast(count[@intCast(0)])] = curX;
                outY[@intCast(count[@intCast(0)])] = curY;
                count[@intCast(0)] += 1;
            }
            while (idx < @as(i32, @intCast(tokens.len)) and !Inheritance.callStatic(PathParser, "isCommand", .{ tokens[@intCast(idx)] })) {
                if (cmd == 'M' or cmd == 'm' or cmd == 'L' or cmd == 'l') {
                    var x: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N70057: { const value_N70057_value = idx; idx += 1; break :value_N70057 value_N70057_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                    var y: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N70143: { const value_N70143_value = idx; idx += 1; break :value_N70143 value_N70143_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                    if (cmd == 'm' or cmd == 'l') {
                        x += curX;
                        y += curY;
                    }
                    curX = x;
                    curY = y;
                    outX[@intCast(count[@intCast(0)])] = curX;
                    outY[@intCast(count[@intCast(0)])] = curY;
                    count[@intCast(0)] += 1;
                } else if (cmd == 'V' or cmd == 'v') {
                    var y: i32 = Inheritance.call(fixedPoint.?, "toFixed", .{ (std.fmt.parseFloat(f64, tokens[@intCast(value_N69770: { const value_N69770_value = idx; idx += 1; break :value_N69770 value_N69770_value; })].?.bytes) catch @panic("java.lang.NumberFormatException")) });
                    if (cmd == 'v') {
                        y += curY;
                    }
                    curY = y;
                    outX[@intCast(count[@intCast(0)])] = curX;
                    outY[@intCast(count[@intCast(0)])] = curY;
                    count[@intCast(0)] += 1;
                }
            }
        }
        return count[@intCast(0)];
    }
    

    pub fn isCommand(tok: ?*String) bool {
        const c: u16 = Inheritance.call(tok.?, "charAt", .{ 0 });
        return Inheritance.call(String.literal("MmLlVvCcZz").?, "indexOf", .{ c }) >= 0;
    }
};

