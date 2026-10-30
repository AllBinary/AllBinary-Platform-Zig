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
// package org.allbinary.logic.java.jar

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const URL = @import("java/net/URL.zig").URL;
// const URLConnection = @import("java/net/URLConnection.zig").URLConnection;
// const JarEntry = @import("java/util/jar/JarEntry.zig").JarEntry;
// const JarInputStream = @import("java/util/jar/JarInputStream.zig").JarInputStream;
const System = @import("java/lang/System.zig").System;

pub const JarUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.jar.JarUtil";
    jarURL: ?*URL = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(jarURL: ?*URL) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.jarURL = jarURL;
        return this;
    }
    

    pub fn show(self: *Self) void {
        var cache: []i8 = array_N65825: { const array_N65825_array = allocator.alloc(i8, @intCast(1024)) catch unreachable; @memset(array_N65825_array, 0); break :array_N65825 array_N65825_array; };
        { // try
            const conn: ?*URLConnection = Inheritance.upcast(?*URLConnection, self.jarURL.?.openConnection());
            const jis: ?*JarInputStream = Inheritance.callStatic(JarInputStream, "create1", .{ conn.?.getInputStream() });
            while (true) {
                const entry: ?*JarEntry = Inheritance.upcast(?*JarEntry, jis.?.getNextJarEntry());
                if (entry != null) {
                    if (!entry.?.isDirectory()) {
                        var offset: i32 = 0;
                        var i: i32 = 0;
                        while ((value_N66379: { i = Inheritance.call(jis.?, "read", .{ cache, offset, @as(i32, @intCast(cache.len)) - offset }); break :value_N66379 i; }) != -1) {
                            offset += i;
                            if (offset >= @as(i32, @intCast(cache.len))) {
                                const newcache: []i8 = array_N66222: { const array_N66222_array = allocator.alloc(i8, @intCast(@as(i32, @intCast(cache.len)) + 1024)) catch unreachable; @memset(array_N66222_array, 0); break :array_N66222 array_N66222_array; };
                                _ = @memmove(newcache[@intCast(0)..@intCast(0 + @as(i32, @intCast(cache.len)))], cache[@intCast(0)..@intCast(0 + @as(i32, @intCast(cache.len)))]);
                                cache = newcache;
                            }
                        }
                        const tmp: []i8 = array_N66479: { const array_N66479_array = allocator.alloc(i8, @intCast(offset)) catch unreachable; @memset(array_N66479_array, 0); break :array_N66479 array_N66479_array; };
                        _ = @memmove(tmp[@intCast(0)..@intCast(0 + offset)], cache[@intCast(0)..@intCast(0 + offset)]);
                        _ = std.debug.print("{s}\n", .{String.text(entry.?.getName())});
                    }
                } else {
                    break;
                }
            }
        }
        // catch (IOException ex):
//             _ = std.debug.print("{s}\n", .{String.text(ex)});
//             _ = std.debug.print("{any}\n", .{ex});
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.callStatic(JarUtil, "create1", .{ Inheritance.callStatic(URL, "create1", .{ String.literal("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar") }) }).show();
    }
};

