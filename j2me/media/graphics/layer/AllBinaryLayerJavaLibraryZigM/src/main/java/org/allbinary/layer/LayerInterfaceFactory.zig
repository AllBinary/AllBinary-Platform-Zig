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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const LayerInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerInterfaceFactory";
    logUtil: ?*LogUtil = null,
    list: ?*BasicArrayList = null,
    HASHTABLE_LABEL: ?*String = null,
    var SINGLETON: ?*LayerInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = LayerInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.HASHTABLE_LABEL = String.literal("Hashtable: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LayerInterfaceFactory {
        return Inheritance.upcast(?*LayerInterfaceFactory, LayerInterfaceFactory.SINGLETON);
    }
    

    pub fn init(self: *Self) void {
        self.list = Inheritance.upcast(@TypeOf(self.list), BasicArrayListD.create());
    }
    

    // throws Exception
    pub fn getNexInstance(self: *Self, hashtable: ?*ABHashtable, x: i32, y: i32, z: i32) ?*AllBinaryLayer {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.HASHTABLE_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ hashtable }) }))), self, commonStrings.?.GET_INSTANCE });
        const typeInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, Layer.ID) }));
        const layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface = Inheritance.cast(?*LayerInterfaceFactoryInterface, self.list.?.objectArray[@intCast(typeInteger.?.intValue() - 1)]);
        return Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(layerInterfaceFactoryInterface.?, "getNextInstance", .{ hashtable, x, y, z }));
    }
    

    pub fn add(self: *Self, layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface) void {
        _ = Inheritance.call(self.list.?, "add", .{ layerInterfaceFactoryInterface });
    }
};

