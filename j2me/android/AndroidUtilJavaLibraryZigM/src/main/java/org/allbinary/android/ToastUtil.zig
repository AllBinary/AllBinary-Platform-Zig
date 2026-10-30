// Generated Code Do Not Modify
// package org.allbinary.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Context = @import("android/content/Context.zig").Context;
const View = @import("android/view/View.zig").View;
const Toast = @import("android/widget/Toast.zig").Toast;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ToastUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.ToastUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*ToastUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ToastUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ToastUtil {
        return Inheritance.upcast(?*ToastUtil, ToastUtil.instance);
    }
    

    pub fn makeToast(self: *Self, view: ?*View, context: ?*Context, message: ?*String, time: i32) void {
        const MakeToast = struct {
            const Self = @This();
            pub const java_name = "org.allbinary.android.MakeToast";
            pub const java_interfaces = .{ Runnable };
            string: ?*String = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        _ = this;
                
    }
            

            pub fn create1(string: ?*String) *Self {
                const this = allocator.create(Self) catch unreachable;
                this.* = .{};
                this.initFields();
                this.string = string;
                return this;
            }
            

            pub fn run(self: *Self) void {
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
                { // try
                    _ = Inheritance.receiverOf(Inheritance.callStatic(Toast, "makeText", .{ Inheritance.fieldPointer(self, "context").*, self.string, Inheritance.fieldPointer(self, "time").* }).?, "show").show();
                }
                // catch (Exception e):
//                     const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                     _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
            }
        };
        _ = Inheritance.call(view.?, "post", .{ Inheritance.callStatic(MakeToast, "create1", .{ message }) });
    }
};

