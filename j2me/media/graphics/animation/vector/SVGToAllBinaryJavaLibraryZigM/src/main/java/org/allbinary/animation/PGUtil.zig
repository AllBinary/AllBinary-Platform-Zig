// Generated Code Do Not Modify
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FixedPoint = @import("org/allbinary/animation/FixedPoint.zig").FixedPoint;

pub const PGUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.PGUtil";
    var instance: ?*PGUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PGUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PGUtil {
        return Inheritance.upcast(?*PGUtil, PGUtil.instance);
    }
    

    pub fn flattenCubicBezier(self: *Self, x0: i32, y0: i32, x1: i32, y1: i32, x2: i32, y2: i32, x3: i32, y3: i32, outX: []i32, outY: []i32, count: []i32, maxPoints: i32) void {
        _ = self;
        const fixedPoint: ?*FixedPoint = Inheritance.upcast(?*FixedPoint, FixedPoint.getInstance());
        const steps: i32 = 10;
        {
            var i: i32 = 1;
            while (i <= steps) : (i += 1) {
            const t: i32 = Inheritance.call(fixedPoint.?, "div", .{ Inheritance.call(fixedPoint.?, "toFixed", .{ @as(f64, @floatFromInt(i)) }), Inheritance.call(fixedPoint.?, "toFixed", .{ steps }) });
            const mt: i32 = fixedPoint.?.ONE - t;
            const mt3: i32 = Inheritance.call(fixedPoint.?, "mul", .{ Inheritance.call(fixedPoint.?, "mul", .{ mt, mt }), mt });
            const mt2t3: i32 = 3 * Inheritance.call(fixedPoint.?, "mul", .{ Inheritance.call(fixedPoint.?, "mul", .{ mt, mt }), t });
            const mtt23: i32 = 3 * Inheritance.call(fixedPoint.?, "mul", .{ Inheritance.call(fixedPoint.?, "mul", .{ mt, t }), t });
            const t3: i32 = Inheritance.call(fixedPoint.?, "mul", .{ Inheritance.call(fixedPoint.?, "mul", .{ t, t }), t });
            const x: i32 = Inheritance.call(fixedPoint.?, "mul", .{ mt3, x0 }) + Inheritance.call(fixedPoint.?, "mul", .{ mt2t3, x1 }) + Inheritance.call(fixedPoint.?, "mul", .{ mtt23, x2 }) + Inheritance.call(fixedPoint.?, "mul", .{ t3, x3 });
            const y: i32 = Inheritance.call(fixedPoint.?, "mul", .{ mt3, y0 }) + Inheritance.call(fixedPoint.?, "mul", .{ mt2t3, y1 }) + Inheritance.call(fixedPoint.?, "mul", .{ mtt23, y2 }) + Inheritance.call(fixedPoint.?, "mul", .{ t3, y3 });
            if (count[@intCast(0)] < maxPoints) {
                outX[@intCast(count[@intCast(0)])] = x;
                outY[@intCast(count[@intCast(0)])] = y;
                count[@intCast(0)] += 1;
            }
            }
        }
    }
};

