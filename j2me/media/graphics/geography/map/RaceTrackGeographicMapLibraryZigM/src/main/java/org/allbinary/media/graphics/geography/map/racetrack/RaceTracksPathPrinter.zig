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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const System = @import("java/lang/System.zig").System;

pub const RaceTracksPathPrinter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn printPath(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(list.?, "get", .{ index }));
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("pathList.add(cellPositionFactory.getInstance") }).?, "append", .{ Object.toString(Object.of(anyType)) }).?, "append", .{ String.literal(");") }))), self, String.literal("printPath") });
            }
        }
    }
    

    pub fn printPaths(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal(" Path ") }).?, "appendint", .{ index }).?, "append", .{ CommonLabels.getInstance().?.COLON_SEP }))))});
            _ = Inheritance.call(self, "printPath", .{ Inheritance.cast(?*BasicArrayList, Inheritance.call(list.?, "get", .{ index })) });
            }
        }
    }
};

