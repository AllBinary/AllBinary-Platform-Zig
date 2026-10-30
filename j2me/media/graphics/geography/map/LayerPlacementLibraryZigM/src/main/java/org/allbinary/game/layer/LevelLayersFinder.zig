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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const LevelLayersFinder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.LevelLayersFinder";
    enumerationUtil: ?*EnumerationUtil = null,
    var instance: ?*LevelLayersFinder = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LevelLayersFinder.create();
    }

    fn initFields(this: *Self) void {
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LevelLayersFinder {
        return Inheritance.upcast(?*LevelLayersFinder, LevelLayersFinder.instance);
    }
    

    pub fn get(self: *Self, hashtable: ?*ABHashtable) ?*BasicArrayList {
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(hashtable.?, "keys").keys());
        var layerHashtableCanBeNull: ?*ABHashtable = null;
        var integerCanBeNull: ?*Integer = null;
        var cachedIntegerCanBeNull: ?*Integer = null;
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            layerHashtableCanBeNull = Inheritance.cast(?*ABHashtable, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration })) }));
            integerCanBeNull = Inheritance.cast(?*Integer, Inheritance.call(layerHashtableCanBeNull.?, "get", .{ Inheritance.cast(?Object, Layer.ID) }));
            cachedIntegerCanBeNull = Inheritance.upcast(@TypeOf(cachedIntegerCanBeNull), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ integerCanBeNull.?.intValue() }));
            if (!Inheritance.call(list.?, "contains", .{ cachedIntegerCanBeNull })) {
                _ = Inheritance.call(list.?, "add", .{ cachedIntegerCanBeNull });
            }
        }
        return list;
    }
};

