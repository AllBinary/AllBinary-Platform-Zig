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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const InputStreamReader = @import("java/io/InputStreamReader.zig").InputStreamReader;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const PartnerIdentifierFileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil";
    logUtil: ?*LogUtil = null,
    FILE_NAME: ?*String = null,
    var instance: ?*PartnerIdentifierFileUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PartnerIdentifierFileUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.FILE_NAME = String.literal("partner.txt");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PartnerIdentifierFileUtil {
        return Inheritance.upcast(?*PartnerIdentifierFileUtil, PartnerIdentifierFileUtil.instance);
    }
    

    pub fn get(self: *Self) ?*String {
        { // try
            const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
            const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(resourceUtil.?, "getResourceAsStream", .{ self.FILE_NAME }));
            const inputStreamReader: ?*InputStreamReader = Inheritance.callStatic(InputStreamReader, "create1", .{ inputStream });
            const chars: []u16 = array_N66150: { const array_N66150_array = allocator.alloc(u16, @intCast(30)) catch unreachable; @memset(array_N66150_array, 0); break :array_N66150 array_N66150_array; };
            const size: i32 = Inheritance.call(inputStreamReader.?, "read", .{ chars });
            var partnerString: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            if (size > 0) {
                partnerString = Inheritance.callStatic(String, "create3", .{ chars, 0, size });
            }
            _ = inputStreamReader.?.close();
            return partnerString;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET, e });
//             return Inheritance.upcast(?*String, StringUtil.getInstance().?.NULL_STRING);
    }
};

