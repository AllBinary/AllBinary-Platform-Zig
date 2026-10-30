// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BaseBasicArrayListCache = @import("org/allbinary/logic/util/cache/BaseBasicArrayListCache.zig").BaseBasicArrayListCache;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const BasicGeographicMapExtractedPathCacheFactory = @import("org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapExtractedPathCacheFactory.zig").BasicGeographicMapExtractedPathCacheFactory;

pub const BasicGeographicMapExtractedPathsCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory";
    base: BaseBasicArrayListCache = undefined,
    maxConcurrentPaths: i32 = 0,
    maxPaths: i32 = 0,
    var instance: ?*BasicGeographicMapExtractedPathsCacheFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicGeographicMapExtractedPathsCacheFactory.create();
    }

    fn initFields(this: *Self) void {
        this.maxConcurrentPaths = 0;
        this.maxPaths = 0;
    }
    

    pub fn getInstance() ?*BasicGeographicMapExtractedPathsCacheFactory {
        return Inheritance.upcast(?*BasicGeographicMapExtractedPathsCacheFactory, BasicGeographicMapExtractedPathsCacheFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseBasicArrayListCache.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, maxConcurrentPaths: i32, maxPaths: i32) void {
        if (maxConcurrentPaths != self.maxConcurrentPaths) {
            {
                var index: i32 = maxConcurrentPaths;
                while (index >= self.maxConcurrentPaths) : (index -= 1) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "add", .{ Inheritance.callStatic(BasicArrayListS, "create1", .{ maxPaths }) });
                }
            }
            self.maxConcurrentPaths = maxConcurrentPaths;
        }
        self.maxPaths = maxPaths;
    }
    

    pub fn getPaths(self: *Self) ?*BasicArrayList {
        if (Inheritance.fieldPointer(self, "list").*.?.size() > 0) {
            return Inheritance.cast(?*BasicArrayList, Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "removeAt", .{ 0 }));
        } else {
            return Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ self.maxPaths }));
        }
    }
    

    pub fn release(self: *Self, list: ?*BasicArrayList) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(BasicGeographicMapExtractedPathCacheFactory.getInstance().?, "release", .{ Inheritance.cast(?*BasicArrayList, Inheritance.call(list.?, "get", .{ index })) });
            }
        }
        _ = list.?.clear();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "add", .{ list });
    }
};

