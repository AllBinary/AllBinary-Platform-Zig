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
// package org.allbinary.game.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const RelativeLayerRelationship = @import("org/allbinary/layer/relationship/RelativeLayerRelationship.zig").RelativeLayerRelationship;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const FeaturedResourceFactory = @import("org/allbinary/game/resource/FeaturedResourceFactory.zig").FeaturedResourceFactory;
const ResourceRelativeRelationshipFactoryInterface = @import("org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.zig").ResourceRelativeRelationshipFactoryInterface;

pub const FeaturedResourceRelativeRelationshipFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory";
    base: FeaturedResourceFactory = undefined,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    var INSTANCE: ?*FeaturedResourceRelativeRelationshipFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        INSTANCE = FeaturedResourceRelativeRelationshipFactory.create();
    }

    fn initFields(this: *Self) void {
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = FeaturedResourceFactory.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*FeaturedResourceRelativeRelationshipFactory {
        return Inheritance.upcast(?*FeaturedResourceRelativeRelationshipFactory, FeaturedResourceRelativeRelationshipFactory.INSTANCE);
    }
    

    // throws Exception
    pub fn getRelativeRelationshipList(self: *Self, resource: ?*String, layer: ?*AllBinaryLayer) ?*BasicArrayList {
        const featureReleaseList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const size: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const featureInterface: ?*ResourceRelativeRelationshipFactoryInterface = Inheritance.cast(?*ResourceRelativeRelationshipFactoryInterface, featureReleaseList.?.objectArray[@intCast(index)]);
            if (Inheritance.receiver(featureInterface.?, "isFeature").isFeature()) {
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(featureInterface.?, "getResourceRelativeRelationshipList", .{ resource }));
                if (!Object.same(list, self.basicArrayListUtil.?.getImmutableInstance())) {
                    return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "duplicate", .{ list, layer }));
                }
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Not available for current feature selection or Resource: ") }).?, "append", .{ resource }))); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn duplicate(self: *Self, list: ?*BasicArrayList, layer: ?*AllBinaryLayer) ?*BasicArrayList {
        _ = self;
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const newList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const relativeRelationship: ?*RelativeRelationship = Inheritance.cast(?*RelativeRelationship, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(newList.?, "add", .{ Inheritance.callStatic(RelativeLayerRelationship, "create3", .{ layer, Inheritance.call(pointFactory.?, "createXY", .{ relativeRelationship.?.getX(), relativeRelationship.?.getY() }), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() }) });
            }
        }
        return newList;
    }
};

