// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AdConfiguration = @import("org/allbinary/business/advertisement/AdConfiguration.zig").AdConfiguration;

pub const AppNameLicensingAdConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.AppNameLicensingAdConfiguration";
    base: AdConfiguration = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AdConfiguration, "create1", .{ @constCast(&[_]?Object{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING })[0..] }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

