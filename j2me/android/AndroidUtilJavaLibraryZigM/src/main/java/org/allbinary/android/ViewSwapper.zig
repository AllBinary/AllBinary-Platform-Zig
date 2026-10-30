// Generated Code Do Not Modify
// package org.allbinary.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const View = @import("android/view/View.zig").View;
const ViewGroup = @import("android/view/ViewGroup.zig").ViewGroup;

pub const ViewSwapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.ViewSwapper";
    rootViewId: i32 = 0,
    activity: ?*Activity = null,
    currentMainViewId: i32 = 0,
    mainViewArray: []?*View = &.{},
    topViewArray: []?*View = &.{},
    pub var NULL_VIEW_ARRAY: []?*View = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_VIEW_ARRAY = array_N65657: { const array_N65657_array = allocator.alloc(?*View, @intCast(0)) catch unreachable; @memset(array_N65657_array, null); break :array_N65657 array_N65657_array; };
    }

    fn initFields(this: *Self) void {
        
        
        this.currentMainViewId = -1;
        this.mainViewArray = ViewSwapper.NULL_VIEW_ARRAY;
        this.topViewArray = ViewSwapper.NULL_VIEW_ARRAY;
    }
    

    pub fn create2(activity: ?*Activity, rootViewId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.activity = activity;
        this.rootViewId = rootViewId;
        return this;
    }
    

    pub fn setMainViews(self: *Self, viewArray: []?*View) void {
        self.mainViewArray = viewArray;
    }
    

    pub fn setTopViewArray(self: *Self, topViewArray: []?*View) void {
        self.topViewArray = topViewArray;
    }
    

    pub fn setMainView(self: *Self, id: i32) void {
        const viewGroup: ?*ViewGroup = Inheritance.cast(?*ViewGroup, Inheritance.call(self.activity.?, "findViewById", .{ self.rootViewId }));
        if (id != self.currentMainViewId) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.topViewArray.len))) : (index += 1) {
                _ = Inheritance.call(viewGroup.?, "removeView", .{ self.topViewArray[@intCast(index)] });
                }
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.mainViewArray.len))) : (index += 1) {
                if (id != self.mainViewArray[@intCast(index)].?.getId()) {
                    _ = Inheritance.call(viewGroup.?, "removeView", .{ self.mainViewArray[@intCast(index)] });
                }
                }
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.mainViewArray.len))) : (index += 1) {
                if (id == self.mainViewArray[@intCast(index)].?.getId()) {
                    _ = Inheritance.call(viewGroup.?, "addView", .{ self.mainViewArray[@intCast(index)] });
                    self.currentMainViewId = id;
                }
                }
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.topViewArray.len))) : (index += 1) {
                _ = Inheritance.call(viewGroup.?, "addView", .{ self.topViewArray[@intCast(index)] });
                }
            }
        }
    }
};

