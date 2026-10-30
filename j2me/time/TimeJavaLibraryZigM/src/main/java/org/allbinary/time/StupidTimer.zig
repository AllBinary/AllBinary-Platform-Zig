// Generated Code Do Not Modify
// package org.allbinary.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const StupidTimer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.StupidTimer";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    nullUtil: ?*NullUtil = null,
    threadObjectUtil: ?*ThreadObjectUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.nullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
        this.threadObjectUtil = Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn visitBool(self: *Self, visitorInterface: ?*Visitor) bool {
        const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(visitorInterface.?, "visit", .{ self.nullUtil.?.NULL_OBJECT }));
        const result2: bool = result.?.booleanValue();
        return result2;
    }
    

    // throws Exception
    pub fn visit(self: *Self, visitorInterface: ?*Visitor, timeDelayHelper: ?*TimeDelayHelper) void {
        var tookTooLong: bool = false;
        const WAITING_FOR: ?*String = String.literal("Waiting for: ");
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ WAITING_FOR }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ visitorInterface }) }))), self, self.commonStrings.?.VISIT });
        var index: i32 = 0;
        while (Inheritance.call(self, "visitBool", .{ visitorInterface })) {
            if (@rem(index, 10) == 0) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ WAITING_FOR }).?, "appendint", .{ index }))), self, self.commonStrings.?.VISIT });
            }
            index += 1;
            {
                const monitor_N66608 = Object.monitor(self).enter();
                defer monitor_N66608.exit();
                _ = Inheritance.call(self.threadObjectUtil.?, "waitObjectFor", .{ self, 1800 });
            }
            if (timeDelayHelper.?.isTimeTNT()) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.VISIT, exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Took Too Long: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ visitorInterface }) }))); break :exception error.Exception; } });
        } else {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(timeDelayHelper)), self, self.commonStrings.?.VISIT });
        }
    }
    

    // throws Exception
    pub fn stopWaiting(self: *Self) void {
        {
            const monitor_N67072 = Object.monitor(self).enter();
            defer monitor_N67072.exit();
            _ = Inheritance.call(self.threadObjectUtil.?, "notifyObject", .{ self });
        }
    }
};

