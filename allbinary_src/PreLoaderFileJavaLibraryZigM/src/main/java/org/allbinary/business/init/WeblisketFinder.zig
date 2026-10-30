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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const SubDirectory = @import("org/allbinary/logic/io/file/directory/SubDirectory.zig").SubDirectory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const System = @import("java/lang/System.zig").System;

pub const WeblisketFinder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.WeblisketFinder";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    subDirectory: ?*SubDirectory = null,
    var instance: ?*WeblisketFinder = undefined;
    const KEY: ?*String = String.literal("installerdata.dat");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WeblisketFinder.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.subDirectory = Inheritance.upcast(?*SubDirectory, SubDirectory.getInstance());
    }
    

    pub fn getInstance() ?*WeblisketFinder {
        return Inheritance.upcast(?*WeblisketFinder, WeblisketFinder.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn findAll(self: *Self, path: ?*String) ?*BasicArrayList {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("findAll") });
            return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ WeblisketFinder.KEY, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("findAll"), e });
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("findAll"), e });
//             }
//             return null;
    }
    

    pub fn getInstallationPath(self: *Self, file: ?*AbFile) ?*String {
        _ = self;
        { // try
            const filePath: ?*String = Inheritance.upcast(?*String, file.?.getPath());
            const end: i32 = Inheritance.call(filePath.?, "indexOf", .{ WeblisketFinder.KEY });
            if (end < 0) {
                return null;
            }
            return Inheritance.upcast(?*String, filePath.?.substring2(0, end));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstallationPath"), e });
//             }
//             return null;
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        _ = args;
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(WeblisketFinder.getInstance().?, "findAll", .{ stringUtil.?.EMPTY_STRING }));
        _ = std.debug.print("{s}\n", .{String.text(vector.?.size())});
    }
};

